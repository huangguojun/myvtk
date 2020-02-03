#include <vtkActor.h>
#include <vtkContourFilter.h>
#include <vtkDoubleArray.h>
#include <vtkNamedColors.h>
#include <vtkPointData.h>
#include <vtkPolyDataMapper.h>
#include <vtkProperty.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkRenderer.h>
#include <vtkSmartPointer.h>
#include <vtkStructuredPoints.h>

int main(int, char*[])
{
  auto colors =
    vtkSmartPointer<vtkNamedColors>::New();

  auto renderer =
    vtkSmartPointer<vtkRenderer>::New();
  auto renWin =
    vtkSmartPointer<vtkRenderWindow>::New();
  renWin->AddRenderer(renderer);
  auto iren =
    vtkSmartPointer<vtkRenderWindowInteractor>::New();
  iren->SetRenderWindow(renWin);

  auto vol =
    vtkSmartPointer<vtkStructuredPoints>::New();
  vol->SetDimensions(26, 26, 26);
  vol->SetOrigin(-0.5, -0.5, -0.5);
  auto sp = 1.0 / 25.0;
  vol->SetSpacing(sp, sp, sp);

  auto scalars =
    vtkSmartPointer<vtkDoubleArray>::New();
  scalars->SetNumberOfComponents(1);
  scalars->SetNumberOfTuples(26 * 26 * 26);
  for (auto k = 0; k < 26; k++)
  {
    auto z = -0.5 + k * sp;
    auto kOffset = k * 26 * 26;
    for (auto j = 0; j < 26; j++)
    {
      auto y = -0.5 + j * sp;
      auto jOffset = j * 26;
      for (auto i = 0; i < 26; i++)
      {
        auto x = -0.5 + i * sp;
        auto s = x * x + y * y + z * z - (0.4 * 0.4);
        auto offset = i + jOffset + kOffset;
        scalars->InsertTuple(offset, &s);
      }
    }
  }
  vol->GetPointData()->SetScalars(scalars);

  auto contour =
    vtkSmartPointer<vtkContourFilter>::New();
  contour->SetInputData(vol);
  contour->SetValue(0, 0.0);

  auto volMapper =
    vtkSmartPointer<vtkPolyDataMapper>::New();
  volMapper->SetInputConnection(contour->GetOutputPort());
  volMapper->ScalarVisibilityOff();
  auto volActor =
    vtkSmartPointer<vtkActor>::New();
  volActor->SetMapper(volMapper);
  volActor->GetProperty()->EdgeVisibilityOn();
  volActor->GetProperty()->SetColor(colors->GetColor3d("Salmon").GetData());
  renderer->AddActor(volActor);
  renderer->SetBackground(colors->GetColor3d("SlateGray").GetData());
  renWin->SetSize(512, 512);

  // interact with data
  renWin->Render();

  iren->Start();

  return EXIT_SUCCESS;
}
