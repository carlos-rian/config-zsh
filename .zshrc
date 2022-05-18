export ZSH="/home/carlos-rian/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
        git
        zsh-syntax-highlighting
        zsh-autosuggestions
        dnf
)
source $ZSH/oh-my-zsh.sh
source $HOME/.poetry/env
alias ipython="/home/carlos-rian/.local/bin/ipython3"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"


POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{#5b4866}╭─"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{#5b4866}╰─> "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{#D6ACFF}╭─"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{#D6ACFF}╰─> "

POWERLEVEL9K_TIME_FORMAT="%D{%I:%M:%S %p}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir dir_writable vcs ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PYTHON_ICON= #UE73C
POWERLEVEL9K_VIRTUALENV_BACKGROUND=red
POWERLEVEL9K_VIRTUALENV_FOREGROUND=white
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs virtualenv time)

export PATH="$HOME/.poetry/bin:$PATH"