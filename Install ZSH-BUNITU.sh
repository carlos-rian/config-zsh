# Install ZSH and dependencies
echo "=-=-=-=-= Installing dependencies =-=-=-=-=\n"
sudo apt-get install git curl zsh -y
echo "\n*-*-*-*-* git, curl e zsh *-*-*-*-*\n"
which git curl zsh
echo "\n*-*-*-*-* git, curl e zsh *-*-*-*-*\n"
echo "=-=-=-=-= Installed dependencies =-=-=-=-=-\n\n"


# Install .oh-my-zsh
echo "=-=-=-=-= Installing Oh My ZSH =-=-=-=-=\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "\n=-=-=-=-= Installed Oh My ZSH =-=-=-=-=-\n\n"

# Install powerlevel9k
echo "=-=-=-=-= Installing powerlevel9k =-=-=-=-=\n"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "\n=-=-=-=-= Installed powerlevel9k =-=-=-=-=-\n\n"

# Install hack nerd-font
echo "= Installing Hack Regular Nerd Font Complete =\n"
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
file "Hack Regular Nerd Font Complete.ttf"
echo "\n= Installed Hack Regular Nerd Font Complete =\n\n"


# Configure zshrc
echo "=-=-=-=-=-=-= Setting .zshrc =-=-=-=-=-=-=-=-=\n"
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
echo "\n=-=-=-=-=-=-= Setting .zshrc =-=-=-=-=-=-=-=-="