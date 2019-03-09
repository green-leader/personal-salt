minion.conf:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://salt/files/minion.conf
