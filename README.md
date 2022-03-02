# SolucionNETdeRegistroPET_Funny
Solución web Realizada en .NET, bajo estándares del framework manteniendo una arquitectura en capas con distribucion de responsabilidades.


# DBPETFUNNY
Contiene el archivo "DB_PetFunny" para generar la tabla neceesaria (PetFunny) para realizar las pruebas de forma local, los usuarios estandar para el ingreso son: 

- user1 / password1
- user2 / password2
- user3 / password3


# CSS
Contiene desarrollo mas en detalle en su css, trabajando desde el fondo del body en una gradiente, hasta detalle de los input. todo es personalizable.

![Captura uno](https://raw.githubusercontent.com/Derliodev/SolucionNETdeRegistroPET_Funny/main/1.png)
![Captura uno](https://raw.githubusercontent.com/Derliodev/SolucionNETdeRegistroPET_Funny/main/2.png)

# Seguridad
Mantiene un control de usuarios a travez de variables globales (De Session), si no esta cargada la variable Session["Usuario"] redirecciona al index.

# Validadores
Mantiene validadores en sus distintos formularios correspondientes a cada dato, en el caso del rut, contiene una expresion logica del rut chileno.

# Pagina Maestra
Contiene una pagina maestra con su mapa de sitio con su control de navegación (Siempre visible), Header y Footer con datos.



# ARQUITECTURA EN CAPAS
Las capas usadas y sus responsabilidades son las siguentes:

- PETFUNNYWEB: Desarrollado en ASPX, contiene todos los aspectos visuales para el usuario.

- PetDal: Capa de persistencia y administracion de acceso a datos con el conjunto de clases ADO.NET, desarrollada con EDM EntityFramework 5.0.0.

- PetNegocio: Contiene toda la logica necesaria para el desarrollo de las necesidades del proyecto.

- PetService: Contiene una plantilla con el HOST que hospeda y levanta el servicio WCF para el control de usuario y contraseña del Logeo.


# Mensaje Emergente
Contiene un cuadro emergente que se activa al realizar el LogOut.
