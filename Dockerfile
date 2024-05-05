# docker buildx build -t egitim-kampi-docker .
# FROM golang:alpine as builder
# WORKDIR /src

# COPY . .

# RUN go build main.go

# FROM scratch

# COPY --from=builder /src/main main 

# RUN ./main
# CMD ["./main"]

FROM jenkins/jenkins

USER root

RUN apt update \
    && apt install -y sudo \
    && rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -sSL https://get.docker.com | sh