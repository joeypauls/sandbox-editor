# Build the application dockerfile
bash scripts/build-scripts/build-app-dockerfile.sh

# Run the tests inside a docker container
docker-compose -f docker-compose-development.yml run sandbox-editor-app pytest --cov --cov-config=.coveragerc
