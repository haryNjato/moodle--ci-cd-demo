FROM moodlehq/moodle-php-apache:8.2

USER root

# donner la permission d’écriture
RUN chmod -R 777 /usr/local/etc/php/conf.d

USER www-data
