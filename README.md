## Qtrans assignment

# To setup project do the following

1. Open terminal then `cd project_path`
2. run `composer install`
3. run `cp .env.example .env`
4. update DB related configurations in .env
5. run `php artisan migrate`
6. run `php artisan db:seed`
7. run `php artisan serve`
8. project will be served in `localhost:8000`
9. to import database manually find `qtrans.sql` in `database` folder located in the root of application
