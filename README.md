# Para ejecutar el modelo ETL 
## Seguir los siguientes pasos

1. Crear la base de datos POSTGRESQL
2. Crear las tablas ejecutando el script /BDD/*SCRIPT_TABLAS.sql*
3. Utilizar Pentaho para el proceso ETL
- Configurar las variables de entorno en el archivo *kettle.properties* ubicado en la carpeta: C:\Users\USUARIO\\.kettle
	- Para la conexion de la BDD colocar los valores correspondientes a su ambiente local:
	
		**DATABASE_NAME** = postgres

		**DATABASE_PORT** = 5432
		
		**DATABASE_SCHEMA** = public
		
		***DB_USUARIO*** = admin
		
		***DB_PASSWRD*** = admin

- Ejecutar el *Spoon.bat*
- Abrir el JOB con nombre /Pentaho/***ETL_caso_practico.kjb***
5. Ejecutar el JOB
