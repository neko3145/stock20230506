from flask import Flask, render_template

app = Flask(__name__, template_folder='Templates')
@app.route("/")
def hello():
    return "Hello, World!"

@app.route("/home")
def home():
    return render_template('index.html')
    