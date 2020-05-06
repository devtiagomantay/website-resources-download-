from bottle import route, run, template
import requests
import measurement


URLS = ['https://www.python.org', 'https://www.google.com']

@route('/')
def index():
    measures = measurement.run_test(URLS)
    return template('index', measures=measures)


run(host='localhost', port=8080)
