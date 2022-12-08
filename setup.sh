#!/bin/bash

docker compose exec app cp .env.example .env
docker compose exec app composer install
docker compose exec app php artisan key:generate --force
docker compose exec app php artisan migrate:fresh --seed