DOT_HOME=~/.dotfiles

install: install-vim install-tmux install-git update

install-vim:
		ln -fs $(DOT_HOME)/.vim ~/.vim
		ln -fs $(DOT_HOME)/.vimrc/ ~/.vimrc

install-tmux:
		ln -fs $(DOT_HOME)/.tmux.conf ~/.tmux.conf

install-git:
		ln -fs $(DOT_HOME)/.gitconfig ~/.gitconfig

update: update-vim

update-vim:
		git subtree pull --prefix vim/bundle/a.vim a.vim master --squash
		git subtree pull --prefix vim/bundle/ctrlp.vim ctrlp.vim master --squash
		git subtree pull --prefix vim/bundle/delimitMate delimitMate master --squash
		git subtree pull --prefix vim/bundle/dockerfile.vim master --squash
		git subtree pull --prefix vim/bundle/nerdtree nerdtree master --squash
		git subtree pull --prefix vim/bundle/snipmate.vim snipmate.vim master --squash
		git subtree pull --prefix vim/bundle/syntastic syntastic master --squash
		git subtree pull --prefix vim/bundle/tabular tabular master --squash
		git subtree pull --prefix vim/bundle/tagbar tagbar master --squash
		git subtree pull --prefix vim/bundle/tmuxline.vim tmuxline.vim master --squash
		git subtree pull --prefix vim/bundle/vim-better-whitespace vim-better-whitespace master --squash
		git subtree pull --prefix vim/bundle/vim-colors-solarized vim-colors-solarized master --squash
		git subtree pull --prefix vim/bundle/vim-easy-tags vim-easy-tags master --squash
		git subtree pull --prefix vim/bundle/vim-fugitive vim-fugitive master --squash
		git subtree pull --prefix vim/bundle/vim-gitgutter vim-gitgutter master --squash
		git subtree pull --prefix vim/bundle/vim-misc vim-misc master --squash
		git subtree pull --prefix vim/bundle/vim-nerdtree-tabs vim-nerdtree-tabs master --squash
		git subtree pull --prefix vim/bundle/vim-superman vim-superman master --squash
		git subtree pull --prefix vim/bundle/vim-surround vim-surround master --squash
		git subtree pull --prefix vim/bundle/vim-tmux-navigator vim-tmux-navigator master --squash
		git subtree pull --prefix vim/bundle/youCompleteMe youCompleteMe master --squash

