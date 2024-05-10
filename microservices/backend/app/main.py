from flask import Flask

app = Flask(__name__)

# define the get function
@app.route("/get")
def get():
    return "Hello world"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)