from flask import Flask
from flask import request
app = Flask(__name__)

@app.route("/")
def hello2():
    return "I am being creative"

@app.route("/create")
def route32a():
    return "This page is even more creative"

@app.route("/route")
def route():
    number=request.args.get('number')
    return "Hello from the {}".format(number)

@app.route("/cc")
def cc():
    return "Hello Cloud Computing, this is the most creative page"


if __name__ == "__main__":
    app.run(host='0.0.0.0',port='8080')
