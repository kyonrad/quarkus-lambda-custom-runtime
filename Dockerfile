FROM maven:3.6.1-jdk-8-slim as assembly

ENTRYPOINT ["/bin/bash", "-c", "cd /temp && \
                                mvn assembly:single@make-native-function && \
                                mvn assembly:single@zip-native-function"]