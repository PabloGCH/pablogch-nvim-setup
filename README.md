Es necesario instalar:

- nerdfont para la terminal
- Vim-plug:

		sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- angular language service:

		sudo npm install -g @angular/language-server
- typescript language service:

		sudo npm install -g typescript typescript-language-server
- css y html language service:
```bash
		sudo npm i -g vscode-langservers-extracted
```
- rust analyzer

Antes de empezar:

- nvim deberia ejecutar comando:
	
		PluginInstall
