# see: http://zsh.sourceforge.net/Guide/zshguide02.html

# Shell Options
## shwordsplit      - allows $foo to expand to multiple space delimeted arguments, instead of
##                    just one argument.
## globsubst        - allow glob substitutions to be expanded when done so inside of variables.
##                    eg. foo='*'; find $foo; will behave just as if you type `find *` directly.
## nonotify         - don't interrupt me to let me know a background jobs finished.
## localoptions     - any setopt/unsetopt within a function are undone on exit.
## localtraps       - any and trap calls within a function are undone on exit.
## promptpercent    - allow % substitutions in zsh prompts.
## promptsubst      - allow ${} substitutions in zsh prompts.
## appendhistory    - write to history file after every command
## incappendhistory - don't truncate history file.
## histfindnodups   - you can store duplicates, but don't show them as distinct candidates.
## histignorespace  - any command lines beginning with an empty space, doesn't get stored in history.
## histnofunctions  - don't store functions in history as functions. foo() { : }, isn't very readable.
## nohistbeep       - supress any history dings. it's bad enough when a GUI does it.
## autocd           - trying to execute a directory, will change you into it.
setopt shwordsplit globsubst nonotify localoptions localtraps promptpercent \
       promptsubst appendhistory incappendhistory histfindnodups histignorespace \
       histnofunctions nohistbeep autocd nobeep

# shells should be like emacs, not vim :P.
bindkey -e
bindkey "^[[1;5C" forward-word  # <C-right>
bindkey "^[[1;5D" backward-word # <C-left>

# where to look for autoloads
fpath=("$SCRIPTS_DIR/zsh" "$fpath[@]")

autoload -U compinit && compinit

[ "${SMART_TERM:-0}" -eq 1 ] && . "$SCRIPTS_DIR/.ps1/zsh"