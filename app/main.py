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

@app.route('/', defaults={'u_path': ''})
@app.route('/<path:u_path>')
def catch_all(u_path):
    print(repr(u_path))
    return 'Sorry this page doesnt not exist 404'



