#x
alias 640="xrandr -s 640x480"
alias 800="xrandr -s 800x600"
alias 1024="xrandr -s 1024x768"
alias 1280="xrandr -s 1280x1024"
alias 1680="xrandr -s 1680x1050"
alias 1920="xrandr -s 1920x1080"
alias benq0="xcalib ~/Dokument/benq/benq_xl2420t.icc"
alias benqu="xcalib ~/Dokument/benq/benq_xl2420t_user.icm"

alias openarena="off && mouseaccel0 && openarena"
alias torrent="rtorrent -p 51414-51414"


#heroku
#echo 'PATH="/usr/local/heroku/bin:$PATH"' >> ~/.profile
alias heroku="/usr/local/heroku/bin/heroku"


# shell
alias c="clear"
alias rvm1=". ~/.bashrc.local"
alias storapaket="for i in $(qlist -CI | sort -u) ; do qsize -C $i ; done | awk '{print $6,$1}' | sort -nu"
alias ctagindex="ctags -R --options=/pub/ctags.conf"
# alias newlineall="for f in *.rb; do; ed -s <<< w $f; done"

#if $SHELL="/bin/zsh"
 #alias reload="source ~/.bash_aliases"
#else
 alias reload="source ~/.bash_profile"
#fi

#alias ls="gls --color=always"
alias ll="ls -lah"
alias tail="tail -n 150"
alias taild="tail -f log/development.log"
alias tails="tail -f log/staging.log"
alias tailp="tail -f log/production.log"
alias diff="colordiff"
alias files="ssh ur-db@db.urkraft.se"
#alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

# bundle
alias be="bundle exec"
alias bo="bundle outdated &2>txt/outdated.txt"
alias buc="bundle check"
alias bui="bundle install"
alias buu="bundle update"

# rails
alias r="rails"
alias rs="zeus s"
alias rg="zeus g"
alias rc="zeus c"
alias rct="RAILS_ENV=test rails c"
alias rcp="RAILS_ENV=production rails c"
alias demo="tmux a -t demo || s && tmux new -s demo txt/demo1"
alias dev="tmux a -t dev"
alias devs="tmux a -t dev || s && tmux new -s dev txt/dev1"
alias devu="tmux a -t dev || u && tmux new -s dev txt/dev1"
alias ang="tmux a -t ang || cd /home/rails/angular && tmux new -s ang ./start"
alias devc="tmux a -t dev || u && tmux new -s dev -c cached txt/dev1c"
alias stag="tmux a -t stag || tmux new -s stag txt/stag1"
alias prod="tmux a -t prod || tmux new -s prod txt/prod1"
alias sten="tmux a -t sten || stt && tmux new -s sten txt/start"
alias md="mds"
alias mds="mysql -u root swedmak_dev"
alias mdu="mysql -u root urdb_main_dev"
alias mt="mysql -u root urdb_main_test"
alias tn="tmux new -s "
alias ta="tmux a -t "
# alias mp="mysql -u root urdb_main_prod"

# rake
alias  rollprod="rake db:rollback RAILS_ENV=production"
alias   migprod="rake db:migrate RAILS_ENV=production && rake db:test:prepare"
alias  dumpprod="rake db:schema:dump RAILS_ENV=production"
alias sdumpprod="rake db:structure:dump RAILS_ENV=production"
alias     testa="txt/testa.sh"
alias redisfdemo="redis-cli -n 3 flushdb"

# underhåll
alias paperclip_gen_thumbnails="rake paperclip:refresh:thumbnails class=Image"
alias precomp="txt/precomp.sh"
alias indexera="u && txt/indexera.sh"
alias urbakprod='/home/rails/urdb19/txt/urbakprod.sh'
alias urbakdev='/home/rails/urdb19/txt/urbakdev.sh'
alias best='rails_best_practices -f html --output-file /home/rails/urdb19/public/assets/best.html -x old.,/db,/config,/tasks,/log,/txt'
alias brake='brakeman --skip-files app/views/layouts/appnocache.html.erb -f html -o public/assets/brake.html'
alias rspec="rspec --color"
alias spek="rspec -f h > public/assets/spec.html"
alias clean="rake assets:clean && rake tmp:clear"
alias rensa="find . -depth -name '.AppleDouble' -exec rm -Rf {} \; &&find . -depth -name ':2eDS_Store' -exec rm -Rf {} \; && find . -depth -name '.DS_Store' -exec rm -Rf {} \;"
alias svenska='setxkbmap -option "" -variant "" se'

# verktyg
alias guard="bundle exec guard"
alias apg="apg -c /dev/urandom"
alias kaffe="coffee -c -o ../../../public/assets/"
alias ip="ifconfig en0 |grep inet|grep -v inet6|cut -f2 -d' '"
alias p="psql -U andersl -W -h 127.0.0.1 angular"
alias tmuxa="tmux a -t"
alias zspec="zeus rspec"
alias z="clear && zspec spec"

# tjänster
alias mem="tmux attach -t mem || tmux new -s mem 'memcached -v -m 32 -t 4'"
alias redis1="launchctl start homebrew.mxcl.redis"
alias redis0="launchctl stop homebrew.mxcl.redis"
#alias redis1="redis-server /opt/local/etc/redis.conf"
#alias redis="tmux a -t redis || tmux new -s redis 'redis-server /opt/local/etc/redis.conf'"
alias elastic1="export ES_HEAP_SIZE=512m && /opt/elasticsearch/bin/elasticsearch"
alias mysql1="/usr/local/mysql/start"
alias mysql0="sudo mysqladmin shutdown"
#alias mdb='mongod -f $HOME/dotfiles/db/mongod.conf'
alias sol1='VBoxManage startvm "Sol 11.1" --type headless'
alias solsave='VBoxManage controlvm "Sol 11.1" savestate'
alias solresume='VBoxManage controlvm "Sol 11.1" resume'
alias slowcd='hdparm -E12 /dev/sr0'

alias win7rdp1='VBoxManage controlvm "Sol 11.1" vrde on'
alias win7rdp0='VBoxManage controlvm "Sol 11.1" vrde off'

