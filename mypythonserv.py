import os
from flask import Flask


app = Flask(__name__)


@app.route('/')
def mainpage():
	return "Hello from my python server"

if(__name__=='__main__'):
	app.run(host='0.0.0.0',port=5000, debug=True)
