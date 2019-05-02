# Micronaut Service Discovery Consul and Http Client #

Test application for Micronaut and GraalVM that uses:

- `HelloWorld` controller that returns `Hello ${name}` as a String.
- Consul as service discovery.
- Http `@Client` pointing to the same application
- `GatewayController` that uses the Http Client to call itself through the network.

```bash
curl localhost:8080/hello/Micronaut
curl localhost:8080/api/hello/Micronaut
```
