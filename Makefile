.GNOME: feature update commit nvidia test test2
.DEFAULT: feature
feature:
	@apt install $$(cat packages)
	@snap install $$(cat softwares)
	@cp .vimrc ~/.vimrc
update:
	@git add .
	@git commit
commit:
	@git push -u origin master
nvidia:
	@apt install nvidia-settings
	@ubuntu-drivers autoinstall
test:
	echo test
test2:
	echo test2
