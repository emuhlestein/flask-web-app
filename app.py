from flask import Flask
 

app = Flask(__name__)
 

@app.route('/')
def home():
    return "Hello, Flask with Docker!"

@app.route('/about')
def about():
    return "<p>The About page</p>"

@app.route('/name/<name>')
def name(name):
    return f'<h3>Hello {name}</h3>'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
