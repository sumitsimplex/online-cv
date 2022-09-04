FROM jekyll/jekyll:3.8
COPY . /srv/jekyll
RUN bundle install
EXPOSE $PORT
#CMD [ "bundle", "exec", "jekyll", "serve","--no-watch", "--host", "0.0.0.0" ]
CMD ["jekyll", "serve", "--force_polling", "-P", '$PORT']
#CMD [ "sh", "-c", "jekyll serve -P $PORT --no-watch --host 0.0.0.0" ]
