FROM jekyll/jekyll:3.8
COPY . /srv/jekyll
RUN bundle install
ENV PORT=4000
EXPOSE $PORT
#CMD [ "bundle", "exec", "jekyll", "serve","--no-watch", "--host", "0.0.0.0" ]
#CMD ["bundle", "exec", "jekyll", "serve", "--force_polling", "-P", "$PORT"]
CMD [ "sh", "-c", "bundle exec jekyll serve -P ${PORT} --no-watch --host 0.0.0.0" ]
