from flask import Flask, render_template, jsonify, request

app = Flask(__name__)

# 기본 요청이 오면 index.html 파일을 출력
@app.route("/")
def home():
    return render_template("index.html")

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000, debug=True)