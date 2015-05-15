include:
  - uwsgi

stratapi-uwsgi:
  file.managed:
    - name: /etc/uwsgi/apps-available/stratapi.ini
    - source: salt://stratapi/uwsgi.ini
    - template: jinja
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - pip: uwsgi

enable-stratapi-app:
  file.symlink:
    - name: /etc/uwsgi/apps-enabled/stratapi.ini
    - target: /etc/uwsgi/apps-available/stratapi.ini
    - force: False
    - require:
      - file: stratapi-uwsgi
      - file: /etc/uwsgi/apps-enabled
      - file: stratapi-sock

stratapi-sock:
  file.managed:
    - name: /var/sockets/stratapi.sock
    - user: www-data
    - group: www-data
    - mode: 666
    - require:
      - pip: uwsgi

