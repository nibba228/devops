FROM golang:1.24.1-alpine3.21 AS build
WORKDIR /src
COPY go-web-app/main.go main.go
RUN go build -o ./main ./main.go

FROM scratch
WORKDIR /src
COPY --from=build /src/main /src/main
CMD ["./main"]
