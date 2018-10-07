.GNOME: feature test
.DEFAULT: feature
test:
	@echo test
feature:
	@apt install $(cat packages)
	@cp .vimrc ~/.vimrc
