@Calculator
Feature: Registrar usuario
    As a user I need to register in order to manage my tasks

@Run
Scenario: Registrar usuario1
    Given user name is "empty"
    When 1 post method save user is "executed"
    Then 1 the user recieves the message "Email is required"

@Run
Scenario: Registrar usuario2
    Given user password is "empty"
    When 2 post method save users is "executed"
    Then 2 the user recieves the message "Password must not be empty"

@Run
Scenario: Registrar usuario3
    Given contraseña contiene menos de ocho caracteres y / o no contenga un "numero" 
    When 3 se ejecuta metodo post "guardar usuario"  
    Then 3 recibe el mensaje de error "Password must be at least 6 characters"

@Run
Scenario: Registrar usuario4
    Given ingresa los 3 campos "correctamente"
    When 4 se ejecuta metodo post "guardar usuario"
    Then 4 recibe response status 200 "created"

@Run
Scenario: Registrar usuario4
    Given 5 ingresa los 3 campos "correctamente"
    When 5 se ejecuta metodo post "guardar usuario"
    Then 5 recibe response status 200 "created"










