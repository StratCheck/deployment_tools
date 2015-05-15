base:
  '*':
    - core
    - edit
    - git
  'SCDEV':
    - stratapi.requirements
    - stratapi.users
    - stratapi.project
    - stratapi.nginx
    - stratapi.venv_initial
    - stratapi.venv_final
    - stratapi.uwsgi
    - stratapi.newrelic
    - virtualenv
    - hdf5
    - jenkins
    - jenkins.nginx
