FROM golang:1.24.1-alpine3.21 AS build

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o main


FROM scratch

COPY --from=build /app/main main 

ENTRYPOINT ["./main"]