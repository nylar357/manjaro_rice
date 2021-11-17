# zsh theme requires 25,6 color enabled terminal
# i.e TERM=xterm-256color
# Preview - https://www.flickr.com/photos/adelcampo/4556482563/sizes/o/
# based on robbyrussell's shell but louder!

num_dirs=2 # Use 0 for full path
background__jobs="%(1j.%F{green} %f.)"
truncated_path="%F{163}[%$num_dirs~%f]"
userhost='%{$terminfo[bold]$fg[magenta]%}[%n⬢%m] %{$reset_color%}'
ret_status="[%(?:%{sfg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)]"
post_prompt='%F{091}╰─%F{200}─%F{197}─%F{125}─%F{202}─%F{216}─%F{159}❯%F{117}'
pre_prompt='%F{128}╭─%F{132}'
non_zero_return_value="%(0?..%F{yellow}  %f)"
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '     '
}

PROMPT='${pre_prompt}%{$fg_bold[cyan]%}$truncated_path$(git_prompt_info) %F{208}
%{$fg_bold[white]%}${post_prompt}$(prompt_char) %{$reset_color%}'

if [[ -n $SSH_CONNECTION  ]]; then
   RPOMPT='$userhost $ret_status $truncated_path'
else
    RPROMPT='%B%F{161}%n%f%{$fg[pink]%}%F{205}‹⬢›%F{201}%m%f%{$reset_color%}'   
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%F{033}[%f%F{037}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘%B%F{037}]%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}  %F{154}|"

