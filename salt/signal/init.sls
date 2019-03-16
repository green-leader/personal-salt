signal-app-repo:
  pkgrepo.managed:
    - human_name: Signal App Repo
    - name: deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main
    - file: /etc/apt/sources.list.d/signal.list
    - key_url: https://updates.signal.org/desktop/apt/keys.asc

signal-desktop:
  pkg.installed:
    - require:
      - pkgrepo: signal-app-repo

