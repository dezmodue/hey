FROM golang:latest
COPY hey /
WORKDIR /
USER nobody
EXPOSE 8080
ENTRYPOINT ["/hey"]
CMD ["-n", "1", "-c", "1", "-q", "1", \
     "-t", "1", "https://www.example.com"]