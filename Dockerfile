FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.0

RUN gem install basepath --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["basepath-init"]
CMD ["--help"]
