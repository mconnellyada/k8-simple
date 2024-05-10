# get the latest cassandra image
FROM cassandra:latest

# set workdir to app
WORKDIR /app

# copy app data into docker iamge
COPY /app .

# make the entry point script executable
RUN chmod +x /app/entrypoint.sh

# Expose the Cassandra port
EXPOSE 9042

# set entry point script
ENTRYPOINT ["/app/entrypoint.sh"]