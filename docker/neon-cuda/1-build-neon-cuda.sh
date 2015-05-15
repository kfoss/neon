#!/bin/bash

# image name
__image=nervana/neon-cuda

# build image
docker build -t $__image .
