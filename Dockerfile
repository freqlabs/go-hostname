FROM alpine

COPY hostname /opt/bin/hostname

EXPOSE 80

CMD ["/opt/bin/hostname"]
