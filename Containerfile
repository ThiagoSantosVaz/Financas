FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN financas create-db
RUN financas populate-db
RUN financas add-user -u admin -p admin
EXPOSE 5000
CMD ["financas", "run"]
