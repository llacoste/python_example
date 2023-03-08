# Python Example

Simple Python Flask app for the sake of demonstrating CI/CD with Jenkins. Shamelessly stolen from:

The basic blog app built in the Flask `tutorial`_.

.. _tutorial: https://flask.palletsprojects.com/tutorial/

## Docker

### Build

```bash
docker build -t python_example:latest .
```

### Run

#### Interactive

```bash
docker run -it python_example:latest /bin/bash
```

#### Interactive with code mounted (for development)

```bash
docker run -it -v $(pwd):/opt/app python_example:latest /bin/bash
```

#### Non Interactive

```bash
docker run python_example:latest 
```

## Local

### Install

Install Flaskr

```bash
pip install -e .
```

### Run

```bash
flask --app flaskr init-db
flask --app flaskr run --debug
```

Open http://127.0.0.1:5000 in a browser.


## Test

### Docker

```bash
docker run python_example:latest pytest
```

### Local

```bash
pytest
```

Run with coverage report::

```bash
coverage run -m pytest
coverage report
coverage html  # open htmlcov/index.html in a browser
```
