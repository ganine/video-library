# Video Library

A simple video library app made with Rails and React.

## Setup

### Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Installation

```shell
docker-compose up
docker-compose run api rake db:create
docker-compose run api rake db:migrate
docker-compose run api rake db:migrate RAILS_ENV=test
```

## TODO
- [x] analyze and plan
- [x] setup dev environment
- [x] bootstrap Rails API
- [ ] create category resource
- [ ] create video resource
- [ ] generate React app
- [ ] create video upload page
- [ ] create video list page
