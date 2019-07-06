# FLASK SERVER

# image to start from. we choose one with python 3.6
FROM python:3.6

# change working directory to not root
WORKDIR /app

# copy the file with our dependencies to our container
COPY requirements.txt ./

# install the dependencies without caching
RUN pip install --no-cache-dir -r requirements.txt

# copy our flask file to our container
COPY app.py ./

# expose the port at which we'll run our app
EXPOSE 8080

# sleep to wait for sql server to boot (lol) then run our app
CMD sleep 5; python app.py
