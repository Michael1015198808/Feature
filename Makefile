.GNOME: packages vimrc zshrc tmux nvidia
.DEFAULT: feature
packages:
	@apt install $$(cat packages)
vimrc:
	@git clone git@github.com:Michael1015198808/vimrc.git ~/.vim_runtime || exit
	@sh ~/.vim_runtime/install_aewsome_vimrc.sh
	@git -C ~/.vim_runtime remote add author https://github.com/amix/vimrc
zshrc:
	@sh -c "$(curl -fsSL https://raw.githubusercontent.com/michael1015198808/ohmyzsh/master/tools/install.sh)" || exit
	@git -C ~/.oh-my-zsh remote add author https://github.com/ohmyzsh/ohmyzsh.git
tmux:
	@git clone git@github.com:Michael1015198808/.tmux.git ~/.tmux || exit
	@ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
	@cp ~/.tmux/.tmux.conf.local ~/
	@git -C ~/.oh-my-zsh remote add author https://github.com/gpakosz/.tmux
nvidia:
	@apt install nvidia-settings
	@ubuntu-drivers autoinstall
