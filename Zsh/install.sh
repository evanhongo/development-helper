/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "export PATH=/home/linuxbrew/.linuxbrew/bin:${PATH}" >>  ~/.zshrc
sudo apt install zsh
source ~/.zshrc
brew install zsh-syntax-highlighting
echo "source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
chsh -s $(which zsh)
echo "zmodule romkatv/powerlevel10k" >> ~/.zimrc
source ~/.zshrc
zimfw install
brew install exa
echo "alias ls='exa'
alias l='exa -lbF --git'
alias ll='exa -lbGF --git'
alias llm='exa -lbGd --git --sort=modified'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='exa -1'
alias lt='exa --tree --level=2'" >> ~/.zshrc
brew install bat
brew install aria2
brew link aria2
echo "alias wget='aria2c -x 16 -s 16 --retry-wait=1'" >> ~/.zshrc
brew install fd
brew install ag
brew install jq
brew install htop
echo "alias top=htop" >> ~/.zshrc
echo "alias glo='git log --oneline'
alias ga='git add .'
alias gb='git branch'
alias gc='git checkout'
alias gm='git commit'" >> ~/.zshrc
source ~/.zshrc