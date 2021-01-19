#!/bin/bash

./gradlew nativeImage
cp build/native-image/service-discovery-consul .
