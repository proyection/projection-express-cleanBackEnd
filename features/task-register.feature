@Calculator
Feature: Registrar tarea
    As a user I need to register a task in order to manage my tasks

@Run
Scenario: Registrar tarea1
    Given nombre de tarea es "vacio" 
    When 1 se ejecuta metodo post "guardar tarea"
    Then 1 recibe el mensaje de error "Nombre de tarea es obligatorio"

@Run
Scenario: Registrar tarea2
    Given nombre de tarea tenga valor diferente a "vacio" 
    When 2 se ejecuta metodo post "guardar tarea"
    Then 2 recibe response status 201 "Tarea guardada"

@Run
Scenario: Registrar tarea2
    Given 6 nombre de tarea tenga valor diferente a "vacio" 
    When 6 se ejecuta metodo post "guardar tarea"
    Then 6 recibe response status 201 "Tarea guardada"


