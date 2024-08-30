package main

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

func main() {

	engine := gin.Default()
	engine.LoadHTMLGlob("templates/*")

	engine.GET("/", func(client *gin.Context) {
		client.HTML(http.StatusOK, "index.html", gin.H{
			"name": "Something",
		})
	})

	engine.GET("/foo", func(client *gin.Context) {
		client.HTML(http.StatusOK, "index.html", gin.H{
			"name": "Secret",
		})
	})

	engine.Run(":8080")

}
