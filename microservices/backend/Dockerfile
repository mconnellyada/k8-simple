# use the alpine python image as the base docker image
FROM python:alpine3.18

# set the working directory to app
WORKDIR /app

# install the requirements
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy the app data into the docker image
COPY . .

EXPOSE 3000

# launch the flask api server
CMD [ "python", "main.py"]