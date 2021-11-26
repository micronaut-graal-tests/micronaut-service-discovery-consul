#!/bin/bash

./gradlew nativeCompile
cp build/native/nativeCompile/service-discovery-consul .
