FROM python:3.7.1-stretch

CMD [ "--help" ]

ENTRYPOINT [ "/home/aws/.local/bin/aws" ]

RUN useradd -m aws

USER aws

ENV PATH=${PATH}:/home/aws/.local/bin

WORKDIR /home/aws

VOLUME [ "/home/aws/.aws" ]

RUN pip install awscli==1.16.51 --upgrade --user
