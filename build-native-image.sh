./gradlew assemble
native-image --no-fallback --class-path build/libs/service-discovery-*-all.jar
