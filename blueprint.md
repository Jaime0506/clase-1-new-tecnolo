
# Visión general

Esta es una aplicación de lista de tareas simple que permite a los usuarios agregar, eliminar y editar tareas. El estado de la aplicación se administra localmente mediante el paquete `provider`.

# Plan actual

1.  **Configurar el proyecto**:
    *   Agregar la dependencia `provider`.
    *   Crear la siguiente estructura de archivos:
        *   `lib/models/task.dart`
        *   `lib/providers/task_provider.dart`
        *   `lib/screens/home_screen.dart`
        *   `lib/widgets/task_list.dart`
        *   `lib/widgets/task_list_item.dart`
        *   `lib/widgets/add_task_dialog.dart`

2.  **Crear el modelo de tareas**:
    *   Definir la clase `Task` con `id`, `title` y `isDone`.

3.  **Crear el administrador de estado**:
    *   Crear una clase `TaskProvider` que extienda `ChangeNotifier`.
    *   Implementar métodos para agregar, eliminar y editar tareas.

4.  **Crear los componentes de la interfaz de usuario**:
    *   **`main.dart`**: configurar el `ChangeNotifierProvider`.
    *   **`home_screen.dart`**: la pantalla principal con un `FloatingActionButton` para agregar tareas.
    *   **`task_list.dart`**: un widget para mostrar la lista de tareas.
    *   **`task_list_item.dart`**: un widget para un solo elemento de la lista de tareas con botones para editar y eliminar.
    *   **`add_task_dialog.dart`**: un cuadro de diálogo para agregar y editar tareas.

5.  **Implementar la funcionalidad**:
    *   Conectar los componentes de la interfaz de usuario al `TaskProvider` para administrar el estado.
