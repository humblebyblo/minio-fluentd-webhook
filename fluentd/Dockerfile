FROM fluent/fluentd:v1.16
USER root

# 패키지 의존성 설치
RUN apk --no-cache --update add \
    build-base \
    ruby-dev

RUN gem install elasticsearch -v 7.0.0
RUN gem install fluent-plugin-elasticsearch 

USER fluent

