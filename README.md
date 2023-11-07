# La_Grande_Boucle_Project_3: 

![pirata](https://github.com/luisgh87/w4-project_ETL/assets/116723919/3a81efa0-b9fb-4215-a79d-5fb3e8be0cbb)


## Objetivos

* Crear un database con datos extraídos de la Red con el sistema ETL.
* Usar 3 fuentes diferentes de información y utiliar 2 técnicas de las aprendidas durante el bootcamp (Descatgar un `.csv`, API, web scrapping...).
* Limpiar los datos almacenados mediante métodos de data cleansing.
* Insertar la información en las tablas creadas en MySQL y establecer las relaciones entre dichas tablas para hacer el database funcional.
* Analizar los datos recabados y sacar conclusiones.


## Estructura:

El repositorio se va a organizar en diferentes carpetas que contienen los siguientes archivos:

* Data: Archivos .csv con los datos recolectados y su pertinente limpieza optimiyación para su uso.
* Notebooks: Archivos .ipnyb en los que se usan diversas técnicas para la curación de dichos datos y la creación del database con Python.
* Images: Archivos .png para la presentación del proyecto (queries, diagrama, gráficas).
* SQL: Queries creadas para la demostración de la operatividad del database.
* SRC: Funciones que se usan a lo largo del proyecto.
* .Gitignore: Archivos que no se mostraran en el GitHub personal.


## Proceso:

- A) Tomaremos como punto de partida la base de datos de Procyclingstats, creada de la web homónima a traves de su API, y que cuenta con su propia librería en Python. En ella se almacenan miles de datos acerca de la temporad profesional de ciclismo en carretera. De esta manera         haremos uso de nuestra primera fuente race/tour-de-france/2023/startlist y su respectivo método de extracción. Crearemos dos tablas para nuestro futuro database relacionado con el Tour de Francia 2023, las cuales serán:
- 
     - STARTLIST: Se recoge la información respectiva a la lista de participantes y se realizan sobre todo tareas de homogeneización del dato.
     - STAGE_CLIMBS: A través de una función se almacenan los datos etapa por etapa iterando por su URL y se almacenan con el ID de la jornada a la que corresponden. 
-  
- B) Las otras dos tablas tomarán el contenido de dos fuentes distintas y se llevará a cabo con la herramienta Selenium y la técnica de web scrapping:
  
     - STAGES: La web https://www.worldcyclingstats.com/es/carrera/tour-de-france nos ofrece el recorrido de las etapas y los ganadores y lider de la clasificación general en cada una de ellas
     - WITHDRAWALS: En este caso iremos a la página oficial de la carrera https://www.letour.fr/es/abandono para encontrar los corredores que han abandonado en cada etapa.
       
- C) Una vez finalizadas las tareas de data cleansing, crearemos nuestro database con las estadísticas de la ronda francesa en MySQL y con ayuda de Python. Con el diagrama y lanyandoa algunas queries podremos comprobar la funcionalidad del sistema
 
  - Diagrama
  - <img width="503" alt="diagrama" src="https://github.com/luisgh87/w4-project_ETL/assets/116723919/f5e72758-e35d-4889-84e1-776d56fd0e22">
  - Query 1: Nombre de la etapa el nombre de sus puertos de montaña y la distancia a la meta.
  - <img width="329" alt="query 1" src="https://github.com/luisgh87/w4-project_ETL/assets/116723919/03d39048-a34b-413b-87b8-88cadff2a6f1">
  - Query 2: Los 5 equipos que mas etapas han ganado.
  - <img width="172" alt="query 2" src="https://github.com/luisgh87/w4-project_ETL/assets/116723919/0ff30480-cae2-41aa-8c9e-312e5ef7a6bf">
  - Query 3: Las etapas que ha ganado cada corredor.
  - <img width="238" alt="query 3" src="https://github.com/luisgh87/w4-project_ETL/assets/116723919/b3539b23-8b1e-4d0d-9424-96539bdc3c99">


## Librerías

* [Python Functional Programming How To Documentation](https://docs.python.org/3.7/howto/functional.html)
* [Database from Procyclingstats documentation]([https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions](https://procyclingstats.readthedocs.io/en/latest/)
* [Python Errors and Exceptions Documentation](https://docs.python.org/3/tutorial/errors.html)
  
