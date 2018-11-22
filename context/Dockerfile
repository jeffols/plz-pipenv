FROM continuumio/miniconda3

RUN conda install -y python=3.6
RUN pip install pipenv

# Setup environment
# Do Pipfile as a separate step so changing source
# without changing dependencies does not require pipenv sync
WORKDIR /opt/app
COPY ./app/Pipfile* /opt/app/
RUN pipenv sync

# Copy application source
COPY ./app /opt/app/
ENV PYTHONPATH=/opt/app/

ENTRYPOINT ["pipenv", "run", "--", "python", "src/sample.py"]
