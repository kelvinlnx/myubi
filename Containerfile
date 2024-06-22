FROM registry.access.redhat.com/ubi9/ubi:latest

# The following packages will be installed
#    procps-ng - ps
#    iproute - ip, bridge, ss
#    iputils - ping
#    ncurses - clear
#    bind-utils - host, dig
#    wget - wget
#    nmap-ncat - nc
#
# ubi image - curl, vi, tar, echo, sed
#    builtin - df

RUN dnf install -y --nodocs procps-ng iproute iputils ncurses bind-utils wget nmap-ncat

# CMD used instead of ENTRYPOINT for flexibility
CMD sleep infinity
