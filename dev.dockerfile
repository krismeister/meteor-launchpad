FROM krismeister/meteor-launchpad4:base
MAINTAINER Jeremy Shimko <jeremy.shimko@gmail.com>

ENV DEV_BUILD true

RUN echo 'this is v4 of the meteor launchpad'

ONBUILD RUN bash $BUILD_SCRIPTS_DIR/install-meteor.sh
# ONBUILD COPY . $APP_SOURCE_DIR
# ONBUILD RUN $BUILD_SCRIPTS_DIR/build-meteor.sh

# optionally install Mongo or Phantom at app build time
# ONBUILD RUN bash $BUILD_SCRIPTS_DIR/install-phantom.sh
# ONBUILD RUN bash $BUILD_SCRIPTS_DIR/install-mongo.sh
# ONBUILD RUN bash $BUILD_SCRIPTS_DIR/install-graphicsmagick.sh
