hostname: src/hostname/main.go
	docker run --rm -v `pwd`:/go -w /go golang:1.9-alpine go build -v ./src/hostname

docker: hostname
	docker build -t hostname .

clean:
	rm hostname

.PHONY: clean docker
