@echo off
REN setup goldSwagger.php
@echo on
php goldSwagger.php -a%1
@echo off
REN goldSwagger.php setup 