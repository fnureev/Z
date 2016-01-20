# error
local ret_status="%(?::%{$bg[red]%}%{$fg_bold[block]%} ERR %{$reset_color%})"

# vim is running
local vim_status=""
if [ -n "${VIM}" ]; then
    vim_status="%{$bg[yellow]%} %{$fg_no_bold[white]%}% VIM %{$reset_color%}"
fi

PROMPT='%{$fg_bold[white]%}%c: '
RPROMPT='$(vi_mode_prompt_info)${vim_status}${ret_status}$(git_prompt_info)'

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[grey]%}%{$fg_no_bold[white]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[white]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# vi-mode
MODE_INDICATOR="%{$bg[blue]%}%{$fg_bold[white]%} NORMAL %{$reset_color%}"

# correction
SPROMPT='zsh: Correct $fg[red]%R$reset_color to $fg[green]%r$reset_color ? [Yes/No/Abort/Edit] '
