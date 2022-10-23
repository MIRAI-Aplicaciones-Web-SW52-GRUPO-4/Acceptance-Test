Feature: Ingreso de Recetas Médicas

Como profesional de la salud, deseo ingresar la receta que recomiendo al paciente para que este lo visualice

Criterio de aceptación #1
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en el "Formulario de ingreso de recetas"
    When ingresa <horario>, <medicina> y <tratamientos> correctos
    Then sale un <mensaje> que confirme que se ingresó la receta al paciente

Examples: 
    |     horario      |     medicina                 |       tratamientos              |       mensaje        |
    |   "21/10/2022"   |   "Panadol"                  | "Chequearse cada fin de mes"    |   "Receta añadida"   |
    |   "15/10/2022"   |   "Té"                       | "Chequearse cada año"           |   "Receta añadida"   |
    |   "05/10/2022"   |   "Pastilla para la gripe"   | "Chequearse cada fin de semana" |   "Receta añadida"   |

Criterio de aceptación #2
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en el "Formulario de ingreso de recetas"
    When ingresa <medicina> y <tratamientos> correctos, pero <horario> con caracteres no permitidos
    Then sale un <mensaje> que que advierte que se ingresó un horario incorrecto

    |     horario           |     medicina                 |       tratamientos              |       mensaje            |
    |   "21*!!/10/2022"     |   "Panadol"                  | "Chequearse cada fin de mes"    |   "Horario incorrecto"   |
    |   "15---"#/10/2022"   |   "Té"                       | "Chequearse cada año"           |   "Horario incorrecto"   |
    |   "05/10/2'|´¿++2022" |   "Pastilla para la gripe"   | "Chequearse cada fin de semana" |   "Horario incorrecto"   |