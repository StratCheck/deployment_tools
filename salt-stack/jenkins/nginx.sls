include:
  - nginx

jenkins-nginx-conf:
  file.managed:
    - name: /etc/nginx/sites-available/jenkins.conf
    - source: salt://jenkins/nginx.conf
    - template: jinja
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - pkg: nginx

# Symlink and thus enable the virtual host
jenkins-enable-nginx:
  file.symlink:
    - name: /etc/nginx/sites-enabled/jenkins.conf
    - target: /etc/nginx/sites-available/jenkins.conf
    - force: false
    - require:
      - file: jenkins-nginx-conf
