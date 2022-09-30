Feature: Registrar Cuenta

    Como usuario, deseo crear una nueva cuenta 
    para entrar a la plataforma.

Criterio de aceptación #1
      Scenario: Ingreso incorrecto de datos
    Given el usuario se encuentra en el "formulario de registro"
    When singresa su <nombre>, <correo>, <ubicacion>, <edad>, 
    <numero de celular> y <contrasena> correctos, 
        And elige su <rol> 
    Then se registra su nueva cuenta

Examples: 
    |            nombre               |         correo         |     ubicacion    | 
    |   "Luis Alberto Pineda Ugas"    |    "luis@email.com"    |    "Trujillo"    |

    | edad |    numero de celular    |    contraseña    |  
    |  18  |       999999999         |    "password"    |


    Criterio de aceptación #2
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en el "formulario de registro"
    When singresa su <correo>, <ubicacion>, <edad>, 
    <numero de celular> y <contrasena> correctos, 
        And elige su <rol>
        And su <nombre> esta con caracteres no permitidos 
    Then sale una equis roja al lado de la casilla
        And muestea un mensaje

Examples: 
    |            nombre               |         correo         |     ubicacion    | 
    |   "Lu"#$1lberto Pineda Ugas"    |    "luis@email.com"    |    "Trujillo"    |

    | edad |    numero de celular    |    contraseña    |          mensaje          |
    |  18  |       999999999         |    "password"    |   "nombre no permitido"   |


     Criterio de aceptación #3
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en el "formulario de registro"
    When singresa su <correo>, <nombre>, <edad>, 
    <numero de celular> y <contrasena> correctos, 
        And elige su <rol>
        And su <ubicacion> esta con caracteres no permitidos 
    Then sale una equis roja al lado de la casilla
        And muestea un mensaje

Examples: 
    |            nombre               |         correo         |     ubicacion    | 
    |   "Luis Alberto Pineda Ugas"    |    "luis@email.com"    |    "Tji!$llo"    |

    | edad |    numero de celular    |    contraseña    |             mensaje          |
    |  18  |       999999999         |    "password"    |   "ubicacion no permitido"   |


     Criterio de aceptación #3
    Scenario: Ingreso correcto de datos
    Given el usuario se encuentra en el "formulario de registro"
    When singresa su <correo>, <nombre>, <edad>, 
    <numero de celular> y <contrasena> correctos, 
        And elige su <rol>
        And <numero de celular> no existe
    Then sale una equis roja al lado de la casilla
        And muestea un mensaje

Examples: 
    |            nombre               |         correo         |     ubicacion    | 
    |   "Luis Alberto Pineda Ugas"    |    "luis@email.com"    |    "Tji!$llo"    |

    | edad |    numero de celular    |    contraseña    |             mensaje          |
    |  18  |            9            |    "password"    |   "ubicacion no permitido"   |