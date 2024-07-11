<style>
    html {
        background-color: #111;
    }
    * {
        font-family: "VictorMono NFM";
        font-weight: bold;
        background-color: #111;
        color: #aaa;
    }
</style>

# Electronics Design Carnival 2024 ( DAY 1 ) : 01-07-24

## Electronics System Design - Prof. Sujay Deb

### What is Engineering?
- Purposeful use of science
- making stuff
- solving problems
- employ facts of nature to build very interesting systems
- conversion of nature to Engineering systems occurs through observation and abstraction
- Take complicate things, build layers of abstraction, and simplify thing so that we can build useful systems

### Abstractions in Modern Computing Systems
- Applications
- Algorithm
- Programming Language
- OS / VM
- ISA (instruction set architecture)
- Micro-architecture
- Register-Transfer level
- Gates
- Circuits
- Devices
- Physics

- Top level layers provide application requirements
- Lower level layers provide technological constraints
- The middle three layers provide feedback to guide application and technology research directions

- Both i9-* and i3-* processors can run similar os like windows and regular applications like ms docs etc
- The software related stuff is similar
- Then what is the difference?
- The microarchitecture is different

#### Register Transfer Logic
- Performance gain => Combinational Logic takes lesser time
- Clock cycles decide the processor speed

## Clock speed
- Intel introduced pentium series in the '90s
- Pentium 1 => running at some MHz
- Pentium 2 => running at 1 GHz
- Pentium 3 => running at 3 GHz
- Pentium 4 => running at 4 GHz
- But they could not increase the clock speed further due to technological constraints, majorly, insufficient heat dissipation
- Tech people were dreaming of higher and higher performance with higher clock speeds but now they hit a power wall
- Hence, now most chips run at 3.3GHz max
- They try to achieve better performance through multi-core processors

## Apple
- Earlier macbooks has intel processors
- To break through the constraints barrier, Apple decided to take control of all the abstractions layer themselves in order to get most out of the chip and make their software work in unison with their hardware

## ISAs
- All popular ISAs are owned by companies
- ARM owned by arm; x86 owned by intel; snapdragon owned by Qualcomm
- Hence, Indians are strongly promoting the open source RISC-V architecture ( competition to ARM architecture)
- RISC: Reduced instruction set computer
- Note: both RISC-V and ARM implement the RISC ideology whereas intel's x86 follows CISC (complex instruction set computer) architecture
- RISC based processors provide low power consumption alongside high performance
- Hence, intel could not survive in the mobile devices market

## Moore's Law
- The number of transistors in an IC doubles about every two years with minimal rise in cost

## Efficiency System Design Strategy
- Efficiency: Microprocessors < General Purpose DSP (Digital Signal Processors) < Dedicated

## Future of SOC (System on a chip)
- There is a quad core CPU; multi core GPU; and accelerators for processing
- And in terms of shared resources : you habve NoC (network on chip: used for communication between computing elements) and SRAM
- Finally, you have the DRM
- Basic Computing Systems are connected through bus based communication.
- However, in multi-core systems, this would be a major bottleneck since it can communicate with a single element at a time. (not scalable)
- In order to prevent this NoC ( network on chip ) was popularized. ( scalable :tick)
    - eg. WNoC ( wireless network on chip )

## IEE iSES 2024 : December
## mail: sdeb@iiitd.ac.in

# RESOURCE OPTIMIZATION - Tarun Shekhar
- tarun.shekhar@gmail.com
- Problem Identification
- Target Audience
- Market research
- Form factor
- Begin development
- Hardware Design
- Firmware Development

## Key stages of IOT Development
- Functions and features
- Architecture
- Hardware and mechanical
- Firmware
- Cloud
- Software

## Mechanical Design
- CAD designer
- 3d printer for proto development 
- Molding tools, injection tools for final production
- Printing and Labelling

## Hardware Design (can be outsourced)
- Circuit design and component selection ( Analog, Digital, Communication, Power Supply, MCU / MPU, and other passive components )
- Schematic
- PCB Design
- Fabrication
- PCB Assembly
- Note: PCBA = PCB Assembled

## Firmware Development
- Should be in line with the hardware functioning
- MCU/MPU Selection
- Deciding Communication

## Cloud and Software Development- AArchitecture
- Hosting
- Database Managerment
- Communication Protocol
- UI/UX
- Backend Development
- Frontend Developent
- Testing with hardware

## Resource optimization
- Optimization of man power (HR)
- Time optimization
- Outsourcing
- Taking help from semiconductor companies like free samples and eval boards, 

## TDK Company : Semiconductor ( based in japan )

## Supply Chain
1. Final Product Manufacturing (10-20%) (screwdriving technique : just assmebly)
2. Product Design and Development
3. Component Manufacturing
4. Component Design and Development
5. Raw material processing and refining
6. Mining and Extraction

> Just S.No.1 occurs in India. Rest of the stuff has been controlled by China

## OPTIMIZATION
- Man Power
- Hardware and Software
- Financial
- Time

# DAY 2 (02-07-24)

## IOT Paradox
> "Simplicity Sells, Complexity scales"

## IOT Simplified
- Edge : where the action is hapenning
- Gateway : communication portal
- Cloud

## IOT key components
- Sensors
- Connectivity ( Edge / Cloud )
- Intelligence and data analytics
- Security and Trust
- Efficient and cost saving

## Network protocols in terms of distance
- NFC
- EMV
- WPAN
- WHAN
- WFAN : wireless Field area network
- WLAN
- WNAN
- Cellular

