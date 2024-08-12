# Tips para Ruby on Rails

---

1) Comando para crear un nuevo proyecto

```bash
rails new blog

```

---

2) Comando para iniciar el servidor

```bash
rails server

```

---

3) Agregar la nueva ruta en config/routes.rb

```ruby

get "/articles", to: "articles#index"

```

---

4) Comando para crear un controlador

```bash
rails generate controller Articles index --skip-routes

```

Este comando crea: 

* Un controlador en controllers/articles_controller.rb
* Un archivo de vista en views/articles/index.html.erb
* Una prueba funcional en test/controllers/articles_controller_test.rb
* helpers para las vistas en app/helpers/articles_helper.rb


---

5) Comando para crear un modelo

```bash
rails generate model Article title:string body:text

```

Este comando crea:

* Un modelo en app/models/article.rb
* Una migración en db/migrate/xxxx_create_articles.rb
* Una prueba de modelo en test/models/article_test.rb
* un archivo en test/fixtures/articles.yml

---

6) Comando para ejecutar la migracion db/migrate/xxxx_create_articles.rb

```bash
rails db:migrate

```

---

7) Comando para abrir la consola de Rails (Aqui se puede ejecutar codigo RoR)

```bash
rails console

```

---

8) Comando para mostrar las rutas de la aplicacion

```bash
rails routes | grep articles

```

---

9) Comando para referencia el modelo Comment al modelo Article

```bash
rails generate model Comment commenter:string body:text article:references

```

Este comando crea:

* Un modelo en app/models/comment.rb
* Una migración en db/migrate/xxxx_create_comments.rb
* Una prueba de modelo en test/models/comment_test.rb
* un archivo en test/fixtures/comments.yml

---

10) Comando para crear un controlador

```bash
rails generate controller Comments

```

Este comando crea:

* Un controlador en controllers/comments_controller.rb
* Una carpeta en views/comments
* Una prueba funcional en test/controllers/comments_controller_test.rb
* helpers para las vistas en app/helpers/comments_helper.rb

---

11) Comando para agregar una columna a la tabla articles y comments

```bash
rails generate migration AddStatusToArticles status:string
rails generate migration AddStatusToComments status:string

```

---

12) Actualizando la base de datos por consola

```bash
Article.update_all(status: "public")
Comment.update_all(status: "public")

```

---