# My-ZSH
Essa é a minha configuração de terminal usando ZSH e mais alguma firulas.
Caso queira instale usando o arquivo Install ZSH-BUNITU.sh!

## Adendo e informações
Configuração para distro derivadas do Debian/Ubuntu.
Terminal que funciona 100%  -> deepin-terminal, instale usando o comando abaixo.
``` shell
sudo apt-get install deepin-terminal -y
```
Após instalar, abra o deepin-terminal e execute os comando abaixo!


## Instale o zsh e dependências

__1º)__ Instale as dependências
``` shell
sudo apt-get install git curl zsh -y
```

__2º)__ Verificas se foram instalados as dependências 
``` shell
which git curl zsh
```

## Instale as firulas

__1º)__ .oh-my-zsh -> habilita e pré configurar o zsh.
``` shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

__2º)__ powerlevel9k -> personalizar a barra de endereço do terminal.
``` shell
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

__3º)__ zsh-syntax-highlighting -> caso o comando exista ele dá um highlighting na palavra .
``` shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
```

__4º)__ zsh-autosuggestions -> autocompleta o que você está digitando a partir do historico.
``` shell
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

__4º)__ hack nerd-font -> instalação da font que dá suporte para personalizar as ligaduras dos textos.

Baixar
``` shell
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
```
Instalar
``` shell
file "Hack Regular Nerd Font Complete.ttf"
```

## Configure

__1º)__ Execute o comando abaixo para habilitar ZSH
``` shell
echo 'export ZSH="/home/'$USER'/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	dnf
)
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{#5b4866}╭─\uE0B6"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{#5b4866}╰─> "
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M:%S %p}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir dir_writable vcs ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true' > ~/.zshrc
```

__2º)__ Mude a font default do seu terminal, vá em configurações e mude a fort para __Hach Nerd Font__.


Tudo pronto feche o terminal e abra novamente.