## Connectivity
- Unlicensed : Under 2MHz signal strength : free
- Licensed => eg: Cellular

## Embedded software
- Discover
    - Consulting
- Create
    Design and Implementation
- Scale
    Continuous Improvement
<hr>

- MCU frmware
- Linux
- Android
- Middleware and application
    - Multimedia
    - Domain Specific protocols and stacks
- Computer Vision and AI/ML 
- Silicon
    - FPGA
    - Pro and Post silicon validation
<hr>

- Hardware Design
- Firmware Development
    - Board software package
- QA and Testing (Debugging)

## MCU Firmware
- OS
- Chipsets
- TOols (IDE)
- Middleware and SDKs (Software development kit)
- UI/UX
- Protocols and peripherals
    - Serial bus
    - UART
    - Wireless
- Optimization
    - Power
    - Memory
    - Boot time

## ARM: Under the hood
- OSI Architecture

1. Physical layers
    - Sensors
    - Radio
    - Cortex-M
2. Data Layer
    - Drivers
    - CMSIS
3. Network Layer
    - IPv4
    - IPv6
    - 6loWPAN
4. Transport layer
    - TLD
    - DTL
5. Application Layer
    - Cpp APIs
    - Applications
    - Community Libraries

## Cloud Development
- Edge
    - Device Provisioning
        - Discovery
        - Connection
        - Authentication
        - Registration
        - Self Provisioning
    - Device Management
        - Confi
        - Rule based automation
        - Cloud data transfer
        - Off boarding
    - Device Monitoring
        - Performance monitoring
        - Troubleshooting
    - Device update and Diagnostics
- Gateway
- Cloud
    - Application Dev
        - API management
    - Application config & management
        - Gateway management

## Cybersec
- Discover
    - Security Scoping and Requrement Assessment
- Treat
    - Dev Sec Ops
- Maintain
    - Governance and risk compliance

## Designing and IOT Device
- Hardware design and prototyping
- Industrial Design and mechanical engineering
- Firmware development
- Software / application development
- Design for Manufacturing
- Testing and certifications

# Interfacing with sensors and actuators - Tarun

## Sensor
- Detects change in the environment and responds to some output

## Actuator
- Part of a device that helps it to achieve physical movements by converting energy, often electrical, air or hydraulic into mechanical force

## Interfacing
- Sensors: send a signal
- Actuator : convert a signal to energy
- Can we simply connect a sensor and an actuator?
    - No
    - Not every sensor signal needs to be converted to transducer movement
    - Often, data needs to be processed before actually being sent to transducer

## Protocols
- Processor does not interact with the physical sensors or actuators directly
- Development boards use protocols like UART, SPI, I2C (scl and sda)
- The sender should know that the receiver received the data successfully
- Protocols
    - Ensure smooth data movement
    - Both sender and receiver know

## Serial Protocol
- Eg: we have to transfer 9 bits from point 1 to point 2
    - You can use either serial communication (one bit at a time using a single data path) or parallel
    - We prefer serial protocol

### UART protocol
- Universal Asynchronous Receiver Transmitter
- Two signals:
    1. Transmitter (TX)
    2. Receiver (Rx)
- Baudrate
- You receive 8 bits from the data bus in parallel and it is sent using serial communication by converting it to serial (serialization), UART specifically and then you convert it back to parallel bits so that it can be transferred further using data bus (de-serialization)

| UART 1 | UART 2 |
|--------|--------|
| RX     | RX     |
| TX     | TX     |

### Packet structure of UART

| Start bit | Data Frame | Parity Bit | Stop Bit   |
|-----------|------------|------------|------------|
| 1 bit     | 5-9 bits   | 0-1 bit    | 1-2 bit(s) |

- Parity bit : prevents from sending signals with noise
- Stop bit : converts from low to high when the transmission needs to stop

## I2C protocol
- Inter-Integrated Circuit

| Master |     | Slave |
|--------|-----|-------|
| SDA    | <-> | SDA   |
| SCL    | --> | SCL   |

- Half Duplex : Single controller sends data at a time
- SDA is bidirectional : but only one can send at a time
- Two Wire serial communication protocol using serial data line and serial clock line
- Sent in strict byte packets with a unique address for each target device
- Several Transmission rates
    - Slow
    - Normal
    - Fast
    - Very fast
- If we have to use multiple UART, we have to redefine another receiver but with I2C we can use same I2C bus for several oled displays and sensors

### I2C Communication
- First SDA is pulled down then SCL is pulled down. Now i2c is initialized
- Then you send the address frame bits : (which address to send to) : 7/8 bit address : Last bit is Read / Write (bar) (i.e. Read when bit is high and write when bit is low)
- Then ACK bit (acknowledgement from receiver : 1 - data received or 0 - data not received)
    - If not received then the communication is restarted
- Now, Data Frame bits (8 bits) and once again ACK for acknowledgement
- Then, SDA goes from 0 to 1 THEN SCL goes from 0 to 1
- And the clock peaks whenever the data needs to be scanned by the receiver
- Everything read at positive edge of clock cycle

## SPI Interface
- Serial Peripheral Interface
- 4 signals
    - CS (bar) : chip select (inverted)
    - SCLK : serial clock
    - SDI / MISO : serial data in (main in / subnode out)
    - SDO / MOSI : serial data out (main out / subnode in)
- One main and one / multiple subnodes
- Bidirectional, duplex communication
- Higher freq than i2c communication
- There hasn't been many cases where we need to speak in both directions at the same time even in sensors / displays / human interface devices

### SPI Communication

