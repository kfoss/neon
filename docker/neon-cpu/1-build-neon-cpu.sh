#!/bin/bash

# image name
__image=nervana/neon-cpu

# build image
docker build -t $__image .
