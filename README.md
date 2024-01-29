# README

This is a demo app to show an implementation of the [ruby-amazon-bedrock](https://github.com/AAlvAAro/ruby-amazon-bedrock) gem. Frontend is built with Tailwind CSS, Hotwire and Stimulus.

# Steps to run the app

1. Add ENV vars

You'll have to create an `config/application.yml` file with the following configurations in order for the generators to work:

```
AWS_REGION: 'region'
AWS_ACCESS_KEY_ID: 'key'
AWS_SECRET_ACCESS_KEY: 'access-key'
AWS_S3_BUCKET: 'bucket-name'
```

2. Initial setup

```ruby
bin/setup
```

3. Start the application

```ruby
bin/dev
```
