# RailsApiWithPostgreSQL


# 起動方法

```
UID_GID="$(id -u):$(id -g)" docker-compose up --build
```

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: rails_db
```

```
docker-compose up
```

操作
```
docker exec -it rails-api /bin/bash
rails dbconsole
```
