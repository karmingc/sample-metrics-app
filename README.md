# Start


```sh
# Install bundler
gem install bundler

# Install gems
bundle install

# Run Rails app
bin/rails server

```

# SQS

```sh
# Configure AWS: https://github.com/ruby-shoryuken/shoryuken/wiki/Configure-the-AWS-Client

# Create the SQS queue
bundle exec shoryuken sqs create hello

# Run shoryuken
MODE=sqs_workers \
bundle exec shoryuken -R -C config/shoryuken.yml -r ./app/workers
```
