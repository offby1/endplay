# syntax=docker/dockerfile:1-labs
FROM python:3.9

RUN apt -y update
RUN apt -y install python3-poetry

ENV PYTHONUNBUFFERED=t

COPY --parents build_ext.py CMakeLists.txt CREDITS docs examples howto libs LICENCE Makefile MANIFEST.in poetry.lock pyproject.toml README.md scripts src template tests /endplay/

WORKDIR /endplay

RUN ["poetry", "install"]