| SPI Mode | CPOL | CPHA | Clock polarity | Clock phase used to sample and or shift the data       |
|----------|------|------|----------------|--------------------------------------------------------|
| 0        | 0    | 0    | Logical Low    | data sampled: rising edge; shifted out in falling edge |
| 1        | 0    | 1    | Logical Low    | data sampled: falling edge; shifted out in rising edge |
| 2        | 1    | 0    | Logical High   | data sampled: falling edge; shifted out in rising edge |
| 3        | 1    | 1    | Logical High   | data sampled: rising edge; shifted out in falling edge |

- In regular SPI mode and in multi subnode spi communication, you can read from any ONE of the those at a time since you cannot make out where the data is coming from because we are using different chip selects
- Daisy chaining : not supported on all SPI devices
    - SDO to SDI; SDO to SDI... and so on
    - Delayed data input (data in after 24 cycles if we have 3 of those receivers and each take 8 cycles because of common CS(bar))
    - Save on Chip select by using the same on all

## Hands-on NodeMCU Stuff

### Connecting to the internet

```c
#include <ESP8266WiFi.h>

WiFiClient client;
WiFiServer server(80);

void setup() { 

    Serial.begin(9600); 

    WiFi.begin("Something", "something"); 

    while(WiFi.status() != WL_CONNECTED) { 
        Serial.print("..");
        delay(200);
    }
    Serial.println();
    Serial.println("NodeMCU is Connected!"); 
    Serial.println(WiFi.localIP()); 

    server.begin();

}

void loop() { 

    client = server.available();
    if( client == 1 ){
        String request = client.readStringUntil('\n');
        Serial.println(request);
    }

}
```

#### OUTPUT
```serial
09:02:46.248 -> ....................................................................����............................................................�a�Q¡q�K�!!�cGa�..................................................................................................
09:18:31.744 -> NodeMCU is Connected!
09:18:31.744 -> 192.168.171.34
```

```output
Connecting....
Chip is ESP8266EX
Features: WiFi
Crystal is 26MHz
MAC: cc:50:e3:3c:16:6e
Uploading stub...
Running stub...
Stub running...
Configuring flash size...
Auto-detected Flash size: 4MB
Compressed 272336 bytes to 200336...
Writing at 0x00000000... (7 %)
Writing at 0x00004000... (15 %)
Writing at 0x00008000... (23 %)
Writing at 0x0000c000... (30 %)
Writing at 0x00010000... (38 %)
Writing at 0x00014000... (46 %)
Writing at 0x00018000... (53 %)
Writing at 0x0001c000... (61 %)
Writing at 0x00020000... (69 %)
Writing at 0x00024000... (76 %)
Writing at 0x00028000... (84 %)
Writing at 0x0002c000... (92 %)
Writing at 0x00030000... (100 %)
Wrote 272336 bytes (200336 compressed) at 0x00000000 in 17.7 seconds (effective 123.0 kbit/s)...
Hash of data verified.

Leaving...
Hard resetting via RTS pin...
```

- Wifi.status() returns these enum values
    1. WL_CONNECTED: The NodeMCU is successfully connected to a WiFi network.
    2. WL_IDLE_STATUS: The WiFi is in idle mode.
    3. WL_CONNECT_FAILED: The connection attempt failed.

### Interfacing with a web page using MCU
```c
#include <ESP8266WiFi.h>

WiFiClient client;
WiFiServer server(80);

void setup() { 

    Serial.begin(9600); 

    pinMode(D4, OUTPUT); // Set LED pin as OUTPUT

    WiFi.begin("Robify", "iot@robify"); 

    while(WiFi.status() != WL_CONNECTED) { 
        Serial.print("..");
        delay(200);
    }
    Serial.println();
    Serial.println("NodeMCU is Connected!"); 
    Serial.println(WiFi.localIP()); 

    server.begin();

}

void loop() { 

    client = server.available();
    if( client == 1 ){
        String request = client.readStringUntil('\n');
        Serial.println(request);
        request.trim();
        if(request == "GET /on HTTP/1.1"){
            digitalWrite(D4, HIGH);
        }
        else if(request == "GET /off HTTP/1.1"){
            digitalWrite(D4, LOW);
        }
    }

    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println(""); // Important: this is the blank line that indicates the end of the headers
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("<h1>Welcome to the Robify Webcontrol Page!</h1>");
    client.println("<h3>LED Controls</h3>");
    client.println("<br>");
    client.println("<a href=\"/on\"><button>LED ON</button></a>");
    client.println("<a href=\"/off\"><button>LED OFF</button></a><br/>");
    client.println("</html>");

}
```

### DHT Sensor
```c
#include <ESP8266WiFi.h>
#include <DHT.h>
#include <WiFiClient.h>
#include <ESP8266HTTPClient.h>

DHT dht(D5, DHT11);

String host = "api.thingspeak.com";
int httpPort = 80;  
String url1 = "/update?api_key=2V7FSMUWEC9TJKQA&field1=";
String url2 = "/update?api_key=2V7FSMUWEC9TJKQA&field2=";

HTTPClient http; 
WiFiClient client;

void setup() 
{
  Serial.begin(9600);
  WiFi.begin("Robify", "iot@robify");
  while(WiFi.status() != WL_CONNECTED)
  {
    delay(200);
    Serial.print("..");
  }
  Serial.println();
  Serial.println("NodeMCU is connected!");
  Serial.println(WiFi.localIP());
  dht.begin();
}

void loop() 
{
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  Serial.println("Temperature: " + (String) t);
  Serial.println("Humidity: " + (String) h);

  url1 = url1 + (String) t;
  http.begin(client, host, httpPort, url1); 
  int httpCode = http.GET();
  Serial.println(httpCode);
  delay(2000);

  url2 = url2 + (String) h;
  http.begin(client, host, httpPort, url2); 
  httpCode = http.GET();
  Serial.println(httpCode);
  delay(2000);
}
```

