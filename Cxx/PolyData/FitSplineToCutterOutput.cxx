#include <vtkActor.h>
#include <vtkCamera.h>
#include <vtkCellArray.h>
#ifdef VTK_CELL_ARRAY_V2
#include <vtkCellArrayIterator.h>
#endif // VTK_CELL_ARRAY_V2
#include <vtkCutter.h>
#include <vtkKochanekSpline.h>
#include <vtkPlane.h>
#include <vtkPoints.h>
#include <vtkPolyData.h>
#include <vtkPolyDataMapper.h>
#include <vtkProperty.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkSmartPointer.h>
#include <vtkSphereSource.h>
#include <vtkSpline.h>
#include <vtkSplineFilter.h>
#include <vtkStripper.h>
#include <vtkTubeFilter.h>
#include <vtkXMLPolyDataReader.h>

#include <vtkNamedColors.h>

int main(int argc, char* argv[])
{
  vtkSmartPointer<vtkPolyData> polyData;
  if (argc > 1)
  {
    auto reader = vtkSmartPointer<vtkXMLPolyDataReader>::New();
    reader->SetFileName(argv[1]);
    reader->Update();
    polyData = reader->GetOutput();
  }
  else
  {
    auto modelSource = vtkSmartPointer<vtkSphereSource>::New();
    modelSource->Update();
    polyData = modelSource->GetOutput();
  }

  double length = polyData->GetLength();

  auto plane = vtkSmartPointer<vtkPlane>::New();
  plane->SetNormal(0, 1, 1);
  plane->SetOrigin(polyData->GetCenter());

  auto cutter = vtkSmartPointer<vtkCutter>::New();
  cutter->SetInputData(polyData);
  cutter->SetCutFunction(plane);
  cutter->GenerateValues(1, 0.0, 0.0);

  auto colors = vtkSmartPointer<vtkNamedColors>::New();

  auto modelMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
  modelMapper->SetInputData(polyData);

  auto model = vtkSmartPointer<vtkActor>::New();
  model->SetMapper(modelMapper);
  model->GetProperty()->SetColor(colors->GetColor3d("Tomato").GetData());
  model->GetProperty()->SetInterpolationToFlat();

  auto stripper = vtkSmartPointer<vtkStripper>::New();
  stripper->SetInputConnection(cutter->GetOutputPort());

  auto spline = vtkSmartPointer<vtkKochanekSpline>::New();
  spline->SetDefaultTension(.5);

  auto sf = vtkSmartPointer<vtkSplineFilter>::New();
  sf->SetInputConnection(stripper->GetOutputPort());
  sf->SetSubdivideToSpecified();
  sf->SetNumberOfSubdivisions(50);
  sf->SetSpline(spline);
  sf->GetSpline()->ClosedOn();

  auto tubes = vtkSmartPointer<vtkTubeFilter>::New();
  tubes->SetInputConnection(sf->GetOutputPort());
  tubes->SetNumberOfSides(8);
  tubes->SetRadius(length / 100.0);

  auto linesMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
  linesMapper->SetInputConnection(tubes->GetOutputPort());
  linesMapper->ScalarVisibilityOff();

  auto lines = vtkSmartPointer<vtkActor>::New();
  lines->SetMapper(linesMapper);
  lines->GetProperty()->SetColor(colors->GetColor3d("Banana").GetData());

  auto renderer = vtkSmartPointer<vtkRenderer>::New();
  renderer->UseHiddenLineRemovalOn();

  auto renderWindow = vtkSmartPointer<vtkRenderWindow>::New();
  auto interactor = vtkSmartPointer<vtkRenderWindowInteractor>::New();
  interactor->SetRenderWindow(renderWindow);

  // Add the actors to the renderer
  renderer->AddActor(model);
  renderer->AddActor(lines);

  renderer->ResetCamera();
  renderer->SetBackground(colors->GetColor3d("SlateGray").GetData());
  renderer->GetActiveCamera()->Azimuth(300);
  renderer->GetActiveCamera()->Elevation(30);
  renderWindow->AddRenderer(renderer);
  renderWindow->SetSize(640, 480);

  // This starts the event loop and as a side effect causes an initial
  // render.
  renderWindow->Render();
  interactor->Start();

  // Extract the lines from the polydata
  vtkIdType numberOfLines = cutter->GetOutput()->GetNumberOfLines();

  std::cout << "-----------Lines without using vtkStripper" << std::endl;
  if (numberOfLines == 1)
  {
    std::cout << "There is " << numberOfLines << " line in the polydata"
              << std::endl;
  }
  else
  {
    std::cout << "There are " << numberOfLines << " lines in the polydata"
              << std::endl;
  }
  numberOfLines = stripper->GetOutput()->GetNumberOfLines();
  vtkPoints* points = stripper->GetOutput()->GetPoints();
  vtkCellArray* cells = stripper->GetOutput()->GetLines();

  std::cout << "-----------Lines using vtkStripper" << std::endl;
  if (numberOfLines == 1)
  {
    std::cout << "There is " << numberOfLines << " line in the polydata"
              << std::endl;
  }
  else
  {

    std::cout << "There are " << numberOfLines << " lines in the polydata"
              << std::endl;
  }

#ifdef VTK_CELL_ARRAY_V2

  // Newer versions of vtkCellArray prefer local iterators:
  auto cellIter = vtk::TakeSmartPointer(cells->NewIterator());
  for (cellIter->GoToFirstCell();
       !cellIter->IsDoneWithTraversal();
       cellIter->GoToNextCell())
  {
    std::cout << "Line " << cellIter->GetCurrentCellId() << ":\n";

    vtkIdList *cell = cellIter->GetCurrentCell();
    for (vtkIdType i = 0; i < cell->GetNumberOfIds(); ++i)
    {
      double point[3];
      points->GetPoint(cell->GetId(i), point);
      std::cout << "\t(" << point[0] << ", " << point[1] << ", " << point[2]
                << ")" << std::endl;
    }
  }

#else // VTK_CELL_ARRAY_V2

  // Older implementations of vtkCellArray use internal iterator APIs (not
  // thread safe):
  vtkIdType* indices;
  vtkIdType numberOfPoints;
  unsigned int lineCount = 0;
  for (cells->InitTraversal(); cells->GetNextCell(numberOfPoints, indices);
       lineCount++)
  {
    std::cout << "Line " << lineCount << ": " << std::endl;
    for (vtkIdType i = 0; i < numberOfPoints; i++)
    {
      double point[3];
      points->GetPoint(indices[i], point);
      std::cout << "\t(" << point[0] << ", " << point[1] << ", " << point[2]
                << ")" << std::endl;
    }
  }

#endif // VTK_CELL_ARRAY_V2

  return EXIT_SUCCESS;
}
