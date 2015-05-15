stratapi-newrelic:
  file.managed:
    - name: /var/www/stratapi/newrelic.ini
    - source: salt://stratapi/newrelic.ini
    - template: jinja
    - user: stratapiapp
    - group: webapps
    - mode: 755
