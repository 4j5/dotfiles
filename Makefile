DOT_HOME=~/dotfiles
VIM_FOLDER=$(DOT_HOME)/.vim
install: install-vim install-tmux install-git update

install-vim:
		if [ -f $(VIM_FOLDER) && ! -h $(DOT_HOME)/.vim ]; then
			mv $(VIM_FOLDER) ~/dotfiles_old;
			ln -fs $(VIM_FOLDER) ~/.vim;
		elif [ ! -L $(VIM_FOLDER) ]; then
			ln -fs $(VIM_FOLDER) ~/.vim;
		else
			ln -fs $(VIM_FOLDER) ~/.vim;
		fi

		ln -fs $(DOT_HOME)/.vimrc/ ~/.vimrc;

install-tmux:
		ln -fs $(DOT_HOME)/.tmux.conf ~/.tmux.conf;

install-git:
		ln -fs $(DOT_HOME)/.gitconfig ~/.gitconfig;
#		git remote add -f a.vim https://github.com/vim-scripts/a.vim.git 
#		git remote add -f ctrlp.vim https://github.com/kien/ctrlp.vim.git 
#		git remote add -f delimitMate https://github.com/Raimondi/delimitMate.git 
#		git remote add -f dockerfile.vim https://github.com/ekalinin/Dockerfile.vim.git 
#		git remote add -f nerdtree https://github.com/scrooloose/nerdtree.git 
#		git remote add -f snipmate.vim https://github.com/msanders/snipmate.vim.git
#		git remote add -f syntastic https://github.com/scrooloose/syntastic.git 
#		git remote add -f tabular https://github.com/godlygeek/tabular.git 
#		git remote add -f tagbar https://github.com/majutsushi/tagbar.git 
#		git remote add -f tmuxline.vim https://github.com/edkolev/tmuxline.vim.git 
#		git remote add -f vim-better-whitespace https://github.com/ntpeters/vim-better-whitespace.git 
#		git remote add -f vim-colors-solarized https://github.com/altercation/vim-colors-solarized.git 
#		git remote add -f vim-easy-tags https://github.com/xolox/vim-easytags.git 
#		git remote add -f vim-fugitive https://github.com/tpope/vim-fugitive.git 
#		git remote add -f vim-gitgutter https://github.com/airblade/vim-gitgutter.git 
#		git remote add -f vim-misc https://github.com/xolox/vim-misc.git
#		git remote add -f vim-nerdtree-tabs https://github.com/jistr/vim-nerdtree-tabs.git 
#		git remote add -f vim-superman https://github.com/jez/vim-superman.git 
#		git remote add -f vim-surround https://github.com/tpope/vim-surround.git
#		git remote add -f vim-tmux-navigator https://github.com/christoomey/vim-tmux-navigator.git 
#		git remote add -f youCompleteMe https://github.com/Valloric/YouCompleteMe.git 
#		git remote add -f vim-scala https://github.com/derekwyatt/vim-scala.git

		git subtree add --prefix vim/bundle/a.vim a.vim master --squash
		git subtree add --prefix vim/bundle/ctrlp.vim ctrlp.vim master --squash
		git subtree add --prefix vim/bundle/delimitMate delimitMate master --squash
		git subtree add --prefix vim/bundle/dockerfile.vim dockerfile.vim master --squash
		git subtree add --prefix vim/bundle/nerdtree nerdtree master --squash
		git subtree add --prefix vim/bundle/snipmate.vim snipmate.vim master --squash
		git subtree add --prefix vim/bundle/syntastic syntastic master --squash
		git subtree add --prefix vim/bundle/tabular tabular master --squash
		git subtree add --prefix vim/bundle/tagbar tagbar master --squash
		git subtree add --prefix vim/bundle/tmuxline.vim tmuxline.vim master --squash
		git subtree add --prefix vim/bundle/vim-better-whitespace vim-better-whitespace master --squash
		git subtree add --prefix vim/bundle/vim-colors-solarized vim-colors-solarized master --squash
		git subtree add --prefix vim/bundle/vim-easy-tags vim-easy-tags master --squash
		git subtree add --prefix vim/bundle/vim-fugitive vim-fugitive master --squash
		git subtree add --prefix vim/bundle/vim-gitgutter vim-gitgutter master --squash
		git subtree add --prefix vim/bundle/vim-misc vim-misc master --squash
		git subtree add --prefix vim/bundle/vim-nerdtree-tabs vim-nerdtree-tabs master --squash
		git subtree add --prefix vim/bundle/vim-superman vim-superman master --squash
		git subtree add --prefix vim/bundle/vim-surround vim-surround master --squash
		git subtree add --prefix vim/bundle/vim-tmux-navigator vim-tmux-navigator master --squash
		git subtree add --prefix vim/bundle/youCompleteMe youCompleteMe master --squash
		git subtree add --prefix vim/bundle/vim-scala vim-scala master --squash

update: update-vim

update-vim:
		git subtree pull --prefix vim/bundle/a.vim a.vim master --squash
		git subtree pull --prefix vim/bundle/ctrlp.vim ctrlp.vim master --squash
		git subtree pull --prefix vim/bundle/delimitMate delimitMate master --squash
		git subtree pull --prefix vim/bundle/dockerfile.vim dockerfile.vim master --squash
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
		git subtree pull --prefix vim/bundle/vim-scala vim-scala master --squash
