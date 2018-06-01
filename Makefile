DEFAULT: usage

usage:
	@echo 'init-env         - build docker image and install dependencies'
	@echo 'build-app        - build docker image'
	@echo 'dist             - remove images, volumes and local files'

init-env:
	./app npm install

build-app:
	./app ionic cordova build --debug android --save

dist: clean-node clean-images clean-volumes

clean-images:
	if [ ! -z "`docker images -q app:latest`" ]; then\
		docker rmi app:latest;\
	fi
	if [ ! -z "`docker images -q thehardway/react-native-android:1`" ]; then\
		docker rmi thehardway/react-native-android:1 ;\
	fi

clean-volumes:
	@ docker volume rm -f todos_gradle
	docker volume rm -f todos_npm_cache
	docker volume rm -f todos_node_modules

clean-node:
	rm -rf todos/node_modules

.PHONY: build-app
