import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def brecho_das_ladies():
    return f'''
    <body style="background-color: #f8e6f0; 
                 display: flex; 
                 justify-content: center; 
                 align-items: center; 
                 height: 100vh; 
                 margin: 0; 
                 text-align: center; 
                 font-family: Arial, sans-serif;">
        <div>
            <h1 style="font-size: 4em; margin: 0;">Nosso Brechó</h1>
            <h3 style="font-size: 2em; margin: 10px 0;">Um brechó que tem de TUDOOO!</h3>
            <hr style="width: 300px; border: 3px solid #d4a5c2;">
        </div>
    </body>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)