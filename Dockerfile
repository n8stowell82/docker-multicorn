FROM postgres:10.8

RUN apt-get update && apt-get install -y build-essential python-dev python-pip postgresql-server-dev-10
RUN apt-get clean
RUN pip install pgxnclient
RUN pgxn install multicorn

RUN apt-get install -y wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1
ENV PYTHONPATH /usr/local/lib/python2.7/dist-packages/multicorn-1.3.5-py2.7-linux-x86_64.egg:$PYTHONPATH
VOLUME /src

COPY docker-entrypoint.sh /
RUN chmod a+x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
