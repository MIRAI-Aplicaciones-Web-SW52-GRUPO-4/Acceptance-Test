Feature: Cambio de Número Telefónico

Como usuario, deseo cambiar mi número de teléfono o celular para que puedan contactarse conmigo

Criterio de aceptación #1
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en su "Perfil de Usuario"
    When presiona la opción de "Modificar Número Telefónico"
    And ingresa un <telefono> correcto
    Then se cambia la número del usuario

Examples: 
    |     telefono     |
    |   "999 221 735"  |
    |   "923 637 212"  |
    |   "971 239 122"  |

Criterio de aceptación #2
    Scenario: Ingreso incorrecto de datos
    Given el usuario se encuentra en su "Perfil de Usuario"
    When presiona la opción de "Modificar Número Telefónico"
    And ingresa un <telefono> inorrecto
    Then se cambia la número del usuario

Examples: 
    |     telefono       |
    |   "9!* 221 735"    |
    |   "923-637-212"    |
    |   "971!!239!!122"  |