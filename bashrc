#
# ~/.bashrc
#
figlet Pablo MP
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

# Alias cortos
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# Colores en ls
export LS_OPTIONS='--color=auto'
eval "`dircolors`"

# Añade binarios de usuario al PATH
export PATH="$HOME/bin:$PATH"

# Configuración de la línea de comandos de Bash
PS1='\[\e[1;31m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '

# Si está disponible, incluir archivos .bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
