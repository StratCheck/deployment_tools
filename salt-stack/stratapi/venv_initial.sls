include:
  - nginx

/var/www/stratapi/stratapi/venv:
  virtualenv.managed:
    - system_site_packages: False
    - distribute: True
    - runas: stratapiapp
    - requirements: /var/www/stratapi/stratapi/requirements/base.txt
    - no_chown: True
    - require:
      - pkg: python-virtualenv
      - pkg: python-dev
      - pkg: libblas3
      - pkg: libblas-dev
      - pkg: liblapack3
      - pkg: liblapack-dev
      - pkg: libatlas-base-dev
      - pkg: gfortran
      - pkg: pkg-config
      - pkg: libfreetype6
      - pkg: libfreetype6-dev
      - pkg: libpng12-0
      - pkg: libpng12-dev
