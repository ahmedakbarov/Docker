from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World! Hey My name is Ahmed'
    @app.route("/")
def index():
    return render_template("index.html")
