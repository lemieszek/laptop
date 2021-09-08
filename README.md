# Installation

Clone repo & run mac script to install necessery software.

```bash
git clone https://github.com/d-szymanski/laptop.git && cd laptop && ./mac
```

If you have problems running `mac` file, try adding execute rights

```bash
chmod +x mac
```

## Copy rc files

Make sure you are in `laptop` direcory

```bash
cd laptop
```

Copy Vim config file

```bash
cp .vimrc ~/.vimrc
```

Copy NeoVim config file

```bash
cp init.vim ~/.config/nvim/init.vim
```

Copy Zsh config file

```bash
cp .zshrc ~/.zshrc
```

## Oh-my-zsh

Follow instructions [here](https://github.com/robbyrussell/oh-my-zsh). Or install oh-my-zsh with instruction below.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

```

## Fira-code Nerd font

Monospace font I use for development. Available on private google drive.

## Apps

Essential apps I use every day.

- [Bitwarden](https://bitwarden.com/download/)
- [Magnet](https://apps.apple.com/us/app/magnet/id441258766)
- [Spark](https://apps.apple.com/us/app/spark-email-app-by-readdle/id1176895641)
