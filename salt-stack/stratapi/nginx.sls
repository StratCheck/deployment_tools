include:
  - nginx

stratapi-nginx-conf:
  file.managed:
    - name: /etc/nginx/sites-available/stratapi.conf
    - source: salt://stratapi/nginx.conf
    - template: jinja
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - pkg: nginx

# Symlink and thus enable the virtual host
stratapi-enable-nginx:
  file.symlink:
    - name: /etc/nginx/sites-enabled/stratapi.conf
    - target: /etc/nginx/sites-available/stratapi.conf
    - force: false
    - require:
      - file: stratapi-nginx-conf
