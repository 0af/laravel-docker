install:
	composer create-project --working-dir=${PWD}/volume --prefer-dist laravel/laravel app
	sudo chmod 777 ${PWD}/volume/app/storage -R
