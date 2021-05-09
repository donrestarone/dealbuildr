# README

## running the app
In dev mode, the app uses a bind mount to allow hot code reloading (via zeitwerk/spring). Ensure that docker and docker compose is installed. Then run the following to bootstrap the application:
``` bash
docker-compose build && docker-compose up
docker-compose run --rm deal_app rails db:create
docker-compose run --rm deal_app rails db:migrate
```
After the build phase passes, you will be able to visit the application on http://localhost:4250/

# running the test suite
There is a basic minitest suite that exercises all the functions of the application, including PDF generation. To run it simply:

``` bash
sudo chmod +x run_tests.sh
./run_tests.sh
```
