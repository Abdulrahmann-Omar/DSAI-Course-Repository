from Flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/", methods = ["GET"])
def Home():
    if request.method == "GET":
        return render_template("INDEX1.html", num = 0)

if __name__ == "__main__":
    app.run(debug=True)