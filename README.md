# AWS CLI Docker Image

_This is only the docker image for the aws cli.
This has no connection with the development of the aws cli._

For info on the cli command and options see [docs.aws.amazon.com/cli/latest/userguide/cli-chap-using.html](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-using.html)

## Usage

The `ENTRYPOINT` for the image is the aws cli.

Without passing any commands it will run `--help` by default.

So `docker run gruen/awscli` is the same as `docker run gruen/awscli --help`

The `/home/aws/.aws` volume is set to add your credentials.

The simplest way to run would be something like the following:

```
docker run -it --rm \
  -v "${HOME}/.aws:/home/aws/.aws" \
  --name funky_fresh_name \
  gruen/awscli {COMMAND} [OPTIONS]
```
