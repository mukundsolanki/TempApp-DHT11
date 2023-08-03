from flask import Flask, jsonify
import Adafruit_DHT
import time

app = Flask(__name__)

DHT_SENSOR = Adafruit_DHT.DHT11
DHT_PIN = 4

@app.route('/sensor_data', methods=['GET'])
def get_sensor_data():
    humidity, temperature = Adafruit_DHT.read(DHT_SENSOR, DHT_PIN)
    if humidity is not None and temperature is not None:
        data = {
            'temperature': temperature,
            'humidity': humidity
        }
        return jsonify(data)
    else:
        return jsonify({'error': 'Sensor failure. Check wiring.'}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
