FROM oracle/graalvm-ce:1.0.0-rc11 as graalvm
COPY . /home/app/service-discovery
WORKDIR /home/app/service-discovery
RUN ./build-native-image.sh

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/service-discovery .
ENTRYPOINT ["./service-discovery"]