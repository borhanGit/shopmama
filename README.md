# Ecom Laravel Project with Sail

This is a Ecom Laravel project designed to run in a local development environment using **Laravel Sail**. Laravel Sail is a lightweight command-line interface for interacting with Docker containers.

## **Prerequisites**

Before you can run this project locally, ensure you have the following installed:

- **Docker** ([Download Docker](https://www.docker.com/get-started))
- **Composer** ([Download Composer](https://getcomposer.org/download/))

## **Setup Instructions**
### **1. Clone the Repository**
Clone the project to your local machine:
```bash
git clone https://github.com/borhanGit/shopmama.git
cd your-repository

docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    laravelsail/php81-composer:latest \
    composer install --ignore-platform-reqs

cp .env.example .env

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=dbName
DB_USERNAME=sail
DB_PASSWORD=password

Get sql file from Database folder sql

run ./vendor/bin/sail up

Visit in your browsing localhost
Visit Database localhost:8080

Face any issue, forgive me and could you tell me your problem, InShaAllah I'll try to solve this.
