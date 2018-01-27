import json
from os import path, remove

ABS_PATH = path.dirname(path.abspath(__file__))
DB_FILE = path.join(ABS_PATH, 'data.json')

APPFILTER_FILE = path.join(ABS_PATH, 'xml/appfilter.xml')

# Remove the existing appfilter.xml file
if path.exists(APPFILTER_FILE):
    remove(APPFILTER_FILE)

# Read the database
with open(DB_FILE, 'r') as db_obj:
    try:
        data = json.load(db_obj)
    except ValueError:
        print("Invalid JSON database file")
        exit(0)
