```
_____     ____  ______
\__  \   / ___\/  ___/
 / __ \_/ /_/  >___ \ 
(____  /\___  /____  >
     \//_____/     \/ 
```

# Silver searcher (AG) plugin for Vim
*A Vim plugin for the [silver searcher](https://github.com/ggreer/the_silver_searcher) or [ripgrep](https://github.com/BurntSushi/ripgrep) that focuses on   
clear display and easy navigation of the search results*  

### Installation   
Install via [pathogen](https://github.com/tpope/vim-pathogen), [vundle](https://github.com/gmarik/vundle), [plug](https://github.com/junegunn/vim-plug) or copy to the Vim directory  
The [ag](https://github.com/ggreer/the_silver_searcher) or [rg](https://github.com/BurntSushi/ripgrep) executable must be installed as well.  

### Usage
See the [docs](https://github.com/gabesoft/vim-ags/blob/master/doc/ags.txt) or press `u` for usage while in the search results window.  

### Using [ripgrep](https://github.com/BurntSushi/ripgrep) instead of AG  
Despite the name `vim-ags` works with `ripgrep` as well. Heres how it
should be configured for that:  
```
let g:ags_agexe = 'rg'

let g:ags_agargs = {
  \ '--column'         : ['', ''],
  \ '--line-number'    : ['', ''],
  \ '--context'        : ['g:ags_agcontext', '-C'],
  \ '--max-count'      : ['g:ags_agmaxcount', ''],
  \ '--heading'        : ['',''],
  \ '--smart-case'     : ['','-S'],
  \ '--color'          : ['always',''],
  \ '--colors'         : ['"match:fg:green" --colors="match:bg:black" --colors="match:style:nobold" --colors="path:fg:red" --colors="path:style:bold" --colors="line:fg:black" --colors="line:style:bold"',''],
  \ }
```

### Notes  
Works with ag version >= 0.29.1  

### Screenshots  
Here are a couple of screenshots of the search results window

#### View mode (with [lightline](https://github.com/itchyny/lightline.vim) integration)
<img src="https://github.com/gabesoft/vim-ags/raw/master/assets/screen-shot8.png" />

#### Edit mode
<img src="https://github.com/gabesoft/vim-ags/raw/master/assets/screen-shot6-edit-mode.png" />

### Similar Plugins
[ag.vim](https://github.com/rking/ag.vim)
[epmatsw/ag.vim](https://github.com/epmatsw/ag.vim)
[ervandew/ag](https://github.com/ervandew/ag)
