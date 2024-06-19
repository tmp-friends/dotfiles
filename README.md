## dotfiles
### 想定している環境

- Linux
  - Ubuntu22.04
  - WSL2でも可
 
### Installation

- git clone

```
git clone --recursive https://github.com/tmp-friends/dotfiles.git
```

- deploy.shの実行
  - シンボリックリンクをはる

```
~/dotfiles/deploy.sh
```

#### zsh

- zsh install

```
sudo apt install zsh
```

- git-prompt.sh

```
mkdir ~/.zsh
curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
```

#### Neovim

- Neovim install
  - 手順参考: https://github.com/neovim/neovim/blob/master/INSTALL.md#linux
- Neovim Plugins
  - Packer
    - PackerInstall
    - PackerCompile
  - Mason
    - PackerInstall時に入るので特に何もしなくて良い
    - TODO: black, flake8, isortが自動で入らないので調査

#### tmux

- tmux install

```
sudo apt install tmux
```
