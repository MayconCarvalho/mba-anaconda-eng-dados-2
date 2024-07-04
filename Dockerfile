FROM continuumio/anaconda3:latest as build

WORKDIR /app
COPY . .
RUN conda install jupyter -y --quiet
EXPOSE 8888

CMD [ "jupyter", "notebook", "--notebook-dir=/app", "--ip='*'", "--port=8888", "--no-browser", "--allow-root" ]
