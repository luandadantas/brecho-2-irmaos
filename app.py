import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def brecho_2_irmaos():
    return f'''
    <body style="background-color: #fef4e6; 
                 display: flex; 
                 justify-content: center; 
                 align-items: center; 
                 height: 100vh; 
                 margin: 0; 
                 text-align: center; 
                 font-family: Arial, sans-serif;">
        <div>
            <h1 style="font-size: 4em; margin: 0;">Brechó 2 Irmãos</h1>
            <hr style="width: 300px; border: 3px solid #f4a460;">
            <img src="https://raw.githubusercontent.com/luandadantas/brecho-2-irmaos/refs/heads/main/photo-b2i.jpeg" 
                 alt="Brechó 2 Irmãos" 
                 style="width: 400px; height: auto; margin-top: 20px; border-radius: 10px;">
        </div>
    </body>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)