FROM mongo
MAINTAINER Kliptonize <koen@ebro.me>

# Copy dump files
COPY containers/wildcards-api/mongodump/wildcards /home/wildcards

# Execute mongo restore
COPY mongo/restore.sh /home/restore.sh
RUN chmod 777 /home/restore.sh

CMD /home/restore.sh