# DAY 4 (HTTP Get req without lib)
- http : Port = 80
- https : Port = 443
- Url : port, host, attributes

## How to send http get request
```c
http.begin(client, host, httpPort, url1); 
int httpCode = http.GET();
```
- httpCode returns a return value
    - positive value => everything is fine
    - negative value => everything is wrong

- Negative reciprocal of 1 in base 10 is 9 because 10 - 1 = 9

## Smart RGB Led
```c
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

const char* ssid = "Something";
const char* password = "something";

#define blueLED D5
#define greenLED D6
#define redLED D7

HTTPClient http;
WiFiClient client;

void setup() {

  pinMode(redLED, OUTPUT);
  pinMode(blueLED, OUTPUT);
  pinMode(greenLED, OUTPUT);
  Serial.begin(115200);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting...");
  }

  Serial.println("Connected to WiFi");
}

void loop() {
  http.begin(client, "http://iot.robify.in/rgbactivity");
  int httpCode = http.GET();

  if (httpCode > 0) {
    String payload = http.getString();
    Serial.println(payload);
    String red = (String)payload[0] + (String)payload[1] + (String)payload[2];
    String green = (String)payload[4] + (String)payload[5] + (String)payload[6];
    String blue = (String)payload[8] + (String)payload[9] + (String)payload[10];
    int red1 = red.toInt();
    int green1 = green.toInt();
    int blue1 = blue.toInt();

    analogWrite(redLED, red1);
    analogWrite(greenLED, green1);
    analogWrite(blueLED, blue1);
    Serial.println(red);
    Serial.println(green);
    Serial.println(blue);
  } else {
    Serial.println("Error on HTTP request");
  }

  http.end();
  delay(200);
}
```

## POST method
```c
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>
#include <DHT.h>

const char* ssid = "Something";
const char* password = "something";
const char* serverName = "http://iot.robify.in/tempactivity/eoxhts6v";


float temp = 25.5;  // Replace with the actual temperature value

DHT dht(D5, DHT11);


void setup() {

  dht.begin();
  String temp1 = (String) dht.readTemperature(); 
  Serial.begin(115200);
  WiFi.begin(ssid, password);


  Serial.print("Connecting to WiFi...");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println(" connected");


  if (WiFi.status() == WL_CONNECTED) {
    HTTPClient http;
    WiFiClient client;


    http.begin(client, serverName);
    http.addHeader("Content-Type", "application/json");


    String jsonPayload = "{\"temperature\":" + String(temp1) + "}";


    int httpResponseCode = http.POST(jsonPayload);


    if (httpResponseCode > 0) {
      String response = http.getString();
      Serial.println("HTTP Response code: " + String(httpResponseCode));
      Serial.println("Response: " + response);
    } else {
      Serial.println("Error on sending POST: " + String(httpResponseCode));
    }


    http.end();
  } else {
    Serial.println("WiFi not connected");
  }
}


void loop() {
 // put your main code here, to run repeatedly
}
```

## Message Box
```c
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

const String serverUrl = "http://iot.robify.in/msgactivity/eoxhts6v";
const String ssid = "Something";
const String password = "something";
const String msg = "Hire kar lo please";

void setup() {
  Serial.begin(115200);
  delay(10);

  WiFi.begin(ssid, password);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println();
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  if (WiFi.status() == WL_CONNECTED) {
     HTTPClient http;  // Object of class HTTPClient
     WiFiClient client;
     http.begin(client, serverUrl);
     http.addHeader("Content-Type", "application/json");
     String jsonPayload = "{\"message\": \"Hire kar lo please\"}";
     int httpResponseCode = http.POST(jsonPayload);
     http.end();

  } else {
    Serial.println("Error in WiFi connection");
  }
}

void loop() {
 // Do nothing in the loop
}
```
- Note: Ensure you put quotes around the variable when you use a string var to post the message
- Robify Hosts: Aryan Jain and Abhishek

## Quiz
```c
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

const char* ssid = "Something";
const char* password = "something";
const String host = "http://iot.robify.in";
const String url = "/quiz1?userid=eoxhts6v&field=a";
const String final = host + url;

HTTPClient http;
WiFiClient client;

void setup(){

  Serial.begin(115200);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting...");
  }
  Serial.println("Connected to WiFi");

  http.begin(client, final);
  int httpCode = http.GET();

  if( httpCode > 0 ){
    String response = http.getString();
    Serial.println("HTTP Response code: " + String(httpCode));
    Serial.println("Response: " + response);
  }
}

void loop(){

}
```
- Note: `http.begin` requires 4 args => client, host, port, args_url, 
    - host => eg: www.google.com
    - port => eg: 80 for http and 443 for https
    - args_url => eg: /search?search_query=something&other_arg=no

