from flask import Flask
import socket

app = Flask(__name__)
VERSION = "1.0.0"

@app.route("/")
def index():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return f"IP Address: {ip_address}, Version: {VERSION}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
