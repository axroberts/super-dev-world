if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.bashrc.local ]; then
   source ~/.bashrc.local
fi

export PATH=$PATH:~/toast/git-repos/play1
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export JENKINS_USER=aroberts@toasttab.com

export PATH=$PATH:~/.oktoast

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias ll="ls -laFG"

alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v '11*')"
alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v '1.8*')"

if [ -f `brew --prefix`/etc/bash_completion ]; then
	    . `brew --prefix`/etc/bash_completion
fi

eval "$(_DEV_FEATURE_FLAGS_COMPLETE=source dev-feature-flags)"
eval "$(_TOAST_FEATURE_FLAGS_COMPLETE=source toast-feature-flags)"

function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
