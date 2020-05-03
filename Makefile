.GNOME: packages vimrc commit nvidia
.DEFAULT: feature
packages:
	@apt install $$(cat packages)
vimrc:
	@git clone git@github.com:Michael1015198808/vimrc.git ~/.vim_runtime
	@sh ~/.vim_runtime/install_aewsome_vimrc.sh
commit:
	@git add .
	@git commit
	@git push -u origin master
nvidia:
	@apt install nvidia-settings
	@ubuntu-drivers autoinstall
