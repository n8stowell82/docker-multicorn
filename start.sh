docker run --rm \
-e POSTGRES_PASSWORD=multicornlocal \
-e POSTGRES_USER=medishare \
-e POSTGRES_DB=msaggregatelocal \
-p 5432:5432 \
-v $HOME/docker/volumes/medishareMulticorn:/var/lib/postgresql/data \
--name msmulticornlocal medisharemulticorn