hostname: src/hostname/main.go
	go build ./src/hostname

clean:
	rm hostname

.PHONY: clean
