# Docker container for Multicorn

Docker container for multicorn based on Postgres 10.8 container.

to build the container run:
`docker build -t medisharemulticorn .`

after building you can simply run this command to start the container
`sh start.sh`

remember you may have to make the file runnable by running this command:
`chmod u+x start.sh`

Python libraries in `/src` will be installed.

See examples for more info.
