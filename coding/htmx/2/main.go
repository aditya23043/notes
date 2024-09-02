package main

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

var msg = "Something";

func main() {

	engine := gin.Default()

	engine.StaticFile("/", "./templates/index.html")

	engine.GET("/update", func(c *gin.Context) {
			c.String(http.StatusOK, msg)
	})

	engine.Run(":8080")

}
