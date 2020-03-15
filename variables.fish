#!/bin/fish
# Configure fzf, command line fuzzy finder
set -Ux FD_OPTIONS "--hidden --follow --exclude .git"
set -Ux FZF_DEFAULT_OPTS "--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='bat --style=numbers --color=always {} || cat {} 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='ctrl-e:execute(bat --style=numbers {} || less -f {}),ctrl-b:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up'"

# Use git-ls-files inside git repo, otherwise fd
set -Ux FZF_DEFAULT_COMMAND "git ls-files --cached --others --exclude-standard || fd --type f --type l $FD_OPTIONS"
set -Ux FZF_CTRL_T_COMMAND "fd $FD_OPTIONS"
set -Ux FZF_ALT_C_COMMAND "fd --type d $FD_OPTIONS"

set -Ux BAT_PAGER "less -R"
set -Ux BAT_THEME "TwoDark"

set -Ux RIPGREP_CONFIG_PATH "$HOME/.ripgrep"
