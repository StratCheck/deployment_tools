include:
  - nginx

stratapiapp:
  user.present:
    - home: /var/www/stratapi
    - require:
      - pkg: bash
      - pkg: nginx

webapps:
  group.present:
    - system: True
    - addusers:
      - stratapiapp
