# If I am root, set the prompt to bright red
if [ ${UID} -eq 0 ]; then PROMPT_COLOUR=$Red ; fi
# Default to yellow if the colour isn't already set
if [[ -z "$PROMPT_COLOUR" ]]; then PROMPT_COLOUR=$Yellow ; fi
# This sets the prompt to: "hostname top-level-directory[git_info] $"
PS1="\[$PROMPT_COLOUR\]\h \W\$(git_prompt_info '[%s]') \$ \[$Color_Off\]"
PS2='> '
PS4='+ '

# This is jeff overriding PS1 until he can understand Peter's Magic
PS1='\[\e[32;1m\]\u@\h:\w\$\[\e[0m\] '

export PS1 PS2 PS4
