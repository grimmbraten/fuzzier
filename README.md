A zsh plugin to search and preview files like a fuzzy bat

## Install

![license](https://img.shields.io/github/license/grimmbraten/fuzzier?style=flat&color=blue)
![size](https://img.shields.io/github/repo-size/grimmbraten/fuzzier?style=flat&color=blue)

```bash
brew install bat && brew install fzf && git clone git@github.com:grimmbraten/fuzzier.git $ZSH_CUSTOM/plugins/fuzzier
```

Add `fuzzier` to the plugin array in your `.zshrc` file.

```bash
plugins=(...other-plugins fuzzier)
```

## Use

Start a fuzzy search in the cwd

```bash
fuzzier

>   README.md
    fuzzier.plugin.zsh
    LICENSE.md
  3/3
> _
```

Start a fuzzy search with an initial query value in the cwd

```bash
fuzzier plugin

>   fuzzier.plugin.zsh
  1/3
> _
```

## Upgrade

![GitHub last commit](https://img.shields.io/github/last-commit/grimmbraten/fuzzier?style=flat&color=blue)
![GitHub open issues](https://img.shields.io/github/issues-raw/grimmbraten/fuzzier?style=flat&color=blue)

```bash
$ git -C $ZSH_CUSTOM/plugins/fuzzier pull
```

## Uninstall

```bash
rm -rf $ZSH_CUSTOM/plugins/fuzzier
```

![GitHub Repo stars](https://img.shields.io/github/stars/grimmbraten/fuzzier?style=social)

## Credits

This simple zsh git plugin is possible because of the amazing [junegunn/fzf](https://github.com/junegunn/fzf) command-line fuzzy finder and the incredible [bat](https://github.com/sharkdp/bat) cat(1) clone with syntax highlighting.
