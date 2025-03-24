# ~/.config/fish/config.linux.fish
# Linux 专属路径

set -gx PATH $PATH \
    $HOME/.local/bin \
    $HOME/.local/share/gem/ruby/3.3.0/bin

set -gx CPATH $CPATH $HOME/workspace/KrNoPwn/src
set -gx C_INCLUDE_PATH $C_INCLUDE_PATH $HOME/workspace/KrNoPwn/src


alias ida=ida.exe
alias exp="explorer.exe ."

set -gx GOENV_ROOT $HOME/.goenv
set -gx PATH $PATH $GOENV_ROOT/bin