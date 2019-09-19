./gradlew assemble
native-image --no-server --no-fallback --class-path build/libs/service-discovery-*-all.jar
