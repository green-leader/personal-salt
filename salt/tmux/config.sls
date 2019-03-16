include:
  - tmux


{% for user in salt['pillar.get']('userfiles:users') %}
{% set username = user.get('username') %}
{% set home = user.get('home') %}

tmux.conf {{ username }}:
  file.managed:
    - name: {{ home }}/.tmux.conf
    - source: salt://salt/files/tmux.conf
    - user: {{ username }}
    - group: {{ username }}

{% endfor %}

