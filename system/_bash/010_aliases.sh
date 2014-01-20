alias top="top -o cpu"
alias ls="ls -pFh"
alias bx="bundle exec"
alias rt="bundle exec ruby -Itest"

alias bignose="ssh bignose.ca"
alias westhants="ssh -p 55522 bacula-external.westhants.bignose.ca"
alias wolfville="ssh bacula-external.wolfville.bignose.ca"
alias middleton="ssh bacula-external.middleton.bignose.ca"
alias pedaltrout="ssh pedaltrout@bignose.ca"

# these ones only work once you are inside that said network
alias wolfville.secure='ssh secure.wolfville.bignose.ca'
alias wolfville.www1='ssh www1.wolfville.bignose.ca'
alias wolfville.windsorsd='ssh baculasd-windsor.wolfville.bignose.ca'

alias bignose.share="ssh share@ultra.franklyn.bignose.ca"
alias bignose.ultra="ssh ultra.franklyn.bignose.ca"

alias westhants.proxy='ssh proxy.westhants.bignose.ca'
# end of "in network" aliases

alias releasebuild='/terida/opt/apache-maven-3.1.0/bin/mvn release:prepare; /terida/opt/apache-maven-3.1.0/bin/mvn release:perform'
alias reloadproxy='sudo -u zabbixsrv zabbix_proxy -R config_cache_reload'
alias psmemory="ps aux | awk '{print \$2, \$4, \$11}' | sort -k2r "
alias flushdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
