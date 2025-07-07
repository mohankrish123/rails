# RDS IAM AUTHENTICATION FOR RAILS
Instead of using RDS username/password, IAM auth is secure. So, configure IAM authentication for RAILS.

## Steps to configure RDS IAM authentication for release environment
1. Add the libraries `pg-aws_rds_iam` to the Gemfile
2. Configure the `.env` file with the AWS access keys which facilitates the connection.
    ```
    AWS_ACCESS_KEY_ID=<aws access key>
    AWS_SECRET_ACCESS_KEY=<aws secret key>
    AWS_SESSION_TOKEN=<aws session token>
    AWS_REGION=ap-southeast-2
    ```
3. Configure the initiliaser as shown in [rds_iam_auth.rb](../rds_iam_auth.rb)
   - It creates a custom auth token generator, which facilitates token generation.
4. Add DB related envs to the `.env`
    ```
    DB_HOST=<db host>
    DB_USERNAME=<db username>
    DB_DATABASE=<db name>
    RAILS_ENV=<rails env>
    ```
5. Configure the release environment config in [database.yml](../database.yml)
    ```
    release:
    <<: *default
    database: <%= ENV.fetch("DB_DATABASE", "postgres") %> 
    username: <%= ENV.fetch("DB_USERNAME", "rails") %>
    password: <%= ENV.fetch("DB_PASSWORD", "rails") %>
    host: <%= ENV.fetch("DB_HOST", "postgres") %>
    sslmode: require
    aws_rds_iam_auth_token_generator: custom
    ```

## How to test
1. After configuring above steps, spin up the docker stack as described in the [README.md](../README.md#command-to-spin-up-the-stack)
2. Get inside the rails container and perform
    ```
    bundle exec rails c
    ```
3. Run the simple connection test by executing the command
    ```
    ActiveRecord::Base.connection.execute('SELECT 1')
    ```
4. Later, you can also verfiy if any DB session token is created and active.
    ```
    PG::AWS_RDS_IAM.auth_token_generators.fetch('custom')
    ```