# Firefox over VNC
#
# VERSION               0.3

FROM docker-cosy-pgwish

# Install vnc, xvfb in order to create a 'fake' display and firefox
RUN apt-get update && apt-get install -y x11vnc xvfb
RUN mkdir ~/.vnc
# Setup a password
RUN x11vnc -storepasswd 12345 ~/.vnc/passwd
# Autostart firefox (might not be the best way, but it does the trick)
RUN bash -c 'echo "/usr/local/bin/pgwish" >> /.bashrc'

EXPOSE 5900
CMD    ["x11vnc", "-forever", "-usepw", "-create"]
