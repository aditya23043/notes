#include <Arduino.h>
#include <HTTPClient.h>
#include <WiFi.h>

const char *ssid = "PRIADI";
const char *password = "prince123**";
const String host = "http://worldtimeapi.org";
const String url = "/api/timezone/Asia/Kolkata";

void setup() {

  Serial.begin(115200);

  WiFi.begin(ssid, password);
  Serial.println("");
  Serial.print("Connecting to ");
  Serial.println(ssid);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.println("Connecting...");
  }

  Serial.println("");
  Serial.print("WiFi connected at IP: ");
  Serial.println(WiFi.localIP());

  if (WiFi.status() == WL_CONNECTED) {
    HTTPClient http;
    WiFiClient client;

    String serverURL = host + url;

    http.begin(client, serverURL);
    int httpCode = http.GET();

    String response = "";
    if (httpCode > 0) {
      response = http.getString();
    }

    Serial.println("HTTP Response Code: " + String(httpCode));
    Serial.println("Response: " + response);
  }
}

void loop() {}
