FROM ruby:3.2.0
WORKDIR /backend
RUN set -eux && \
    apt-get update -qq && \
    apt-get install -y \
      postgresql-client


COPY Gemfile Gemfile.lock* /backend/

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

ENV TZ=Asia/Tokyo

# イメージ実行時に起動させる主プロセスを設定
CMD ["rails", "server", "-p", "8080", "-b", "0.0.0.0"]
