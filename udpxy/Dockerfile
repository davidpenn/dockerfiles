FROM scratch
COPY udpxy /usr/local/bin/udpxy
COPY empty/ /var/run/
EXPOSE 4022
ENTRYPOINT ["/usr/local/bin/udpxy", "-T"]
CMD ["-p", "4022"]
