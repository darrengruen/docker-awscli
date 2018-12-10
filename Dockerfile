FROM python:3.7.1-stretch

CMD [ "--help" ]

ENTRYPOINT [ "/home/aws/.local/bin/aws" ]

RUN useradd -m aws

USER aws

ENV PATH=${PATH}:/home/aws/.local/bin

WORKDIR /home/aws/app

VOLUME [ "/home/aws/.aws", "/home/aws/app" ]

RUN pip install awscli==1.16.51 --upgrade --user

ARG spec="org.opencontainers.image"
ARG BRANCH_NAME
ARG BUILD_DATE
ARG COMMIT_SHA

LABEL ${spec}.created=${BUILD_DATE}
LABEL ${spec}.documenation="https://github.com/darrengruen/docker-awscli/README.md"
LABEL ${spec}.source="https://github.com/darrengruen/docker-awscli"
LABEL ${spec}.revision=${COMMIT_SHA}
LABEL ${spec}.version=${BRANCH_NAME}
LABEL ${spec}.title="AWS CLI Runtime"
LABEL ${spec}.description="Run AWS CLI in a docker container"

