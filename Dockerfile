FROM mhart/alpine-node

RUN npm install api-spec-converter

COPY ./entrypoint.sh /
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
