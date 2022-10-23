Feature: Añadido de Recomendaciones

Como familiar de una persona con discapacidad, deseo enviar recomendaciones de manera privada al profesional que contraté para que este mejore su servicio

Criterio de aceptación #1
    Scenario: Ingreso de datos correcto
    Given el usuario se encuentra en el "formulario de ingreso de recomendaciones" luego de concluir una cita médica
    When ingresa su <recomendacion> de manera correcta
    Then sale un <mensaje> que confirme que se envió la recomendación al profesional


Examples: 
    |              chequeos                 |       mensaje_confirmacion       |
    |   "Recibí una buena atención"         |     "Recomendación enviada"      |
    |   "Me pareció my buena su disposición"|     "Recomendación enviada"      |
    |   "Me atendió rápidamente"            |     "Recomendación enviada"      |

Criterio de aceptación #2
    Scenario: Ingreso de datos incorrecto
    Given el usuario se encuentra en el "formulario de ingreso de recomendaciones" luego de concluir una cita médica
    When ingresa su <recomendacion> con caracteres especiales
    Then sadrá un <mensaje> que advierte que se ha ingresado caracteres especiales

Examples: 
    |              chequeos                        |               mensaje_confirmacion                |
    |   "Recibí** una-!"#buena atención"           |     "Se han ingresado caracteres especiales"      |
    |   "Me pareci{123123ó my buena su disposición"|     "Se han ingresado caracteres especiales"      |
    |   "Me atendió rápi''¿123|||+*}amente"        |     "Se han ingresado caracteres especiales"      |
