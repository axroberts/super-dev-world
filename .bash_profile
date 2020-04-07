export PATH=$PATH:~/toast/git-repos/play1:~/.oktoast
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/build-tools:$ANDROID_HOME/platform-tools

export JENKINS_USER=aroberts@toasttab.com

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll="ls -laFG"

alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v '11*')"
alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')"

function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
