FROM oracle/graalvm-ce:1.0.0-rc13 as graalvm
COPY . /home/app/service-discovery
WORKDIR /home/app/service-discovery
RUN native-image --no-server --class-path build/libs/service-discovery-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/service-discovery .
ENTRYPOINT ["./service-discovery"]