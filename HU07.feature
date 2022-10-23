Feature: Cambio de Ubicación

Como usuario, deseo cambia mi lugar de residencia para que este se encuentre con mi dirección actual.

Criterio de aceptación #1
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en su "Perfil de Usuario"
    When presiona la opción de "Modificar Ubicación"
    And ingresa una <direccion>
    Then se cambia la ubicación del usuario

Examples: 
    |     ubicacion    | 
    |    "Trujillo"    |
    |    "Lima"        |
    |    "San Isidro"  |

Criterio de aceptación #2
    Scenario: Ingreso incorrecto de datos
    Given el usuario se encuentra en su "Perfil de Usuario"
    When presiona la opción de "Modificar Ubicación"
    And ingresa caracteres no permitidos en <direccion>
    Then se muestra un mensaje de advertencia: "Ingresó una ubicación incorrecta"

    Examples: 
    |     ubicacion        | 
    |    "Calle * !!!!"    |
    |    "street_!avenue"  |
    |    "Sydnes, persh"   |