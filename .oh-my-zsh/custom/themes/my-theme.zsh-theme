# error
local ret_status="%(?::%{$bg[red]%}%{$fg_bold[white]%} ERR %{$reset_color%})"

# vim is running
local vim_status=""
if [ -n "${VIM}" ]; then
    vim_status="%{$bg[yellow]%} %{$fg_no_bold[white]%}% VIM %{$reset_color%}"
fi

# git
function my_git_prompt_info() {
    if [ -d .git ]; then
        local git_prompt git_status='' flags remote ahead behind background
        flags=('--porcelain')
        if [[ $POST_1_7_2_GIT -gt 0 ]]; then
            flags+='--ignore-submodules=dirty'
        fi
        git_status=$(command git status ${flags} 2> /dev/null | tail -n1)

        git_prompt+="%{$fg_no_bold[white]%}"
        if [[ -n ${git_status} ]]; then
            background="%{$bg[green]%}"
        else
            background="%{$bg[grey]%}"
        fi

        remote=${$(command git rev-parse --verify ${hook_com[branch]}@{upstream} --symbolic-full-name 2>/dev/null)/refs\/remotes\/}
        if [[ -n ${remote} ]]; then
            ahead=$(command git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
            behind=$(command git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)

            if [[ $behind -gt 0 ]]; then
                background="%{$bg[red]%}"
            fi
        fi

        git_prompt+="${background}"

        git_prompt+=" $(git_current_branch) "
        git_prompt+="%{$reset_color%}"

        echo "${git_prompt}"
    fi
}

# vi-mode
MODE_INDICATOR="%{$bg[blue]%}%{$fg_bold[white]%} NORMAL %{$reset_color%}"

PROMPT='%{$fg_bold[white]%}%c: '
RPROMPT='$(vi_mode_prompt_info)${vim_status}${ret_status}$(my_git_prompt_info)'
