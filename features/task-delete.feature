@Calculator
Feature: Elimninar tareas
    As a user I need to delete a task in order to manage my tasks

@Run
Scenario: Elimninar tareas1
    Given 1 usuario existente con "tareas asignadas"
    When 1 hace click en "eliminar tarea"
    Then 1 recibe mensaje "¿Desea eliminar esta tarea?"
    
@Run
Scenario: Elimninar tareas2
    Given 2 mensaje "¿Desea eliminar esta tarea?"
    When 2 se ejecute metodo delete "eliminar tarea"
    Then 6 recibe response status 200 "tarea eliminada"

