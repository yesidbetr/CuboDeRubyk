# Ruby on rails

## Instalación
- Desde la página oficial de [Ruby on rails](https://guides.rubyonrails.org/install_ruby_on_rails.html), y según el sistema operativo.
- Luego continuar con el [Getting_started](https://guides.rubyonrails.org/getting_started.html)

> Como tip, en mi caso queria crear el app en una carpeta donde ya tenia un repo, entonces tuve que usar `--skip-git` para evitar errores.
```bash
rails new my_app --skip-git
```

## Conceptos importantes

### Estructura general
```bash
my_app/
├── app/               # Lógica principal de la aplicación (MVC)
│   ├── controllers/
│   ├── models/
│   └── views/
├── bin/               # Scripts ejecutables (ej. rails, setup)
├── config/            # Archivos de configuración (routes.rb, environment.rb)
├── db/                # Migraciones y seeds
├── lib/               # Código adicional reutilizable
├── public/            # Archivos públicos (como 404.html)
├── test/              # Pruebas (si usas minitest)
├── tmp/               # Archivos temporales
├── vendor/            # Gems o plugins externos (no siempre usado)
├── Gemfile            # Lista de dependencias del proyecto
├── Rakefile           # Tareas automatizadas (como migrar DB)
└── README.md          # Documentación inicial del proyecto
```

- **app/controllers/**: Lógica de control de flujo (http)
- **app/models**: Conexión con db
- **config/database.yml**: Configuración con la base de datos, por defecto usa sqlite
- **app/views**: Plantillas html que ve el usuario
- **app/helpers**: Métodos de apoyo para las vistas
- **config/routes.rb**: Define todas las rutas de la aplicación, mapeando URLs a controladores.
