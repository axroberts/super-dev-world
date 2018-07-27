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
. "/usr/local/opt/nvm/nvm.sh"

alias ll="ls -laFG"

alias uninstallToast="adb uninstall com.toasttab.pos"
alias installToast=installToastApk
alias assembleAPK="cd ~/toast/git-repos/toastmobile; ./gradlew assembleNormalDevelopmentDebug"
alias aiAPK="assembleAPK; uninstallToast; installToast development"

installToastApk() {
	adb install /Users/axroberts/toast/git-repos/toastmobile/toast-android-pos/build/outputs/apk/normalDevelopment/debug/toast-android-pos-normal-$1-debug.apk
}

if [ -f `brew --prefix`/etc/bash_completion ]; then
	    . `brew --prefix`/etc/bash_completion
    fi

function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
