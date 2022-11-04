FROM python:3.10-alpine
WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

RUN set PYTHONPATH=.
COPY main.py /code

EXPOSE 20153
ENTRYPOINT ["uvicorn"]
CMD ["main:app", "--host", "0.0.0.0", "--port", "20153"]