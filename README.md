# Installation

## Dependencies

- `brew install nvim`
- `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
- `npm install -g typescript typescript-language-server`
- `npm install -g @tailwindcss/language-server`
- `npm i -g pyright`
- `brew install lua-language-server`

## Configuration

After having installed all the dependencies run the following commands:

```
git clone git@github.com:facs95/nvim-dotfiles.git ~/.config/nvim
```

```
nvim --headless +PackerSync +q
```


