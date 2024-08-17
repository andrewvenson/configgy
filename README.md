# Configs and machine setup

- Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim/921fe8c40c34dd1f3fb35d5b48c484db1b8ae94b)
- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
- Install [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/wiki)
- Install [tmux](https://github.com/tmux/tmux/wiki/Installing#installing-tmux)
- Make sure you have your .nvim configuration sourcing .vimrc
  - In `~/.config/nvim/init.vim` add the following:
    ```
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc
    ```
- Add format on save to CocConfig
  - While in vim normal mode:
    - Run `:CocConfig` and add the following to the file that opens:
      ```
      {
          "coc.preferences.formatOnSave": true
      }
      ```
- Install Plugins
  - While in vim normal mode:
    - Run `:PlugInstall`
    - Run `:CocInstall coc-pyright coc-jedi coc-prettier coc-eslint coc-tslint-plugin coc-tslint coc-tsserver coc-json coc-javascript coc-vimlsp`
