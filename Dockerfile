
FROM python:3.8.7-alpine3.12

ENV PORT 8080
ENV TIMEZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone
EXPOSE 8080


WORKDIR /opt
ADD . /opt
RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "/opt/entrypoint.sh"]