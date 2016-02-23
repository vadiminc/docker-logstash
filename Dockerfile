FROM frodenas/java7
MAINTAINER Ferran Rodenas <frodenas@gmail.com>

# Install Logstash 2.0.0
RUN cd /tmp && \
    wget http://download.elastic.co/logstash/logstash/logstash-2.0.0.tar.gz && \
    tar xvzf logstash-2.0.0.tar.gz && \
    mv /tmp/logstash-2.0.0 /logstash && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add scripts
ADD scripts /scripts
RUN chmod +x /scripts/*.sh

# Expose listen ports
EXPOSE 514
EXPOSE 8080
EXPOSE 9292
EXPOSE 9200
EXPOSE 9300

# Command to run
ENTRYPOINT ["/scripts/run.sh"]
#ENTRYPOINT /logstash/bin/logstash agent -e '$INPUT_CONFIG $OUTPUT_CONFIG'

CMD ["bash"]
