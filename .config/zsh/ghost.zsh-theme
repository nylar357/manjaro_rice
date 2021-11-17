# Comment
num_dirs=2 # Use 0 for full path
truncated_path="[%{$fg[yellow]%}%$num_dirs~%f]"    
hostname="%F{sfg_bold[magenta]%}%n %m"
local user_host='%{$terminfo[bold]$fg[cyan]%}[%n@%m] %{$reset_color%}'
local git_branch='$(git_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
decoration1="${truncated_path}─────ᐅ  %{$reset_color%}"
PROMPT="[%*] ${git_branch}
%B${decoration1}%b "

RPROMPT="${user_host}"


#if [[ -n $SSH_CONNECTION   ]]; then
#RPROMPT='%B%F{198}%n%f%{$fg_bold[white]%}→%F{201}%m%f%{$reset_color%} $truncated_path $background_jobs'
#else
#  RPROMPT='$background_jobs'
#fi


 
 ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[cyan]%}[  on%{$reset_color%} %{$fg[212]%}"
 ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}  ]"
 ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[103]%}  %{$FG[210]%}✘✘✘"
 ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[103]%}  %{$FG[040]%}✔"
 ZSH_THEME_RUBY_PROMPT_PREFIX="%{$FG[239]%}using%{$FG[243]%} ‹"
 ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"
 
# Input in bold
zle_highlight=(default:bold)
