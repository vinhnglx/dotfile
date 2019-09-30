# Dotfiles

The configuration for my macbook.

**Install Oh-My-ZSH**

- Install xcode-select

```
sudo rm -rf /Library/Developer/CommandLineTools # remove the current
xcode-select --install # install new one
```

- Install Homebrew (homepage)

- Install ZSH

```
brew install zsh
```

- Install Oh-My-ZSH

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- Install Powerfont

```
git clone https://github.com/powerline/fonts.git

cd fonts

./install.sh
```

- Open .zshrc and add

```
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

export EDITOR='vim'

alias cl="clear"
alias glog="git log --graph --all -decorate"
alias tx="tmuxinator"

bindkey -v

# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi
```

**Install Vundle**

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

**Install Tmux**

```
brew install tmux
```

**Clone the project**

```
git clone git@github.com:vinhnglx/dotfiles.git
```

**Run the script**

```
./setup.sh
```

**Install VIM plugin**

- Open VIM and run

```
:PluginInstall
```

**Screenshot**

![Image](https://user-images.githubusercontent.com/1997137/30432902-a2260164-9995-11e7-948f-54f583eee94a.png)

**Done! Voila**

