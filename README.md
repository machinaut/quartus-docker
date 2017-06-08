# quartus-docker

Run Quartus on Mac under docker.  Uses `socat` to tunnel X11 over port 6000.

## Goals:

- Single docker image for development and debugging for the DE10-Nano board
- Usable for continuous integration (building/testing) on a remote server

## Instructions:

This requires Rocker to build: https://github.com/grammarly/rocker#installation

    make

Note: you might want to temporarily allow your docker daemon to consume all CPUs,
the installers take a really long time on my machine (~6 minutes each).

### TODO:

- Get setup with ARM DS-5 community (free) license to do ethernet debugging
- Ethernet debugging to docker container over host networking

### Postscript: For Xilinx folks out there:

*See also:* https://github.com/machinaut/vivado-docker
