from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello there'

@app.route('/table1')
def getFistTable():
    return 'FIXME'

@app.route('/table2')
def getSecondTable():
    return 'FIXME'