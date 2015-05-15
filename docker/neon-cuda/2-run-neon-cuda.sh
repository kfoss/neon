#!/bin/bash

__image=nervana/neon-cuda

docker run  -it \
            --privileged \
            --volume $(pwd)/data:/root/data \
            $__image \
              bash
