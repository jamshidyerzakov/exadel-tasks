package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	fmt.Println("Go Server is running!")

	PORT := ":8080"

	fmt.Printf("Server is running on %s", PORT)

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello WEB APP")

		fmt.Println("User entered to root")
	})

	log.Fatal(http.ListenAndServe(PORT, nil))
}
