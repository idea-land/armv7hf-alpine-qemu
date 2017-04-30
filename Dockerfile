FROM armhf/alpine:3.5

ENV QEMU_EXECVE 1

COPY qemu-arm-static /usr/local/bin
COPY resin-xbuild /usr/local/bin

RUN [ "/usr/local/bin/qemu-arm-static", "/bin/sh", "-c", "ln -s /usr/local/bin/resin-xbuild /usr/local/bin/cross-build-start; ln -s /usr/local/bin/resin-xbuild /usr/local/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]
