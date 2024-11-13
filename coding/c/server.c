#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define PORT 8080
#define BUFFER_SIZE 1024

void send_json_response(int client_socket) {
  const char *json_response =
      "HTTP/1.1 200 OK\r\n"
      "Content-Type: application/json\r\n"
      "Connection: close\r\n"
      "\r\n"
      "{ \"status\": \"success\", \"message\": \"Hello, World!\" }"
      ;

  send(client_socket, json_response, strlen(json_response), 0);
}

int main(int argc, char *argv[]){

  int server_socket, client_socket;
  struct sockaddr_in server_addr, client_addr;
  socklen_t addr_len = sizeof(client_addr);
  char buffer[BUFFER_SIZE];

  // Create socket
  server_socket = socket(AF_INET, SOCK_STREAM, 0);
  if (server_socket < 0) {
      perror("Socket creation failed");
      exit(EXIT_FAILURE);
  }

  // Set up server address structure
  memset(&server_addr, 0, sizeof(server_addr));
  server_addr.sin_family = AF_INET;
  server_addr.sin_addr.s_addr = INADDR_ANY; // Listen on all interfaces
  server_addr.sin_port = htons(PORT);


  // Bind the socket
  if (bind(server_socket, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
      perror("Bind failed");
      close(server_socket);
      exit(EXIT_FAILURE);
  }

  // Listen for incoming connections
  if (listen(server_socket, 5) < 0) {
      perror("Listen failed");
      close(server_socket);
      exit(EXIT_FAILURE);
  }

  printf("Server is running on port %d\n", PORT);

  while (1) {
      // Accept an incoming connection
      client_socket = accept(server_socket, (struct sockaddr *)&client_addr, &addr_len);
      if (client_socket < 0) {
          perror("Accept failed");
          continue; // Continue to accept next connections
      }

      // Read the request
      memset(buffer, 0, BUFFER_SIZE);
      read(client_socket, buffer, BUFFER_SIZE - 1);

      // Print the received request (for debugging)
      printf("Received request:\n%s\n", buffer);

      // Check if it's a GET request
      if (strstr(buffer, "GET / HTTP/1.1") != NULL) {
          send_json_response(client_socket); // Send JSON response
      } else {
          const char *not_found_response =
              "HTTP/1.1 404 Not Found\r\n"
              "Content-Type: text/plain\r\n"
              "Connection: close\r\n"
              "\r\n"
              "404 Not Found";
          send(client_socket, not_found_response, strlen(not_found_response), 0);
      }

      // Close the client socket
      close(client_socket);
  }

  // Close the server socket (unreachable code in this example)
  close(server_socket);
  return 0;

}
