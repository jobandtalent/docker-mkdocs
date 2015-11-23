FROM python
MAINTAINER Álex González <alex.gonzalez@jobandtalent.com>

RUN pip install mkdocs

WORKDIR /docs

ENTRYPOINT ["mkdocs"]
