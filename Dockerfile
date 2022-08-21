FROM jekyll/jekyll:3.8
ADD . /srv/jekyll
ENTRYPOINT [ "jekyll", "serve", "-P $PORT", "--no-watch", "--host 0.0.0.0" ]