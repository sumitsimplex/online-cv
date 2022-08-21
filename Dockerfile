FROM jekyll/jekyll:3.8
ADD . /srv/jekyll
CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "80" ]