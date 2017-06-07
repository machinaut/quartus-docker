# quartus-docker

Run Quartus on Mac under docker.  Uses `socat` to tunnel X11 over port 6000.

## Goals:

- Single docker image for development and debugging for the DE10-Nano board
- Usable for continuous integration (building/testing) on a remote server

### TODO:

- makefile target to run a persistent container image, instead of rm-ing it
- Have makefile / dockerfile download quartus files directly if possible
- Ensure downloaded .run files are executable
- check MD5 sums of downloaded files
- test out downloading the whole 6.1GB quartus tarfile and build from that
- Build/install the FPGA SoC Embedded Development Suite (EDS) tools as well
- Get setup with ARM DS-5 community (free) license to do ethernet debugging
- Ethernet debugging to docker container (hoping this works!)

### Postscript: For Xilinx folks out there:

*See also:* https://github.com/machinaut/vivado-docker
