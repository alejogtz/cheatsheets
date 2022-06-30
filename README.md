# Personal Cheatsheet Repository

My personal cheatsheets managed by [cheat](https://github.com/cheat/cheat)

[cheat](https://github.com/cheat/cheat) allows you to create and view interactive cheatsheets on the command-line.


![Meme](https://i.imgur.com/JJrD079.png)


## Installation

**Download package from reales**

```bash
curl -sSL https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz --insecure -o "$HOME/cheat.gz" 
```

**Make avalaible from `~/.local/bin`**
```bash
gzip -c -d "$HOME/cheat.gz" > $HOME/cheat && rm "$HOME/cheat.gz"
sudo mv $HOME/cheat /usr/bin/cheat
sudo chmod +x /usr/bin/cheat
```

**Type cheat to initialize configuration and download community repository of cheat**
```bash
cheat
```
> Answer yes when prompt asks you

**Verify that `config.yml` were created correctly**

```bash
cat "$HOME/.config/cheat/conf.yml"
```

**Customize default theme**
```bash
sed -i 's/^style: monokai/style: arduino/' "$HOME/.config/cheat/conf.yml" # abap, arduino, api, monokai, etc...
```

**Done! Good job.**


## Restore personal cheatsheets

**Downloand `cheatsheets` command line tool and make it avalaible from `~/.local/bin`**

```bash
[ -d ~/.local/bin ] || mkdir -p ~/.local/bin
wget -O ~/.local/bin/cheatsheets https://raw.githubusercontent.com/cheat/cheat/master/scripts/git/cheatsheets
chmod +x ~/.local/bin/cheatsheets

# type cheatsheet to check it is installed correctly
cheatsheets # OK
```

**Clone personal cheatsheets into personal cheatsheets folder of cheat**
```bash
git clone https://github.com/alejogtz/cheatsheets "$HOME/.config/cheat/cheatsheets/personal"
```

**Some useful  alias**

```bash
echo "alias cheate='cheat -p personal -e '" >> ~/.bash_aliases
echo "alias cheatp='cheat -p personal'" >> ~/.bash_aliases
echo "alias cheat='cheat -p community'" >> ~/.bash_aliases

echo '# Load bash custom bash aliases' >> ~/.bashrc
echo 'if [ -f "$HOME/.bash_aliases" ]; then' >> ~/.bashrc
echo '   source "$HOME/.bash_aliases"' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

# To check if it is correct ;D
tail ~/.bashrc

# load custom alias
source ~/.bashrc
```

**Manage cheatsheets with these two commands**
```bash
# To download latest changes
cheatsheets pull

# To upload local changes
cheatsheets push
```


## License


[MIT](https://choosealicense.com/licenses/mit/)




