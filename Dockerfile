FROM python:3.7

ENV DD_AGENT_HOST datadog-agent

WORKDIR /code

ADD . .

RUN pip install -r /code/requirements.txt

LABEL "com.datadoghq.ad.logs"='[{"source": "pythonapp", "service": "webapp"}]'

CMD ["python", "/code/run.py"]
