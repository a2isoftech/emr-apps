# emr_networking example app

This is a demo app to allow the emr_networking library to be tested.

## Getting Started

The app calls a primary and secondary server to fetch data to display. There's an example websocket & HTTP server in the `bin` folder which will:
- output a timestamp every second to a connected websocket client
- Display "Hello HTTP world!" when an HTTP GET is made e.g. `/hello`

To run the server from a command line:
```
dart run bin/test_socket_server.dart 4000
```
You will need to start another instance in another Terminal window to try failover:
```
dart run bin/test_socket_server.dart 5000
```

Your app will need to be on the same network as this server. Modify `lib/main.dart` and make sure your server addresses are correct:
```
const primaryServerAddressAndPort = "localhost:4000";
const secondaryServerAddressAndPort = "localhost:5000";
```
It's also possible to  use ngrok to provide a cloud route to your local server to test scenarios where WiFi is lost and a device falls back to mobile data:
```
ngrok http 4000
```
