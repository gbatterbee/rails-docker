# Summary
Setup configuration is contained in the `docker-compose.yml`
Compose file contains the following services:
services:
  web -  Builds and runs the image, described in Dockerfile
  wds -  Builds the image, described in Dockerfile and runs webpack-dev-server used by Rails
  workers - Builds the image, described in Dockerfile and runs sidekiq workers
  redis - used by web and workers
  db - postgres database
  selenium_chrome - runs a chrome for rspec

# Running Services
* Install docker
* Clone this repo
* docker-compose up -d (omit the -d [detached] if you want to see the logs)

Things will build, bundles installed.
Get a cup of tea.

To view logs when running with -d
docker-compose logs -f [name of service]

# Stopping and cleaning up
* docker-compose down

# Running tests
* docker-compose exec web bundle exec rspec

To view tests running
Launch mac 'screen sharing' app
Connect to vnc://localhost:5900
Password: 'secret'
