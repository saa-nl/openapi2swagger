#!/bin/bash

converterRun () {
    docker build -t swagger-converter . 1>&2
    docker run -it swagger-converter ${1}
}

converterRun ${1}
