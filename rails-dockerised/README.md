# Docker Stack
This stack spins up three containers:
- Ruby
- Postgres
- Redis

### Pre-requisites
1. Clone the repository and shift to [rails-dockerised folder](../rails-dockerised/)
2. Create the `.env` file for local testing with the below envs
```
AWS_ACCESS_KEY_ID=<aws access key>
AWS_SECRET_ACCESS_KEY=<aws secret key>
AWS_SESSION_TOKEN=<aws session token>
AWS_REGION=<aws region>
DB_HOST=<db host>
DB_USERNAME=<db username>
DB_DATABASE=<db name>
RAILS_ENV=<rails env>
```
### Command to spin up the stack
```
docker-compose build
```
```
docker-compose up -d
```