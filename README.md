# Running Rails in Docker
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
