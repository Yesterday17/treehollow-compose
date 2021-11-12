FROM alpine
WORKDIR /app
COPY ./treehollow-v3-services-api /app/treehollow-v3-services-api
ADD https://github.com/golang/go/raw/master/lib/time/zoneinfo.zip /zoneinfo.zip
ENV ZONEINFO /zoneinfo.zip
CMD ["/app/treehollow-v3-services-api"]