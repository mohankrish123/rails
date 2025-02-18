# RAILS APPLICATION PLAYGROUND
This spins up a rails application which interacts with Postgres and Redis.

## Pre-requisites to install rails v7.1.2
Nodejs v16 \
Yarn v1.22.21 \
Ruby v3.1.2

## Useful rails commands
### How to create a rails project?
```
rails new < project_name >
```
### How to start the rails application?
```
rails server
```
### How to use the rails console?
```
rails c 
```

# Docker Stack
This stack spins up three containers:
- Ruby
- Postgres
- Redis

### Command to spin up the stack
```
docker-compose build
```
```
docker-compose up -d
```