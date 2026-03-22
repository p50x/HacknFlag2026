from flask import Flask, request, jsonify
import subprocess

app = Flask(__name__)

@app.route("/")
def index():
    return send_from_directory(BASE_DIR, "index.html")

@app.route("/backup")
def get_handler():
    mode = request.args.get("mode", "100")  # /get?mode=1|2|3

    # Appel du script vulnérable
    # Pas besoin de shell=True, on passe par stdin proprement
    result = subprocess.run(
        ["/opt/script.sh", mode],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT
    )

    # On renvoie directement la sortie CGI (avec headers déjà inclus dans script)
    return result.stdout, 200, {"Content-Type": "text/plain"}

