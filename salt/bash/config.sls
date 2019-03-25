include:
  - bash

{% for user in salt['pillar.get']('userfiles:users') %}
{% set username = user.get('username') %}
{% set home = user.get('home') %}

.bashrc {{ username }}:
  file.managed:
    - name: {{ home }}/.bashrc
    - source: salt://bash/files/bashrc
    - user: {{ username }}
    - group: {{ username }}

.bash_aliases {{ username }}:
  file.managed:
    - name: {{ home }}/.bash_aliases
    - source: salt://bash/files/bash_aliases
    - user: {{ username }}
    - group: {{ username }}

{% endfor %}

