./gradlew assemble
docker build . -t service-discovery
docker run --network host service-discovery
