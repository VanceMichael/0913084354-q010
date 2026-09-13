FROM golang:1.23 AS build
WORKDIR /src
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -o /series .
FROM gcr.io/distroless/static-debian12
COPY --from=build /series /series
EXPOSE 8080
ENTRYPOINT ["/series"]
