FROM ruby:2.7.8-slim AS builder

RUN apt-get update -y \
 && apt-get install -y -q \
    build-essential \
    ca-certificates \
    postgresql-client \
    libpq-dev \
    vim \
    yarn \
    htop \
    git \
    nodejs \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY Gemfile* ./

RUN bundle install

FROM ruby:2.7.8-slim AS runner

RUN apt-get update -y \
 && apt-get install -y -q \
    build-essential \
    libpq-dev \
    postgresql-client \
    libcurl4 \
    yarn \
    nodejs \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir /sistema-ceub
WORKDIR /sistema-ceub

COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . .

EXPOSE 3000
ENV RAILS_ENV development

ENTRYPOINT ["sh", "./entrypoint.sh"]
