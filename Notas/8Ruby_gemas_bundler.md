# Gemas y bundler

## Gemas
Las Gemas son las librerias, se instalan como...
```bash
gem install pry
```
Ejemplo de uso
```ruby
require 'pry'

puts "Hola voy a usar pry"
binding.pry
puts "adios"
```

## Bundler
Ayuda a gestionar todas las gemas, lo instalamos como...
```bash
gem install bundler
```
Ahora creamos un archivo llamado `Gemfile` sin extensiones, donde almacenamos la fuente de donde las va a descargar, con las gemas a descargar
```ruby
source 'https://rubygems.org'

ruby '3.2.2'

gem 'faker'
gem 'pry', '~> 2.1.2'
```
Ahora si quieremos instalar las gemas ejecutamos
```bash
bundle install
```