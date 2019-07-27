# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/theme-and-appearance.zsh

# ls colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

if [[ "$DISABLE_LS_COLORS" != "true" ]]; then
	# For GNU ls, we use the default ls color theme. They can later be overwritten by themes.
	if [[ -z "$LS_COLORS" ]]; then
	  (( $+commands[dircolors] )) && eval "$(dircolors -b)"
	fi

	ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }

	# Take advantage of $LS_COLORS for completion as well.
	zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

setopt auto_cd
setopt multios

