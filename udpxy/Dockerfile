FROM buildpack-deps:buster AS build
WORKDIR /usr/local/src
RUN wget http://www.udpxy.com/download/1_23/udpxy.1.0.23-9-prod.tar.gz \
 && tar xzfv udpxy.1.0.23-9-prod.tar.gz \
 && cd udpxy-1.0.23-9/ \
 && make CFLAGS='-static' \
 && make install

FROM alpine:3.11
COPY --from=build /usr/local/bin/ /usr/local/bin/
EXPOSE 4022
CMD ["/usr/local/bin/udpxy", "-T", "-p", "4022"]
