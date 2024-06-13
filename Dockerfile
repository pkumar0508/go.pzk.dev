# FROM golang@1.22.4-bookworm
FROM golang@sha256:969349b8121a56d51c74f4c273ab974c15b3a8ae246a5cffc1df7d28b66cf978 AS builder
RUN ["go", "install", "github.com/GoogleCloudPlatform/govanityurls@v0.1.0"]

# FROM scratch
# COPY --from=builder /go/bin/govanityurls /go/bin/govanityurls
COPY vanity.yaml .
ENTRYPOINT ["/go/bin/govanityurls"]
