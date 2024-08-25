FROM python

WORKDIR ./

COPY . .

RUN pip install Flask

CMD ["python3","mypythonserv.py"]

EXPOSE 5000