#include <Arduino.h>
#include <ArduinoJson.h>
#include <DHT.h>
#include <GyverOLED.h>
#include <HCSR04.h>
#include <HTTPClient.h>
#include <StringSplitter.h>
#include <WiFi.h>

DHT dht(10, DHT11);

UltraSonicDistanceSensor dist1(6, 7);
UltraSonicDistanceSensor dist2(8, 9);

const char *jsonData = "";

const char *ssid = "Something";
const char *password = "something";

const String host = "http://worldtimeapi.org";
const String args = "/api/timezone/Asia/Kolkata";
const String url = host + args;

GyverOLED<SSD1306_128x64> oled;

char jsonObject[300];

void setup() {

  Serial.begin(115200);
  delay(200);

  // WIFI
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

  oled.init(4, 5);
  oled.clear();
  oled.update();
}

void loop() {

  if (WiFi.status() == WL_CONNECTED) {

    HTTPClient http;
    WiFiClient client;

    http.begin(client, url);
    int httpCode = http.GET();

    String response = "";

    if (httpCode > 0) {
      response = http.getString();
      // Serial.println("HTTP Response code: " + String(httpCode));
      // Serial.println("Response: " + response);
    }

    StaticJsonDocument<256> doc;
    DeserializationError error = deserializeJson(doc, response);
    const char *datetime = doc["datetime"];
    Serial.println(datetime);

    String year = (String)datetime[0] + (String)datetime[1] +
                  (String)datetime[2] + (String)datetime[3];
    String month = (String)datetime[5] + (String)datetime[6];
    String date = (String)datetime[8] + (String)datetime[9];
    String hour = (String)datetime[11] + (String)datetime[12];
    String minute = (String)datetime[14] + (String)datetime[15];
    String second = (String)datetime[17] + (String)datetime[18];

    float humid = dht.readHumidity();
    float temp = dht.readTemperature();

    oled.clear();
    oled.setScale(2);
    oled.setCursor(6, 2);
    oled.print(hour + ":" + minute + ":" + second);
    oled.setScale(1);
    oled.setCursor(10, 5);
    oled.print(date + "/" + month + "/" + year);

    oled.setScale(1);
    oled.setCursor(87, 5);
    oled.print(String(temp) + ".C");

    oled.update();

    int distance = dist1.measureDistanceCm();
    if (distance > 64) {
      distance = 64;
    }
    oled.rect(0, 0, distance * 2, 2);
    oled.update();

    distance = dist2.measureDistanceCm();
    if (distance > 64) {
      distance = 64;
    }
    oled.rect(0, 61, distance * 2, 64);
    oled.update();

  } else {
    Serial.println("WIFI DISCONNECTED");
  }
}
