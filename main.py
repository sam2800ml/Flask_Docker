import os 
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Hello World"

@app.route("/HowareYou")
def Hello():
    return "I am fine, thank you for asking"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
