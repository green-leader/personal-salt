user.rules:
  file.managed:
    - name: /etc/ufw/user.rules
    - source: salt://ufw/files/user.rules

user6.rules:
  file.managed:
    - name: /etc/ufw/user6.rules
    - source: salt://ufw/files/user6.rules
