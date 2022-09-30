Feature: Visualización de Perfil

    Como usuario, deseo ingresar a mi perfil
     para observar todos mis datos.

Criterio de aceptación #1
      Scenario: Usuario es paciente
    Given el usuario se encuentra dentro de la plataforma
    When presiona la opción de "ver perfil"
        And su <rol> es "paciente"
    Then se muestar el perfil de paciente

Examples: 
    |       rol       |     
    |   "paciente"    |  


Criterio de aceptación #2
      Scenario: Usuario es doctor
    Given el usuario se encuentra dentro de la plataforma
    When presiona la opción de "ver perfil"
        And su <rol> es "doctor"
    Then se muestar el perfil de paciente

Examples: 
    |       rol       |     
    |    "doctor"     |  