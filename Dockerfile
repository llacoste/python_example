# The base image
FROM python

# Where I want my instruction to be run
WORKDIR /opt/app

# Copy the contents of this directory into the container
COPY . .

# Install dependencies
RUN pip install --upgrade pip \
  pip install -e . 

# Default command for the comntainer to run if no other command is given
CMD flask --app flaskr init-db && flask --app flaskr run -h 0.0.0.0 --debug