## RFID Write
```c
#include <SPI.h>
#include <MFRC522.h>

constexpr uint8_t RST_PIN = D3;     // Configurable, see typical pin layout above
constexpr uint8_t SS_PIN = D4;     // Configurable, see typical pin layout above

MFRC522 mfrc522(SS_PIN, RST_PIN); // Instance of the class
MFRC522::MIFARE_Key key;        

/* Set the block to which we want to write data */
/* Be aware of Sector Trailer Blocks */
int blockNum = 2;  
/* Create an array of 16 Bytes and fill it with data */
/* This is the actual data which is going to be written into the card */
byte blockData [16] = {"something"};

/* Create another array to read data from Block */
/* Legthn of buffer should be 2 Bytes more than the size of Block (16 Bytes) */
byte bufferLen = 18;
byte readBlockData[18];

MFRC522::StatusCode status;

void setup() 
{
  /* Initialize serial communications with the PC */
  Serial.begin(9600);
  /* Initialize SPI bus */
  SPI.begin();
  /* Initialize MFRC522 Module */
  mfrc522.PCD_Init();
  Serial.println("Scan a MIFARE 1K Tag to write data...");
}

void loop()
{
  /* Prepare the ksy for authentication */
  /* All keys are set to FFFFFFFFFFFFh at chip delivery from the factory */
  for (byte i = 0; i < 6; i++)
  {
    key.keyByte[i] = 0xFF;
  }
  /* Look for new cards */
  /* Reset the loop if no new card is present on RC522 Reader */
  if ( ! mfrc522.PICC_IsNewCardPresent())
  {
    return;
  }
  
  /* Select one of the cards */
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  Serial.print("\n");
  Serial.println("**Card Detected**");
  /* Print UID of the Card */
  Serial.print(F("Card UID:"));
  for (byte i = 0; i < mfrc522.uid.size; i++)
  {
    Serial.print(mfrc522.uid.uidByte[i] < 0x10 ? " 0" : " ");
    Serial.print(mfrc522.uid.uidByte[i], HEX);
  }
  Serial.print("\n");
  /* Print type of card (for example, MIFARE 1K) */
  Serial.print(F("PICC type: "));
  MFRC522::PICC_Type piccType = mfrc522.PICC_GetType(mfrc522.uid.sak);
  Serial.println(mfrc522.PICC_GetTypeName(piccType));
         
   /* Call 'WriteDataToBlock' function, which will write data to the block */
   Serial.print("\n");
   Serial.println("Writing to Data Block...");
   WriteDataToBlock(blockNum, blockData);
   
   /* Read data from the same block */
   Serial.print("\n");
   Serial.println("Reading from Data Block...");
   ReadDataFromBlock(blockNum, readBlockData);
   /* If you want to print the full memory dump, uncomment the next line */
   //mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
   
   /* Print the data read from block */
   Serial.print("\n");
   Serial.print("Data in Block:");
   Serial.print(blockNum);
   Serial.print(" --> ");
   for (int j=0 ; j<16 ; j++)
   {
     Serial.write(readBlockData[j]);
   }
   Serial.print("\n");
}



void WriteDataToBlock(int blockNum, byte blockData[]) 
{
  /* Authenticating the desired data block for write access using Key A */
  status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, blockNum, &key, &(mfrc522.uid));
  if (status != MFRC522::STATUS_OK)
  {
    Serial.print("Authentication failed for Write: ");
    Serial.println(mfrc522.GetStatusCodeName(status));
    return;
  }
  else
  {
    Serial.println("Authentication success");
  }

  
  /* Write data to the block */
  status = mfrc522.MIFARE_Write(blockNum, blockData, 16);
  if (status != MFRC522::STATUS_OK)
  {
    Serial.print("Writing to Block failed: ");
    Serial.println(mfrc522.GetStatusCodeName(status));
    return;
  }
  else
  {
    Serial.println("Data was written into Block successfully");
  }
  
}

void ReadDataFromBlock(int blockNum, byte readBlockData[]) 
{
  /* Authenticating the desired data block for Read access using Key A */
  status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, blockNum, &key, &(mfrc522.uid));

  if (status != MFRC522::STATUS_OK)
  {
     Serial.print("Authentication failed for Read: ");
     Serial.println(mfrc522.GetStatusCodeName(status));
     return;
  }
  else
  {
    Serial.println("Authentication success");
  }

  /* Reading data from the Block */
  status = mfrc522.MIFARE_Read(blockNum, readBlockData, &bufferLen);
  if (status != MFRC522::STATUS_OK)
  {
    Serial.print("Reading failed: ");
    Serial.println(mfrc522.GetStatusCodeName(status));
    return;
  }
  else
  {
    Serial.println("Block was read successfully");  
  }
  
}
```
## RFID READ
```c
#include <SPI.h>
#include <MFRC522.h>
#include <Arduino.h>
#include <ESP8266HTTPClient.h>

#define RST_PIN  D3     // Configurable, see typical pin layout above
#define SS_PIN   D4     // Configurable, see typical pin layout above
#define BUZZER   D2     // Configurable, see typical pin layout above

MFRC522 mfrc522(SS_PIN, RST_PIN);  // Instance of the class
MFRC522::MIFARE_Key key;  
MFRC522::StatusCode status;      

/* Be aware of Sector Trailer Blocks */
int blockNum = 2;  

/* Create another array to read data from Block */
/* Legthn of buffer should be 2 Bytes more than the size of Block (16 Bytes) */
byte bufferLen = 18;
byte readBlockData[18];
String data2;

void setup() 
{
  /* Initialize serial communications with the PC */
  Serial.begin(9600);

  Serial.println();
  Serial.println();
  Serial.println();

  for (uint8_t t = 4; t > 0; t--) {
    Serial.printf("[SETUP] WAIT %d...\n", t);
    Serial.flush();
    delay(1000);
  }

  /* Set BUZZER as OUTPUT */
  pinMode(BUZZER, OUTPUT);
  /* Initialize SPI bus */
  SPI.begin();
}

void loop()
{
  /* Initialize MFRC522 Module */
  mfrc522.PCD_Init();
  /* Look for new cards */
  /* Reset the loop if no new card is present on RC522 Reader */
  if ( ! mfrc522.PICC_IsNewCardPresent())
  {
    return;
  }
  /* Select one of the cards */
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  /* Read data from the same block */
  Serial.println();
  Serial.println(F("Reading last data from RFID..."));
  ReadDataFromBlock(blockNum, readBlockData);
  /* If you want to print the full memory dump, uncomment the next line */
  //mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
  
  /* Print the data read from block */
  Serial.println();
  Serial.print(F("Last data in RFID:"));
  Serial.print(blockNum);
  Serial.print(F(" --> "));
  for (int j=0 ; j<16 ; j++)
  {
    Serial.write(readBlockData[j]);
  }
  Serial.println();
  digitalWrite(BUZZER, HIGH);
  delay(200);
  digitalWrite(BUZZER, LOW);
  delay(200);
  digitalWrite(BUZZER, HIGH);
  delay(200);
  digitalWrite(BUZZER, LOW);


    data2 = String((char*)readBlockData);
    data2.trim();
    Serial.println(data2);
    
    
}

void ReadDataFromBlock(int blockNum, byte readBlockData[]) 
{ 
  /* Prepare the ksy for authentication */
  /* All keys are set to FFFFFFFFFFFFh at chip delivery from the factory */
  for (byte i = 0; i < 6; i++)
  {
    key.keyByte[i] = 0xFF;
  }
  /* Authenticating the desired data block for Read access using Key A */
  status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, blockNum, &key, &(mfrc522.uid));

  if (status != MFRC522::STATUS_OK)
  {
     Serial.print("Authentication failed for Read: ");
     Serial.println(mfrc522.GetStatusCodeName(status));
     return;
  }
  else
  {
    Serial.println("Authentication success");
  }

  /* Reading data from the Block */
  status = mfrc522.MIFARE_Read(blockNum, readBlockData, &bufferLen);
  if (status != MFRC522::STATUS_OK)
  {
    Serial.print("Reading failed: ");
    Serial.println(mfrc522.GetStatusCodeName(status));
    return;
  }
  else
  {
    Serial.println("Block was read successfully");  
  }
}
```

