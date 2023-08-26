alias ls='ls -F --color=always'
alias dir='dir -F --color=always'
alias cp='cp -iv'
alias rm='rm -i'
alias mv='mv -iv'
alias grep='grep --color=auto -in'
alias ..='cd ..'

#
# Shortcuts
#

function proj () {
  cd /e/_projects
  cd "$1"
}

function work () {
  cd /e/work
  cd "$1"
}

#
# Docker
#

export DOCKER_HOST=tcp://localhost:2375

#
# PHP
#

alias dep='php7.4 /usr/local/bin/dep'
alias dep5='php7.4 /usr/local/bin/dep5'

#
# Xdebug
#

# Enable xdebug for CLI
alias phpx='php -dzend_extension=xdebug.so'
export XDEBUG_CONFIG="idekey=PHPSTORM"

#
# PHPUnit
#

# PHPUnit needs xdebug for coverage.
alias phpunit='php $(which phpunit)'

#
# Symfony (global)
#

alias sftest="php backend/bin/console --env=test"
alias sfdev="php backend/bin/console --env=dev"
alias sfprod="php backend/bin/console --env=prod"
alias sfunit='backend/vendor/bin/simple-phpunit'

#
# Symfony (app-specific)
#

alias dbrel='sfdev doctrine:schema:drop --force && sfdev doctrine:schema:create && sfdev ha:fixtures:load -n'
alias pun='backend/vendor/bin/phpunit'

function fastest () {
   find backend/src/*/Tests/ -name '*Test.php' | \
   (read files; SYMFONY_DEPRECATIONS_HELPER="disabled" backend/vendor/bin/fastest "backend/vendor/bin/phpunit $files;" $*)
 }
