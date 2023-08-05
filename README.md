# TempApp🌡️

TempApp is a temperature and humidity monitoring application that communicates with a DHT11 sensor connected to a Raspberry Pi.. The Raspberry Pi sends the data to a Flask backend server, and the Flutter application receives the data and displays it on the app.

# Release:

## You can find the latest release [HERE](https://github.com/mukundsolanki/TempApp-DHT11/releases/tag/v1.0.0)

- Real-time data
- Improved UI.
- Optimized data fetching.


### Prerequisites

- Flutter SDK installed on your machine.
- An Android or iOS device/emulator to run the app.

### Installation

1. Clone the repository from GitHub:

```bash
git clone https://github.com/yourusername/your-repo.git
```
2. Install the required dependencies:
```
flutter pub get
```

3. Make sure your Raspberry Pi with DHT11 sensor and Flask backend server are set up and running.

  - you can find the code for rasberry pi in `/DHT_SENSOR/DHTsensor.py`.

4. Locate the file `lib/main.dart` and IP Address with the IP address of your rasberrypi.

5. Connect your Android or iOS device or start an emulator.

6. Run you application:
```
flutter run
```

# Contribution:

Contributions are welcome! If you find any issues or want to enhance the app, feel free to create a pull request.

# License:

This project is licensed under the MIT License.