## Attendance
```c
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

// Replace with your network credentials
const char* ssid = "Something";
const char* password = "something";


const String serverUrl = "http://iot.robify.in/attendance";

// Define your userId variable
String userId = "eoxhts6v";

void setup() {
  // Start the Serial communication to send messages to the computer
  Serial.begin(115200);
  delay(10);

  // Connect to Wi-Fi network
  WiFi.begin(ssid, password);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println();
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  // Making the POST request
  if (WiFi.status() == WL_CONNECTED) {
    HTTPClient http;  // Object of class HTTPClient
    WiFiClient client;
    http.begin(client, serverUrl);  // Specify request destination
    http.addHeader("Content-Type", "application/json");  // Specify content-type header

    String postData = "{\"userId\":\"" + userId + "\"}";

    int httpResponseCode = http.POST(postData);  // Send the request

    if (httpResponseCode > 0) {
      String response = http.getString();  // Get the response payload
      Serial.println("HTTP Response code: " + String(httpResponseCode));  // Print response code
      Serial.println("Response: " + response);  // Print response payload
    } else {
      Serial.println("Error on sending POST: " + String(httpResponseCode));
    }

    http.end();  // Free resources
  } else {
    Serial.println("Error in WiFi connection");
  }
}

void loop() {
  // Do nothing in the loop
}
```

