#!/bin/bash
set -e

docker run -it --mount type=bind, src="$(pwd)/workspace", target=/workspace roki