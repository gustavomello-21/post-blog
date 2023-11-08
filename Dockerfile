# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Copy Gemfile and Gemfile.lock into the container at /app
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Install all the dependencies for the application
RUN bundle install
# Make port 80 available to the world outside this container
EXPOSE 3000

# Start rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
