.GNOME: feature update commit nvidia test test2
.DEFAULT: feature
feature:
	@apt install $$(cat packages)
	@snap install $$(cat softwares)
	@cp .vimrc ~/.vimrc
	@cp /etc/apt/source.list /etc/apt/.backup.source.list
	@cp .source.list /etc/apt/source.list
commit:
	@git add .
	@git commit
	@git push -u origin master
nvidia:
	@apt install nvidia-settings
	@ubuntu-drivers autoinstall
