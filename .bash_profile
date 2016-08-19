export CLICOLOR=1
alias ll='ls -al'
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
#export JAVA_HOME="$(/usr/libexec/java_home)"
# Setting for the new UTF-8 terminal support
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export SVN_EDITOR=vim
export MAVEN_OPTS="-Xmx2048m"
export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

export MY_BIN_HOME="$HOME/bin"
export PATH="$MY_BIN_HOME:$PATH"

#for theano
export CUDA_ROOT="$CUDA_HOME"

. /Users/willwywang-NB/torch/install/bin/torch-activate

#export http_proxy=http://dev-proxy.oa.com:8080
#export https_proxy=http://dev-proxy.oa.com:8080

[[ -s "/Users/dwightk/.rvm/scripts/rvm" ]] && source "/Users/dwightk/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="😜  \[\033[01;35m\]\u@\h:\[\033[01;34m\]\$(parse_git_branch) \[\033[01;32m\]\w \[\033[01;34m\]\n>\[\e[0m\]"
