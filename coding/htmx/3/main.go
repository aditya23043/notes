package main

import (
	"net/http"
	"io"
	"log"
)

func main(){

	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request){
		io.WriteString(writer, "Something");
		io.WriteString(writer, request.Method);
	});

	log.Fatal(http.ListenAndServe(":80", nil));
}
