### How to start


``` bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

``` bash
echo ".dotfiles" >> .gitignore
```

``` bash
git clone --bare https://github.com/EYazanS/dotfiles.git $HOME/.dotfiles
```

``` bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

``` bash
dotfiles checkout
```