## RFID Attendance
```c
#include <SPI.h>
#include <MFRC522.h>
#include <Arduino.h>
#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

const char* ssid = "Something";
const char* password = "something";

const String serverUrl = "http://iot.robify.in/attendance";

#define RST_PIN  D3     // Configurable, see typical pin layout above
#define SS_PIN   D4     // Configurable, see typical pin layout above
#define BUZZER   D2     // Configurable, see typical pin layout above

const String userId = "eoxhts6v"; 

MFRC522 mfrc522(SS_PIN, RST_PIN);  // Instance of the class
MFRC522::MIFARE_Key key;  
MFRC522::StatusCode status;      

/* Be aware of Sector Trailer Blocks */
int blockNum = 2;  

/* Create another array to read data from Block */
/* Legthn of buffer should be 2 Bytes more than the size of Block (16 Bytes) */
byte bufferLen = 18;
byte readBlockData[18];
String data2;

void setup() 
{
  /* Initialize serial communications with the PC */
  Serial.begin(9600);

  WiFi.begin(ssid, password);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }


  Serial.println();
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());


  Serial.println();
  Serial.println();
  Serial.println();

  for (uint8_t t = 4; t > 0; t--) {
    Serial.printf("[SETUP] WAIT %d...\n", t);
    Serial.flush();
    delay(1000);
  }

  /* Set BUZZER as OUTPUT */
  pinMode(BUZZER, OUTPUT);
  /* Initialize SPI bus */
  SPI.begin();
}

void loop()
{
  /* Initialize MFRC522 Module */
  mfrc522.PCD_Init();
  /* Look for new cards */
  /* Reset the loop if no new card is present on RC522 Reader */
  if ( ! mfrc522.PICC_IsNewCardPresent())
  {
    return;
  }
  /* Select one of the cards */
  if ( ! mfrc522.PICC_ReadCardSerial()) 
  {
    return;
  }
  /* Read data from the same block */
  Serial.println();
  Serial.println(F("Reading last data from RFID..."));
  ReadDataFromBlock(blockNum, readBlockData);
  /* If you want to print the full memory dump, uncomment the next line */
  //mfrc522.PICC_DumpToSerial(&(mfrc522.uid));
  
  /* Print the data read from block */
  Serial.println();
  Serial.print(F("Last data in RFID:"));
  Serial.print(blockNum);
  Serial.print(F(" --> "));
  for (int j=0 ; j<16 ; j++)
  {
    Serial.write(readBlockData[j]);
  }
  Serial.println();
  digitalWrite(BUZZER, HIGH);
  delay(200);
  digitalWrite(BUZZER, LOW);
  delay(200);
  digitalWrite(BUZZER, HIGH);
  delay(200);
  digitalWrite(BUZZER, LOW);


    data2 = String((char*)readBlockData);
    data2.trim();
    Serial.println(data2);
    
  if(data2 == userId){
    Serial.println("True");
    if (WiFi.status() == WL_CONNECTED) {
      HTTPClient http;  // Object of class HTTPClient
      WiFiClient client;
      http.begin(client, serverUrl);  // Specify request destination
      http.addHeader("Content-Type", "application/json");  // Specify content-type header

      String postData = "{\"userId\":\"" + userId + "\"}";

      int httpResponseCode = http.POST(postData);  // Send the request

      if (httpResponseCode > 0) {
        String response = http.getString();  // Get the response payload
        Serial.println("HTTP Response code: " + String(httpResponseCode));  // Print response code
        Serial.println("Response: " + response);  // Print response payload
      } else {
        Serial.println("Error on sending POST: " + String(httpResponseCode));
      }

      http.end();  // Free resources
    } else {
      Serial.println("Error in WiFi connection");
    }

  }
    
}

void ReadDataFromBlock(int blockNum, byte readBlockData[]) 
{ 
  /* Prepare the ksy for authentication */
  /* All keys are set to FFFFFFFFFFFFh at chip delivery from the factory */
  for (byte i = 0; i < 6; i++)
  {
    key.keyByte[i] = 0xFF;
  }
  /* Authenticating the desired data block for Read access using Key A */
  status = mfrc522.PCD_Authenticate(MFRC522::PICC_CMD_MF_AUTH_KEY_A, blockNum, &key, &(mfrc522.uid));

  if (status != MFRC522::STATUS_OK)
  {
     Serial.print("Authentication failed for Read: ");
     Serial.println(mfrc522.GetStatusCodeName(status));
     return;
  }
  else
  {
    Serial.println("Authentication success");
  }

  /* Reading data from the Block */
  status = mfrc522.MIFARE_Read(blockNum, readBlockData, &bufferLen);
  if (status != MFRC522::STATUS_OK)
  {
    Serial.print("Reading failed: ");
    Serial.println(mfrc522.GetStatusCodeName(status));
    return;
  }
  else
  {
    Serial.println("Block was read successfully");  
  }
}
```

## Product Desiging

- Empathising
- Defining the problem
- Brainstorming

# DAY 4

## Using Blynk Console to interface LED
```c
#define BLYNK_TEMPLATE_ID "TMPL3Ji91Ro61"
#define BLYNK_TEMPLATE_NAME "ledBlink"
#define BLYNK_AUTH_TOKEN "5ra8SaF9RG5j5uXGmh56wAB8OhIuFovm"

#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>  
#include <BlynkSimpleEsp8266.h>
 

char auth[] = BLYNK_AUTH_TOKEN;
char ssid[] = "Something";  // Enter your Wifi Username
char pass[] = "something";  // Enter your Wifi password

int ledpin = D4;
void setup()
{     

  Serial.begin(115200);

  WiFi.begin(ssid, pass); 
  while(WiFi.status() != WL_CONNECTED) { 
    Serial.print("..");
    delay(200);
  }
    Serial.println();
    Serial.println("NodeMCU is Connected!"); 
    Serial.println(WiFi.localIP()); 

  Blynk.begin(auth, ssid, pass);    
  pinMode(ledpin,OUTPUT);
}

void loop()
{
  Blynk.run(); 
}
```

## Gas Sensor (MQ135)
```c
#define BLYNK_TEMPLATE_ID "TMPL3Vh8rCpSd"
#define BLYNK_TEMPLATE_NAME "Gas Sensor"
#define BLYNK_AUTH_TOKEN "JuPF3O7XAtEF1Mnf759ZnPSuB5_5Lapb"

#define BLYNK_PRINT Serial
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>

 
char auth[] = BLYNK_AUTH_TOKEN;

char ssid[] = "Something";  // type your wifi name
char pass[] = "something";  // type your wifi password
int smokeA0 = A0;
int data = 0;
int sensorThres = 100;


BlynkTimer timer;

void sendSensor(){
 
 int data = analogRead(smokeA0);
 Blynk.virtualWrite(V0, data);
  Serial.print("Pin A0: ");
  Serial.println(data);


  if(data > 360){
    // Blynk.email("aditya23043@iiitd.ac..com", "Alert", "Gas Leakage Detected!");
    Blynk.logEvent("GAS","Gas Leakage Detected");
  }
}

void setup(){
  pinMode(smokeA0, INPUT);
   Serial.begin(115200);
  Blynk.begin(auth, ssid, pass);
  //dht.begin();
  timer.setInterval(2500L, sendSensor);
}

void loop(){
  Blynk.run();
  timer.run();
}
```

