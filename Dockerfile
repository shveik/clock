FROM ruby:2.2.1
ADD /app /app
RUN cd /app && bundle install --system
EXPOSE 8080
CMD ["/app/clock.rb"]
