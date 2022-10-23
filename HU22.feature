Feature: Visualización de Consultas Realizadas

Como familiar de una persona discapacitada, deseo acceder a un historial de citas hechas a mi familiar para tener una visualización de todas de sus consultas con sus recetas

Criterio de aceptación #1
    Scenario: Ya se han realizado citas médicas
    Given el usuario se encuentra en el "Historial de citas médicas"
    When ya ha contratado consultas anteriormente
    Then se muestran los <chequeos> que he realizado en orden de <fecha> de más reciente a más antiguo

Examples: 
    |          chequeos           |    fecha        |
    |   "Chequeo de cardiología"  |  "10/10/2022"   |
    |   "Chequeo de fisioterapia" |  "05/10/2022"   |
    |   "Chequeo de vista"        |  "29/09/2022"   |

Criterio de aceptación #2
    Scenario: No se han realizado citas médicas
    Given el usuario se encuentra en el "Historial de citas médicas"
    When no ha separado consultas anteriormente
    Then sale un <mensaje> que indica que el usuario no ha contratado un especialista anteriormente

Examples: 
    |                          mensaje                           | 
    |   "No se ha contratado a un especialista anteriormente"    |