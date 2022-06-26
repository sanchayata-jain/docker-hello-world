FROM golang:1.16-alpine

# Create and change to the app directory
WORKDIR /go/src/app

COPY go.* ./

# copy local code to the container image
COPY . ./

# # tell the port number the container should expose
# EXPOSE 5000

ADD src src 

# run the command
CMD ["go", "run", "src/main.go"]