from flask import Flask
from cassandra.cluster import Cluster

app = Flask(__name__)

# connect to the cassandra cluster
cluster = Cluster(['192.168.1.166'])
session = cluster.connect('film')


# define the get function
@app.route("/get")
def get():
    # get the data from cassandra
    query = "SELECT * FROM movies;"
    rows = session.execute(query)

    # convert it into a dictionary

    # send that data back to the client
    return "Hello world"

if __name__ == '__main__':
    try:
        app.run(host='0.0.0.0', port=3000)
    finally:
        cluster.shutdown()