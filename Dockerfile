FROM ruby:2.3

RUN gem install backup

VOLUME ["/root/backups"]

ADD	docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]

CMD	["backup", "check"]