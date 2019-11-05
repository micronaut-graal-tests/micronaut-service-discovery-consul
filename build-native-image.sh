./gradlew assemble
native-image --no-server --no-fallback --static --class-path build/libs/service-discovery-*-all.jar
