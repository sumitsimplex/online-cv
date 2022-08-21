FROM jekyll/jekyll:3.8
COPY . /srv/jekyll
RUN bundle install
CMD [ "bundle", "exec", "jekyll", "serve", "-P", "80", "--no-watch", "--host", "0.0.0.0" ]