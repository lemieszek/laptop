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

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Fira-code Nerd font

Monospace font I use for development. Available on private google drive.

## Themes

Themes are available in `/themes` directory. Apply for each program by hand.


## VS CODE 

Settings are synchronized by [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) extension.

## Apps

Essential apps I use every day.

- [Alfred](https://www.alfredapp.com/)
- [Dash](https://blog.kapeli.com/dash-4)
- [Bitwarden](https://bitwarden.com/download/)
- [Magnet](https://apps.apple.com/us/app/magnet/id441258766)
- [Spark](https://apps.apple.com/us/app/spark-email-app-by-readdle/id1176895641)
- [Flycut](https://apps.apple.com/pl/app/flycut-clipboard-manager/id442160987?mt=12)

## SSH

Generate SSH:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Add SSH to GitHub following [this guide](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)