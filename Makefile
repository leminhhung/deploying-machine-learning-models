NAME=udemy-ml-api
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=${PIP_EXTRA_INDEX_URL} -t $(COMMIT_ID) .

push-ml-api-heroku:
	docker tag $(COMMIT_ID) registry.heroku.com/${HEROKU_APP_NAME}/web
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web
