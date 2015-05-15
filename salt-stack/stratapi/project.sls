/var/www/stratapi:
  file.directory:
    - user: stratapiapp
    - group: webapps
    - require:
      - user: stratapiapp
      - group: webapps

# https://help.github.com/articles/what-are-github-s-ssh-key-fingerprints/
github.com:
  ssh_known_hosts:
    - present
    - user: root
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48

git-stratapi-prod:
  git.latest:
    - name: git@github.com:StratCheck/strat-web-api.git
    - rev: master
    - target: /var/www/stratapi/stratapi
    - identity: /root/.ssh/id_rsa
    - require:
      - pkg: git
      - ssh_known_hosts: github.com       

git-stratcheck-lib:
  git.latest:
    - name: git@github.com:StratCheck/strat-check.git
    - rev: master
    - target: /var/www/stratapi/stratapi/strat-check
    - identity: /root/.ssh/id_rsa
    - require:
      - pkg: git
      - ssh_known_hosts: github.com 

git-vizwealth-lib:
  git.latest:
    - name: git@github.com:benjaminmgross/wealth-viz.git
    - rev: master
    - target: /var/www/stratapi/stratapi/wealth-viz
    - identity: /root/.ssh/id_rsa
    - require:
      - pkg: git
      - ssh_known_hosts: github.com 


/var/www/stratapi/stratapi:
  file.directory:
    - user: stratapiapp
    - group: webapps
#    - dir_mode: 755
#    - file_mode: 755
    - recurse:
      - user
      - group
      - mode
