#! We use Ruby image as per "Gemfile"
FROM ruby:3.3.1


#! Installing necessary packages for the app.
RUN apt-get update -qq && apt-get install -y \
   build-essential \
   libpq-dev \    
   nodejs \
   yarn

#! Set the working directory inside the container to `/app`.
WORKDIR /app


#! Copy the Gemfiles into the container.
COPY Gemfile Gemfile.lock /app/


#! Install the gem dependencies using Bundler.
RUN bundle install


#! Copy the entire application code (including `app` folder) to the working directory `/app`.
COPY . /app


#! Precompile assets for the Rails application in production mode.
#! This step is needed as our app uses Rails' asset pipeline.
RUN SECRET_KEY_BASE=dummy_secret_key RAILS_ENV=test bundle exec rake assets:precompile

#! Exposed port by default is 3000 for the Rails server.
EXPOSE 3000

CMD ["sh", "-c", "bin/rails db:migrate && rails server -b '0.0.0.0'"]

