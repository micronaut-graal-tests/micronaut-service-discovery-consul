# Micronaut Service Discovery Consul and Http Client #

Test application for Micronaut and GraalVM that uses:

- `HelloWorld` controller that returns `Hello ${name}` as a String.
- Consul as service discovery.
- Http `@Client` pointing to the same application
- `GatewayController` that uses the Http Client to call itself through the network.

Start Consul Server:

```bash
docker run -it --rm -p 8500:8500 consul:1.8.0
```

```bash
curl localhost:8080/hello/Micronaut
curl localhost:8080/api/hello/Micronaut
```
