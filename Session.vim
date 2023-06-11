let SessionLoad = 1
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-W> u
inoremap <C-U> u
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
vnoremap  zl :'<,'>ZkInsertLinkAtSelection { matchSelected = true }
vnoremap  tb :'<,'>!pandoc -t commonmark_x
nnoremap  zw <Cmd>ZkNotes { sort = { 'word-count' } }
nnoremap  zt <Cmd>ZkTags
nnoremap  zs <Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }
nnoremap  zo <Cmd>ZkNew { dir = 'journal/daily/', group = 'daily' }
nnoremap  zn <Cmd>ZkNotes
nnoremap  zm <Cmd>ZkNotes { sort = { 'modified' } }
nnoremap  zl <Cmd>ZkLinks
nnoremap  wq <Cmd>:wq
nnoremap  wa <Cmd>:wa
nnoremap  to <Cmd>Telescope oldfiles
nnoremap  th <Cmd>Telescope highlights
nnoremap  tg <Cmd>Telescope live_grep search_dirs=~/PITH/,~/COLD/,~/.config/
nnoremap  tf <Cmd>Telescope find_files search_dirs=~/PITH/,~/COLD/,~/.config/
nnoremap  td <Cmd>TodoTelescope
nnoremap  tb <Cmd>Telescope buffers
nnoremap  sp <Cmd>Telescope spell_suggest
nnoremap  so <Cmd>:source ~/PITH/ob
nnoremap  sm :%!pandoc --to=commonmark-smart
nnoremap  ra :%s/'/â€™/gc
nnoremap  ob <Cmd>Obsession ~/PITH/ob
nnoremap  o1 <Cmd>Obsession!
nnoremap  nt <Cmd>Notifications
nnoremap  ll <Cmd>ZkInsertLink { match = { vim.fn.input('Search: ')} }
nnoremap  km <Cmd>Telescope keymaps
nnoremap  ii <Cmd>ZkNew { dir = 'ideas/', group = 'ideas', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }
nnoremap  gs <Cmd>:Git
nnoremap  gl <Cmd>:Git pull origin main
nnoremap  gh <Cmd>:Git push origin main
nnoremap  gc <Cmd>:Git commit
nnoremap  ga <Cmd>:Git add --all
nnoremap  dx :!pandoc -s commonmark % --output ~/.docx
nnoremap  dt <Cmd>:UndotreeToggle
nnoremap  cm <Cmd>Telescope commands
nnoremap  c g
nnoremap  br <Cmd>ZkNew { dir = 'folk/ber/', group = 'folk', title = vim.fn.input('Title: '), content = vim.fn.input('Content: ') }
nnoremap  bp <Cmd>:bp
nnoremap  bd <Cmd>:bd
nnoremap    <Cmd>:bn
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap ww <Cmd>:silent w
nnoremap <SNR>56_: :=v:count ? v:count : ''
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap  u
inoremap  u
inoremap !lk [link](https://)
inoremap ,| â€œ
inoremap ,, â€ž
inoremap <x fix():
inoremap <rf refactor():
inoremap <f feat():
inoremap <bc BREAKING CHANGE:
inoremap A| Ã„
inoremap O| Ã–
inoremap S| áºž
inoremap U| Ãœ
inoremap a| Ã¤
inoremap o| Ã¶
inoremap s| ÃŸ
inoremap u| Ã¼
let &cpo=s:cpo_save
unlet s:cpo_save
set backup
set backupcopy=yes
set backupdir=~/.cache/nvim-backups/
set completeopt=preview
set expandtab
set fillchars=stl:â”€,stlnc:â”€
set guicursor=n-c-v-sm:Cursor,i-ci-ve:ver33-Cursor,r-cr-o:hor33-Cursor,a:blinkwait0-blinkon2000-blinkoff0
set guifont=FantasqueSansM
set helplang=en
set ignorecase
set laststatus=3
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set packpath=
set packpath+=/nix/store/7lga5dzw7kqigpk8n3x7w0css2m4k2jh-vim-pack-dir
set packpath+=~/.config/nvim
set packpath+=/etc/xdg/nvim
set packpath+=~/.local/share/flatpak/exports/etc/xdg/nvim
set packpath+=/var/lib/flatpak/exports/etc/xdg/nvim
set packpath+=~/.nix-profile/etc/xdg/nvim
set packpath+=/etc/profiles/per-user/deeengan/etc/xdg/nvim
set packpath+=/nix/var/nix/profiles/default/etc/xdg/nvim
set packpath+=/run/current-system/sw/etc/xdg/nvim
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/etc/xdg/nvim
set packpath+=~/.local/share/nvim/site
set packpath+=/nix/store/fc8mligpdn5f6g787agmlb2wz81k7dva-shared-mime-info-2.2/share/nvim/site
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site
set packpath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site
set packpath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site
set packpath+=/nix/store/f9wdh3v9kqng6asv5kddn1pll0zpl30s-gnome-keyring-42.1/share/gsettings-schemas/gnome-keyring-42.1/nvim/site
set packpath+=/nix/store/ai8fzkbvp39bkf91j0bmwvm8392298yl-mutter-44.1/share/gsettings-schemas/mutter-44.1/nvim/site
set packpath+=/nix/store/l7v8m0zip8066j2dl7rfiv2ik64h2brl-evolution-data-server-3.48.1/share/gsettings-schemas/evolution-data-server-3.48.1/nvim/site
set packpath+=/nix/store/pghdpl2glm8ri5xdnxkwkgcprq74y8y4-gtk4-4.10.3/share/gsettings-schemas/gtk4-4.10.3/nvim/site
set packpath+=/nix/store/ak3mz9dqci3y6ax88j9xkim5hc9rgi9k-gdm-44.1/share/gsettings-schemas/gdm-44.1/nvim/site
set packpath+=/nix/store/qskdi8fmcnwvpix58h321mn0zv79dc7c-gnome-clocks-44.0/share/gsettings-schemas/gnome-clocks-44.0/nvim/site
set packpath+=/nix/store/r5qw66wdjzrikgh7jhz8l3nxlcp3vb29-ibus-1.5.28/share/gsettings-schemas/ibus-1.5.28/nvim/site
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site
set packpath+=/nix/store/60pfa95hk2i8xjjazx8n6smgsz8q6vnq-libgweather-4.2.0/share/gsettings-schemas/libgweather-4.2.0/nvim/site
set packpath+=/nix/store/3ly2jggw053bshcqmm3v0p094x480ih1-libnma-1.10.6/share/gsettings-schemas/libnma-1.10.6/nvim/site
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site
set packpath+=/nix/store/1n005m8n8zk3knz1p7crqfxl23sqmf1w-desktops/share/nvim/site
set packpath+=~/.local/share/flatpak/exports/share/nvim/site
set packpath+=/var/lib/flatpak/exports/share/nvim/site
set packpath+=~/.nix-profile/share/nvim/site
set packpath+=/etc/profiles/per-user/deeengan/share/nvim/site
set packpath+=/nix/var/nix/profiles/default/share/nvim/site
set packpath+=/run/current-system/sw/share/nvim/site
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site
set packpath+=/nix/store/qam489bs7narfw3w4f6ldl1ir96rlis5-gnome-shell-extensions-44.0/share/gsettings-schemas/gnome-shell-extensions-44.0/nvim/site
set packpath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/nvim/site
set packpath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site
set packpath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site
set packpath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/gsettings-schemas/gnome-session-44.0/nvim/site
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site
set packpath+=/nix/store/ax8sn0k1ranydy6f6w21lcvszipc117z-neovim-unwrapped-0.9.1/share/nvim/runtime
set packpath+=/nix/store/ax8sn0k1ranydy6f6w21lcvszipc117z-neovim-unwrapped-0.9.1/lib/nvim
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site/after
set packpath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/gsettings-schemas/gnome-session-44.0/nvim/site/after
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site/after
set packpath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site/after
set packpath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site/after
set packpath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/nvim/site/after
set packpath+=/nix/store/qam489bs7narfw3w4f6ldl1ir96rlis5-gnome-shell-extensions-44.0/share/gsettings-schemas/gnome-shell-extensions-44.0/nvim/site/after
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site/after
set packpath+=/run/current-system/sw/share/nvim/site/after
set packpath+=/nix/var/nix/profiles/default/share/nvim/site/after
set packpath+=/etc/profiles/per-user/deeengan/share/nvim/site/after
set packpath+=~/.nix-profile/share/nvim/site/after
set packpath+=/var/lib/flatpak/exports/share/nvim/site/after
set packpath+=~/.local/share/flatpak/exports/share/nvim/site/after
set packpath+=/nix/store/1n005m8n8zk3knz1p7crqfxl23sqmf1w-desktops/share/nvim/site/after
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site/after
set packpath+=/nix/store/3ly2jggw053bshcqmm3v0p094x480ih1-libnma-1.10.6/share/gsettings-schemas/libnma-1.10.6/nvim/site/after
set packpath+=/nix/store/60pfa95hk2i8xjjazx8n6smgsz8q6vnq-libgweather-4.2.0/share/gsettings-schemas/libgweather-4.2.0/nvim/site/after
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site/after
set packpath+=/nix/store/r5qw66wdjzrikgh7jhz8l3nxlcp3vb29-ibus-1.5.28/share/gsettings-schemas/ibus-1.5.28/nvim/site/after
set packpath+=/nix/store/qskdi8fmcnwvpix58h321mn0zv79dc7c-gnome-clocks-44.0/share/gsettings-schemas/gnome-clocks-44.0/nvim/site/after
set packpath+=/nix/store/ak3mz9dqci3y6ax88j9xkim5hc9rgi9k-gdm-44.1/share/gsettings-schemas/gdm-44.1/nvim/site/after
set packpath+=/nix/store/pghdpl2glm8ri5xdnxkwkgcprq74y8y4-gtk4-4.10.3/share/gsettings-schemas/gtk4-4.10.3/nvim/site/after
set packpath+=/nix/store/l7v8m0zip8066j2dl7rfiv2ik64h2brl-evolution-data-server-3.48.1/share/gsettings-schemas/evolution-data-server-3.48.1/nvim/site/after
set packpath+=/nix/store/ai8fzkbvp39bkf91j0bmwvm8392298yl-mutter-44.1/share/gsettings-schemas/mutter-44.1/nvim/site/after
set packpath+=/nix/store/f9wdh3v9kqng6asv5kddn1pll0zpl30s-gnome-keyring-42.1/share/gsettings-schemas/gnome-keyring-42.1/nvim/site/after
set packpath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site/after
set packpath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site/after
set packpath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site/after
set packpath+=/nix/store/fc8mligpdn5f6g787agmlb2wz81k7dva-shared-mime-info-2.2/share/nvim/site/after
set packpath+=~/.local/share/nvim/site/after
set packpath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/etc/xdg/nvim/after
set packpath+=/run/current-system/sw/etc/xdg/nvim/after
set packpath+=/nix/var/nix/profiles/default/etc/xdg/nvim/after
set packpath+=/etc/profiles/per-user/deeengan/etc/xdg/nvim/after
set packpath+=~/.nix-profile/etc/xdg/nvim/after
set packpath+=/var/lib/flatpak/exports/etc/xdg/nvim/after
set packpath+=~/.local/share/flatpak/exports/etc/xdg/nvim/after
set packpath+=/etc/xdg/nvim/after
set packpath+=~/.config/nvim/after
set runtimepath=
set runtimepath+=/nix/store/7lga5dzw7kqigpk8n3x7w0css2m4k2jh-vim-pack-dir
set runtimepath+=/nix/store/7lga5dzw7kqigpk8n3x7w0css2m4k2jh-vim-pack-dir/pack/*/start/*
set runtimepath+=~/.config/nvim
set runtimepath+=/etc/xdg/nvim
set runtimepath+=~/.local/share/flatpak/exports/etc/xdg/nvim
set runtimepath+=/var/lib/flatpak/exports/etc/xdg/nvim
set runtimepath+=~/.nix-profile/etc/xdg/nvim
set runtimepath+=/etc/profiles/per-user/deeengan/etc/xdg/nvim
set runtimepath+=/nix/var/nix/profiles/default/etc/xdg/nvim
set runtimepath+=/run/current-system/sw/etc/xdg/nvim
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/etc/xdg/nvim
set runtimepath+=~/.local/share/nvim/site
set runtimepath+=/nix/store/fc8mligpdn5f6g787agmlb2wz81k7dva-shared-mime-info-2.2/share/nvim/site
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site
set runtimepath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site
set runtimepath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site
set runtimepath+=/nix/store/f9wdh3v9kqng6asv5kddn1pll0zpl30s-gnome-keyring-42.1/share/gsettings-schemas/gnome-keyring-42.1/nvim/site
set runtimepath+=/nix/store/ai8fzkbvp39bkf91j0bmwvm8392298yl-mutter-44.1/share/gsettings-schemas/mutter-44.1/nvim/site
set runtimepath+=/nix/store/l7v8m0zip8066j2dl7rfiv2ik64h2brl-evolution-data-server-3.48.1/share/gsettings-schemas/evolution-data-server-3.48.1/nvim/site
set runtimepath+=/nix/store/pghdpl2glm8ri5xdnxkwkgcprq74y8y4-gtk4-4.10.3/share/gsettings-schemas/gtk4-4.10.3/nvim/site
set runtimepath+=/nix/store/ak3mz9dqci3y6ax88j9xkim5hc9rgi9k-gdm-44.1/share/gsettings-schemas/gdm-44.1/nvim/site
set runtimepath+=/nix/store/qskdi8fmcnwvpix58h321mn0zv79dc7c-gnome-clocks-44.0/share/gsettings-schemas/gnome-clocks-44.0/nvim/site
set runtimepath+=/nix/store/r5qw66wdjzrikgh7jhz8l3nxlcp3vb29-ibus-1.5.28/share/gsettings-schemas/ibus-1.5.28/nvim/site
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site
set runtimepath+=/nix/store/60pfa95hk2i8xjjazx8n6smgsz8q6vnq-libgweather-4.2.0/share/gsettings-schemas/libgweather-4.2.0/nvim/site
set runtimepath+=/nix/store/3ly2jggw053bshcqmm3v0p094x480ih1-libnma-1.10.6/share/gsettings-schemas/libnma-1.10.6/nvim/site
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site
set runtimepath+=/nix/store/1n005m8n8zk3knz1p7crqfxl23sqmf1w-desktops/share/nvim/site
set runtimepath+=~/.local/share/flatpak/exports/share/nvim/site
set runtimepath+=/var/lib/flatpak/exports/share/nvim/site
set runtimepath+=~/.nix-profile/share/nvim/site
set runtimepath+=/etc/profiles/per-user/deeengan/share/nvim/site
set runtimepath+=/nix/var/nix/profiles/default/share/nvim/site
set runtimepath+=/run/current-system/sw/share/nvim/site
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site
set runtimepath+=/nix/store/qam489bs7narfw3w4f6ldl1ir96rlis5-gnome-shell-extensions-44.0/share/gsettings-schemas/gnome-shell-extensions-44.0/nvim/site
set runtimepath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/nvim/site
set runtimepath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site
set runtimepath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site
set runtimepath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/gsettings-schemas/gnome-session-44.0/nvim/site
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site
set runtimepath+=/nix/store/ax8sn0k1ranydy6f6w21lcvszipc117z-neovim-unwrapped-0.9.1/share/nvim/runtime
set runtimepath+=/nix/store/ax8sn0k1ranydy6f6w21lcvszipc117z-neovim-unwrapped-0.9.1/share/nvim/runtime/pack/dist/opt/matchit
set runtimepath+=/nix/store/ax8sn0k1ranydy6f6w21lcvszipc117z-neovim-unwrapped-0.9.1/lib/nvim
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site/after
set runtimepath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/gsettings-schemas/gnome-session-44.0/nvim/site/after
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site/after
set runtimepath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site/after
set runtimepath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site/after
set runtimepath+=/nix/store/85fwf4f887aznpsnv84sj8h3l1wn0k0w-gnome-session-44.0/share/nvim/site/after
set runtimepath+=/nix/store/qam489bs7narfw3w4f6ldl1ir96rlis5-gnome-shell-extensions-44.0/share/gsettings-schemas/gnome-shell-extensions-44.0/nvim/site/after
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site/after
set runtimepath+=/run/current-system/sw/share/nvim/site/after
set runtimepath+=/nix/var/nix/profiles/default/share/nvim/site/after
set runtimepath+=/etc/profiles/per-user/deeengan/share/nvim/site/after
set runtimepath+=~/.nix-profile/share/nvim/site/after
set runtimepath+=/var/lib/flatpak/exports/share/nvim/site/after
set runtimepath+=~/.local/share/flatpak/exports/share/nvim/site/after
set runtimepath+=/nix/store/1n005m8n8zk3knz1p7crqfxl23sqmf1w-desktops/share/nvim/site/after
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/gsettings-schemas/gnome-shell-44.1/nvim/site/after
set runtimepath+=/nix/store/3ly2jggw053bshcqmm3v0p094x480ih1-libnma-1.10.6/share/gsettings-schemas/libnma-1.10.6/nvim/site/after
set runtimepath+=/nix/store/60pfa95hk2i8xjjazx8n6smgsz8q6vnq-libgweather-4.2.0/share/gsettings-schemas/libgweather-4.2.0/nvim/site/after
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/share/gsettings-schemas/gnome-settings-daemon-44.1/nvim/site/after
set runtimepath+=/nix/store/r5qw66wdjzrikgh7jhz8l3nxlcp3vb29-ibus-1.5.28/share/gsettings-schemas/ibus-1.5.28/nvim/site/after
set runtimepath+=/nix/store/qskdi8fmcnwvpix58h321mn0zv79dc7c-gnome-clocks-44.0/share/gsettings-schemas/gnome-clocks-44.0/nvim/site/after
set runtimepath+=/nix/store/ak3mz9dqci3y6ax88j9xkim5hc9rgi9k-gdm-44.1/share/gsettings-schemas/gdm-44.1/nvim/site/after
set runtimepath+=/nix/store/pghdpl2glm8ri5xdnxkwkgcprq74y8y4-gtk4-4.10.3/share/gsettings-schemas/gtk4-4.10.3/nvim/site/after
set runtimepath+=/nix/store/l7v8m0zip8066j2dl7rfiv2ik64h2brl-evolution-data-server-3.48.1/share/gsettings-schemas/evolution-data-server-3.48.1/nvim/site/after
set runtimepath+=/nix/store/ai8fzkbvp39bkf91j0bmwvm8392298yl-mutter-44.1/share/gsettings-schemas/mutter-44.1/nvim/site/after
set runtimepath+=/nix/store/f9wdh3v9kqng6asv5kddn1pll0zpl30s-gnome-keyring-42.1/share/gsettings-schemas/gnome-keyring-42.1/nvim/site/after
set runtimepath+=/nix/store/yr889rf8a6sbkfifcg8a7qrrgk5d9hx6-gtk+3-3.24.37/share/gsettings-schemas/gtk+3-3.24.37/nvim/site/after
set runtimepath+=/nix/store/i22zrk6yjrs404vn5f2vmw15l5m6s633-gsettings-desktop-schemas-44.0/share/gsettings-schemas/gsettings-desktop-schemas-44.0/nvim/site/after
set runtimepath+=/nix/store/z05bayflz5gvz1bx2n1jjczi2bwl70s4-gnome-shell-44.1/share/nvim/site/after
set runtimepath+=/nix/store/fc8mligpdn5f6g787agmlb2wz81k7dva-shared-mime-info-2.2/share/nvim/site/after
set runtimepath+=~/.local/share/nvim/site/after
set runtimepath+=/nix/store/9bj3j04s6lyz6cswpfqx2z7lgzy1a4i2-gnome-settings-daemon-44.1/etc/xdg/nvim/after
set runtimepath+=/run/current-system/sw/etc/xdg/nvim/after
set runtimepath+=/nix/var/nix/profiles/default/etc/xdg/nvim/after
set runtimepath+=/etc/profiles/per-user/deeengan/etc/xdg/nvim/after
set runtimepath+=~/.nix-profile/etc/xdg/nvim/after
set runtimepath+=/var/lib/flatpak/exports/etc/xdg/nvim/after
set runtimepath+=~/.local/share/flatpak/exports/etc/xdg/nvim/after
set runtimepath+=/etc/xdg/nvim/after
set runtimepath+=~/.config/nvim/after
set scrolloff=15
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal
set shiftwidth=2
set smartindent
set spelllang=en_us,de_de,cjk
set statusline=%{FugitiveStatusline()}\ %<%F\ %l/%L\ %p%%\ %S%r%h%m
set noswapfile
set tabstop=2
set termguicolors
set undodir=~/.cache/undodir/
set undofile
set wildmode=longest:full,full
set window=36
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/COLD
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +0 test.md
argglobal
%argdel
edit test.md
argglobal
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal cinscopedecls=public,protected,private
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fillchars=
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=jtcqlnaw
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:\\&^.\\{4\\}
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispoptions=
setlocal lispwords=
set list
setlocal list
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us,de_de,cjk
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'ON'
setlocal syntax=ON
endif
setlocal tagfunc=
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=66
setlocal thesaurus=
setlocal thesaurusfunc=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal winbar=
setlocal winblend=0
setlocal winhighlight=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 26 - ((19 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
set shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
