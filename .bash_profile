if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias gulp=./node_modules/gulp/bin/gulp.js
export PATH=$PATH:/usr/local/sbin

alias be='bundle exec'
alias bert='bundle exec ruby -Itest'
