FROM jekyll/jekyll:3.8
COPY . /srv/jekyll
RUN bundle install
CMD [ "bundle", "exec", "jekyll", "serve", "--no-watch", "--host", "0.0.0.0" ]
#CMD [ "sh", "-c", "jekyll serve -P $PORT --no-watch --host 0.0.0.0" ]
