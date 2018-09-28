package main

import (
	"io"
	"log"
	"net/http"
	"os"
)

func main() {
	hostname, err := os.Hostname()
	if err != nil {
		log.Fatal("os.Hostname() failed")
		return
	}

	helloHandler := func(w http.ResponseWriter, req *http.Request) {
		io.WriteString(w, hostname)
	}

	http.HandleFunc("/", helloHandler)
	log.Fatal(http.ListenAndServe(":80", nil))
}
