#!/bin/bash

__image=nervana/neon-cpu

docker run  -it \
            --volume $(pwd)/data:/root/data \
            $__image \
              bash
