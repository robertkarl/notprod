import flask
import random

app = flask.Flask(__name__)

@app.route("/rand")
def rand():
    return str(random.randint(0, 2**32 - 1))

if __name__ == "__main__":
    app.run(host='0.0.0.0')
