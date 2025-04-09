# Projects-Ruby
### Notebook
Aplicación web para la administración de páginas y selección de emojis por categorias en cada una de ellas.
###
Backend: Ruby on Rails 7, Active record.  
Frontend: Bootstrap  
Base de datos: PostgreSQL.
Gemas: httparty, turbo-rails.   
###
La razón de usar Ruby on Rails fue débido a la fácilidad y velocidad con la que se puede desarrollar. Gracias a ello, el uso del ORM (Active Records) facilitó la administración y creación de la base de datos.   
Para el manejo de la base de datos, se usa Postgres, debido a la eficiencia de manejo y la compatibilidad con el lenguaje de desarrollo.  
Para el frontend,se utilizó bootstrap 5 ya que el uso de sus componentes es bastante amigable con el usuario.   

### Pasos para ejecutar
1.- Descargar el repositorio Projects-Ruby.     
2.- Descomprimir.     
3.- Abrir la carpeta "Ruby" que se encuentra dentro.     
4.- Abrir primero la carpeta "bd_notebook" y descargar el archivo "Notebook.sql".   
5.- En postgres, importar la base de datos. (Si no conoce como revisar: https://www.pgadmin.org/docs/pgadmin4/latest/import_export_data.html).   
6.- Descargar la segunda carpeta pendiente que se encontraba dentro de la carpeta Ruby: "Notebook".  
7.- También es posible clonar el repositorio directamente a su github personal con la URL proporcionada dentro de la plataforma de github o con el comando git clone en el bash de tu preferencia.  
8.- Abrir una terminal e ingresar el comando cd (nombre del proyecto), con el cual ingresaremos a la dirección del proyecto.       
9.- Instalar dependencias con el comando bundle install (Esto también instala las gemas dentro del archivo gemfile).       
10.-En caso de querer crear directamente la base de datos sin haber importado la base de datos dentro del archivo, insertar en el bash rails db:create, seguido de rails db:migrate para asegurarnos de crear la migración.   
11.- Correr el comando rails server para correr el servidor.       
#### Abrir http://127.0.0.1:3000/



