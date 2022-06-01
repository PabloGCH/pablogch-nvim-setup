Es necesario instalar:

- nerdfont para la terminal
- Vim-plug:

		sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- angular language service:

		npm install -g @angular/language-server
- typescript language service:

		npm install -g typescript typescript-language-server
- css y html language service:

		npm i -g vscode-langservers-extracted
Antes de empezar:

- nvim deberia ejecutar comando:
	
		PluginInstall
