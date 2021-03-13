# Z Shell Setup

```sh
# Install Zsh
sudo apt install zsh

# Install Zim (configuration framework)
 curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# Change default shell
# Remember to re-login
chsh -s $(which zsh)
```

```sh
# Theme configuration => Powerlevel10k
echo "zmodule romkatv/powerlevel10k" >> ~/.zimrc

# Install Powerlevel10k
# Restart terminal
zimfw install

# Configure
p10k configure
```

```sh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to path env
# Restart terminal
echo "export PATH=/home/linuxbrew/.linuxbrew/bin:${PATH}" >>  ~/.zshrc

# Intall exa (advanced version of ls)
# Restart terminal
brew install exa

echo "alias ls='exa'
alias l='exa -lbF --git'
alias ll='exa -lbGF --git'
alias llm='exa -lbGd --git --sort=modified'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='exa -1'
alias lt='exa --tree --level=2'" >> ~/.zshrc

# Install bat (advanced version of cat)
brew install bat
```

```sh
# Install aria2 (advanced version of wget)
brew install aria2
brew link aria2
echo "alias wget='aria2c -x 16 -s 16 --retry-wait=1'" >> ~/.zshrc

# Install fd & ag (find files based on file name and file content)
brew install fd
brew install ag

# Install jq (json tool)
brew install jq

# Install htop (advanced version of top)
brew install htop
echo "alias top=htop" >> ~/.zshrc
```

```sh
# Configure command alias
# git
echo "alias glo='git log --oneline'\n\
alias ga='git add .'\n\
alias gb='git branch'\n\
alias gc='git checkout'\n\
alias gm='git commit'" >> ~/.zshrc
```
