FROM docker.elastic.co/kibana/kibana-oss:7.4.0
RUN cd /bin && kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-7.4.0-0.1.31.zip
RUN sed -i "s/height:\ 4em/height:\ 3em/g" /usr/share/kibana/plugins/logtrail/public/css/main.css
