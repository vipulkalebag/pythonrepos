FROM python

WORKDIR ./

COPY . .

RUN pip install Flask

CMD ["python3","mypythonserver.py"]

EXPOSE 5000