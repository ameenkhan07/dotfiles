# Dotfiles Source

My dotfiles based on [Holman Dotfiles Ideology](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) uses Holmans dotfiles as a starting point, oh-my-zsh for the sexy themes and plugins and whatnot and [duffer's](https://github.com/dufferzafar/dotfiles) repo for inspiration, since I've been shamelessly using it for some time.

![DOTS](./cestvoila.png)

### Navigating the topical structure

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Holman Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Installing the dotfiles repo

Run these:

```sh
sudo apt-get install zsh
chsh -s $(which zsh) 
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

This will install the [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```sh
git clone https://github.com/ameenkhan07/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.


## TODO

* Sublime Text 3 Symlyncing
* Terminator Configs
* Dev Environment Tools
* Configuring proper `autocompletion`