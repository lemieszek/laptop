# Installation

Download or clone repo & run mac script to install necessery software.

```bash
git clone https://github.com/d-szymanski/laptop.git && cd laptop

sudo ./mac
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

Copy Vim config file and create directories

```bash
cp .vimrc ~/.vimrc
mkdir ~/.vim
mkdir ~/.vim/backups
mkdir ~/.vim/swaps
mkdir ~/.vim/undo
```

Copy Zsh config file

```bash
cp .zshrc ~/.zshrc
```

## fzf

Install fzf keybinds

```bash
$(brew --prefix)/opt/fzf/install
```

## Fira-code Nerd font

Monospace font I use for development. Available on private google drive.

## Iterm2

Iterm 2 and settings are sync over iCloud. Those arent perfect, yet.

## VS CODE 

Settings are synchronized by [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) extension.

## Apps

Essential apps I use every day.

- [Alfred](https://www.alfredapp.com/) - spotlight replacemnet
- [Bitwarden](https://bitwarden.com/download/) - password manager
- [Magnet](https://apps.apple.com/us/app/magnet/id441258766) - windows manager
- [Spark](https://apps.apple.com/us/app/spark-email-app-by-readdle/id1176895641) - Mail client
- [Flycut](https://apps.apple.com/pl/app/flycut-clipboard-manager/id442160987?mt=12) - Clipboard manager
- [Docker](https://docs.docker.com/get-docker/)
- [Forehead](https://www.producthunt.com/posts/forehead) - MacBook Notch hider
- [Notion](https://www.notion.so/desktop)
- [Disk Inventory X](http://www.derlien.com/downloads/index.html)
- [FinderGo](https://github.com/onmyway133/FinderGo)
- [Dash](https://blog.kapeli.com/dash-4)

## SSH

Generate SSH:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-keygen -t ed25519 -C "dawid.lemieszek.1@gmail.com"
```

Add SSH to GitHub following [this guide](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)


## Set default view as list:

Open finder, Select your hard disc
`Command + J`
Check the top two check boxes (Always open in list view, browse in list view) & Date modified, date created, size, kind 

Click use as defaults

run `sudo find / -name ".DS_Store"  -exec rm {} \;`