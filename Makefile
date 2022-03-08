build: build-heroku-20

build-heroku-20:
	@echo "Building imagemagick in Docker for heroku-20..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-20" -w /buildpack heroku/heroku:20-build scripts/build_imagemagick imagemagick-heroku-20.tar.gz
