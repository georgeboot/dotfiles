# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Import ssh keys in keychain
ssh-add -A 2>/dev/null;

# Enable autosuggestions
if [ -d "/opt/homebrew/share" ] 
then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi


# Extra paths
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export HOMEBREW_NO_GOOGLE_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1