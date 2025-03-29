# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/atle/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
setopt CORRECT
unsetopt BEEP
setopt globdots
ZIM_CONFIG_FILE=~/.config/zsh/zimrc
ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi
# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

#eval "$(ssh-agent)"
#ssh-add ~/.ssh/github_atle

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
