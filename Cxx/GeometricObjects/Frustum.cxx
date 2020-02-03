#include <vtkActor.h>
#include <vtkCamera.h>
#include <vtkFrustumSource.h>
#include <vtkMapper.h>
#include <vtkNamedColors.h>
#include <vtkPlanes.h>
#include <vtkPolyData.h>
#include <vtkPolyDataMapper.h>
#include <vtkProperty.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkShrinkPolyData.h>
#include <vtkSmartPointer.h>

int main(int, char *[])
{
  vtkSmartPointer<vtkNamedColors> colors =
    vtkSmartPointer<vtkNamedColors>::New();

  vtkSmartPointer<vtkCamera> camera =
    vtkSmartPointer<vtkCamera>::New();
  camera->SetClippingRange(.1, .4);
  double planesArray[24];
  
  camera->GetFrustumPlanes(1.0, planesArray);
  
  vtkSmartPointer<vtkPlanes> planes =
    vtkSmartPointer<vtkPlanes>::New();
  planes->SetFrustumPlanes(planesArray);
  
  vtkSmartPointer<vtkFrustumSource> frustumSource =
    vtkSmartPointer<vtkFrustumSource>::New();
  frustumSource->ShowLinesOff();
  frustumSource->SetPlanes(planes);

  vtkSmartPointer<vtkShrinkPolyData> shrink =
    vtkSmartPointer<vtkShrinkPolyData>::New();
  shrink->SetInputConnection(frustumSource->GetOutputPort());
  shrink->SetShrinkFactor(.9);

  vtkSmartPointer<vtkPolyDataMapper> mapper =
    vtkSmartPointer<vtkPolyDataMapper>::New();
  mapper->SetInputConnection(shrink->GetOutputPort());

  vtkSmartPointer<vtkProperty> back =
    vtkSmartPointer<vtkProperty>::New();
  back->SetColor(colors->GetColor3d("Tomato").GetData());

  vtkSmartPointer<vtkActor> actor =
    vtkSmartPointer<vtkActor>::New();
  actor->SetMapper(mapper);
  actor->GetProperty()->EdgeVisibilityOn();
  actor->GetProperty()->SetColor(colors->GetColor3d("Banana").GetData());
  actor->SetBackfaceProperty(back);
  
  // a renderer and render window
  vtkSmartPointer<vtkRenderer> renderer =
    vtkSmartPointer<vtkRenderer>::New();
  vtkSmartPointer<vtkRenderWindow> renderWindow =
    vtkSmartPointer<vtkRenderWindow>::New();
  renderWindow->SetWindowName("Frustum");
  renderWindow->AddRenderer(renderer);

  // an interactor
  vtkSmartPointer<vtkRenderWindowInteractor> renderWindowInteractor =
    vtkSmartPointer<vtkRenderWindowInteractor>::New();
  renderWindowInteractor->SetRenderWindow(renderWindow);

  // add the actors to the scene
  renderer->AddActor(actor);
  renderer->SetBackground(colors->GetColor3d("Silver").GetData());

  // Position the camera so that we can see the frustum
  renderer->GetActiveCamera()->SetPosition(1, 0, 0);
  renderer->GetActiveCamera()->SetFocalPoint(0, 0, 0);
  renderer->GetActiveCamera()->SetViewUp(0, 1, 0);
  renderer->GetActiveCamera()->Azimuth(30);
  renderer->GetActiveCamera()->Elevation(30);
  renderer->ResetCamera();

  // render an image (lights and cameras are created automatically)
  renderWindow->Render();

  // begin mouse interaction
  renderWindowInteractor->Start();
  return EXIT_SUCCESS;
}
