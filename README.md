Es necesario instalar:

- nerdfont para la terminal
- Vim-plug:
	```bash
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	```
- angular language service:
	```bash
	sudo npm install -g @angular/language-server
	```
- typescript language service:
	```bash
	sudo npm install -g typescript typescript-language-server
	```
- css y html language service:
	```bash
	sudo npm i -g vscode-langservers-extracted
	```
- rust analyzer: Desde administrador de paquetes a eleccion;

Antes de empezar:

- abrir nvim y ejecutar comando:
	PluginInstall