# DAY 6 (EDA)
- EDA: Electronic Design Automation
- The methodologies and technologies used to verify and analyse

## 1st session : EDA

### Types of EDA Tools
1. Cloud based
2. AI/ML based
3. Open Sourced

### Advantage
- Error free circuit
- Cost saving by preventing errors in fabrication by remove them at the designing stage
- Reduce manual effort
- Increases productivity
- Design optimization algorithms can be implemented to get more efficient designs
- Design reuse and modularity
- Cost and time savings

### Tests
1. Timing Analysis
    - If our chip is able to run at a particular frequency
2. Physical design rules
    - Design rule check : if any metal plate is shorted or not
    - Electrical rule check : any unconnected pin or lack of power supply
    - Layout vs Schematic check : matching functionality or not

### Advantages of Simulation
- We can try new ideas since this is not the final step i.e. fabrication
- Early design verification
- Run circuit under challenging conditions

### Tools for Schematic Editing and Simulation
- Eagle
- Spice

## 2nd session :

### Ohm's Law
- J = Sigma * E
- J is current density
- Sigma is conductivity of a material
- E is electric field

### MOSFETs
- Metal Oxide Substrate Field Effect Transistor
- When voltage is applied to the gate, an electrical field is generated that changes the width of the channel region, where the electrons flow. The wider the channel region, the better conductivity of a device will be.
- 4 terminal device

### Amplifier
- Increases power / gain in the input signal

### Inverter
- According to Electrical Engineers, inverters convert AC to DC signal
- For us, it is basically a `NOT` gate 

### SPICE
- Simulation program with integrated circuit emphasis
- Not a software
- Kind of a language / syntax / script / protocol

### Verilog
- Verilog is a (HDL) Hardware Description Language; a textual format for describing electronic circuits and systems. Applied to electronic design
- One abstraction layer below gui circuit drawing tools
- What is the need for SPICE if verilog exists?
    - For doing time analysis
    - Design rules checking
    - Electrical Rules checking
    - Etc..

### Importance of SPICE Netlist
- Netlist is a textual representation of a circuit
- SPICE / Netlisting is very useful for VLSI Industries for scripting using bash / fish / python / perl
- Ensures correctness
- Easier debugging
- Easy for complex measurements
- Scripting >>>> GUI

### Spice Synax
- Case insensitive
- Resistor : R or r
    - eg: R\<name\> \<port1\> \<port2\> \<resitance_value\>
- Capacitor : C or c
    - eg: C\<name\> \<port1\> \<port2\> \<resitance_value\>
- DC Voltage : V or v
- Mosfet : M or m
- All SPICE commands start with a period "."
- .tran : transient simulation
    - \<TPrint\> \<Tstop\> \<Tstart\> \<Tmaxstep\>
- .dc : DC sweep simulation
- .op : finding DC Operating point
- .ac : AC analysis
- .param : define and use a parameter (like a variable)
    - Syntax : .param \<param_name\> \<value\>
- .meas : specify a measurement
- .end : compulsory to placed at the end of a netlist
- .subckt : define a circuit module and call / instantiate in a bigger circuit (like a function)
- .lib : include a model library containing all different models
- .model : to link default model types with use-specified mnames
    - Default model types
        - NPN / PNP : BIT Models
        - NMOS / PMOS : MOFSET Models
    - These models can be defined with different params and can be called multiple times with diff names

#### Something
- Click
- Leave
- Move
- Place

- In DC we have
    - Operating point : .op
    - sweep : .dc
    - observe the Stable static constant current and voltage

#### Voltage divider
- Vout = Vin * ( R1 / (R1 + R2) )

## Hands on Session
    
### Voltage Divider Circuit
- R1 = R2 = 10k Ohm
- V1 = 5 * sin * ( 2pi * 1000 ) : Transient
- V1 = 1V to 10V with steps of 0.1V
- in A * sin(wt) where w = 2 * pi * f,
    - A is amplitude
    - w is angular frequency : rad / s
    - so, frequency f in our case for voltage is 1000
    - so, first cut at x axis is 0.5ms because total time for one wave = 1/f = 1/1000
    - but the first cut appears at half point
- In DC Sweep, we dont have time on the x axis, we have voltage V1 at the x axis i.e. the thing we "sweeped"

# DAY 7

## Introduction to Test and Measurement instruments for Electronic System Design
1. Verification
    - Ensuring reliability
    - Functionality
2. Validation
    - operates as intended under various conditions
3. Diagnosis
    - Debugging
    - Troubleshooting

### Types of T&M Instruments
- Oscilloscopes
- Signal Generators
- Spectrum Analyzers
- Digital Multimeters
- Logic Analyzers
- Power Supplies

> They are either Time Domain or Frequency Domain instruments

### Oscilloscope
- f(t) = A * sin(2pi*f*t + theta) + Const
    - A : amplitude
    - f : freq
    - theta : phase
    - Const : DC Offset

- Types of Oscilloscopes
    - Benchtop
    - USB
    - Handhelp
    - Analog
    - Digital
        - DSO : Digital Signal Oscilloscope
        - DPO : Digital Phosphor Oscilloscope
        - MSO : Mixed Signal Oscilloscope
        - MDO : Mixed Domain Oscilloscope
        - DSO : Digital Sampling Oscilloscope
        - RTO : Real Time Oscilloscope

- DSO BLOCK DIAGRAM

|           | Digital | Storage                         | Oscilloscope |
|-----------|---------|---------------------------------|--------------|
| Signal -> | ADC     | Storage and Processing (Memory) | Display      |

# Day 9 (BERGER Associates)
