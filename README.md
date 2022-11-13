CONFIGURACION DE NEOVIM
========================

SETUP
------------------------------

Este repo debe ser clonado con el nombre de "nvim" en la direccion "/.config"
De modo que la configuracion se encuentre en /.config/nvim

INSTRUCCIONES:
------------------------------
Es necesario instalar:

- Neovim
- Nerdfont para la terminal, para que neovim pueda usar iconos (a eleccion del usuario)
- Para instalar los plugins Vim-plug:
	```bash
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	```
- Servicios de lenguajes
	- angular language service:
		```bash
		npm install -g @angular/language-server
		```
	- typescript language service:
		```bash
		npm install -g typescript typescript-language-server
		```
	- css y html language service:
		```bash
		npm i -g vscode-langservers-extracted
		```
	- rust
		```bash
		mkdir -p ~/.local/bin

		curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer

		chmod +x ~/.local/bin/rust-analyzer
		```

- Al iniciar neovim sera necesario ejecutar el siguiente comando para instalar los plugins
	```
	:PluginInstall
	```

