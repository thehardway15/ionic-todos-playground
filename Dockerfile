FROM thehardway/react-native-android:1

WORKDIR /usr/src/app

RUN npm config set cache /usr/local/share/.npm
RUN npm config set prefix /usr/local/share/node_modules
RUN npm config set tmp /usr/local/share/.tmp

RUN npm --quiet --no-progres -g install cordova ionic

ENV PATH="$PATH:/usr/local/share/node_modules/bin:/usr/src/app/node_modules/.bin"

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 8100 35729 53703

ENTRYPOINT ["/docker-entrypoint.sh"]
