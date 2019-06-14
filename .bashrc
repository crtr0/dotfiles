# custom prompt
export PS1="\w (\u) => "

# nvm goodness
export NVM_DIR="/Users/crabasa/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# urlencode command line utility
urlencode() {
	local LANG=C i c e=''
	for ((i=0;i<${#1};i++)); do
                c=${1:$i:1}
		[[ "$c" =~ [a-zA-Z0-9\.\~\_\-] ]] || printf -v c '%%%02X' "'$c"
                e+="$c"
	done
        echo "$e"
}

# Add Ruby to PATH
export PATH=$PATH:/Users/crabasa/.gem/ruby/2.0.0/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# add .bin to PATH
export PATH="$PATH:$HOME/.bin"

export AWS_PROFILE=default
export AWS_REGION=us-west-2

alias http='python -m SimpleHTTPServer'
