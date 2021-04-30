FROM python:2.7

LABEL author="Marc Bayón Benegas"
LABEL mail="mb154@hotmail.com"

# Update Os & install postgres client
RUN apt-get update
RUN apt-get install postgresql postgresql-contrib -y

# Install pip dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy notejam files
COPY notejam/ notejam/
COPY init.sh notejam/

# Database and init server script
RUN chmod +x notejam/init.sh

# Set workdir
WORKDIR /notejam
