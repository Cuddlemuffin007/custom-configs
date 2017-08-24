alias c='clear'
alias reload='source ~/.zshrc'
alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias ld='ls -d */'
# git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
# update gh-pages
alias ghp='git checkout gh-pages;git merge master;git push origin gh-pages;git checkout master'
# postgres
alias postgres_ctl='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pg_start='postgres_ctl start'
alias pg_stop='postgres_ctl stop'
alias pg_status='postgres_ctl status'
# retrip db service
alias retrip_postgres_ctl='pg_ctl -D /usr/local/var/postgres/retrip_localhost -l /usr/local/var/postgres/server.log'
alias retrip_start='retrip_postgres_ctl start'
alias retrip_stop='retrip_postgres_ctl stop'
alias retrip_status='retrip_postgres_ctl status'
# kill dev-retrip tmux session and stop db
alias kill-retrip='tmuxk dev-retrip && retrip_stop'
# show unapplied migrations in a django project
alias show_unapplied='python manage.py showmigrations --list --settings=$DJANGO_SETTINGS_MODULE | grep -v "[X]"'
