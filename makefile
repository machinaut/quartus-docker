
.PHONY: all build attach x11 run logs

all: build run

build:
	rocker build

attach:
	rocker build --attach

x11:
	pkill socat || true
	socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"${DISPLAY}\" &
	open -a xQuartz

run: x11
	docker run -it --rm \
		--name quartus \
		--net host \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v ${PWD}/projects:/projects \
		-e DISPLAY=192.168.1.167:0 \
		quartus:0.1 \
		quartus

logs:
	docker logs -f quartus

bash:
	docker run -it --rm quartus:0.1 bash

exec:
	docker exec -it quartus bash
