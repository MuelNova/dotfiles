function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    atuin init fish | source
end


# wal -c
# wal -i /mnt/c/Users/nova/AppData/Roaming/Microsoft/Windows/Themes/WallpaperEngineOverride.jpg -q -n
# wal -R -n

pyenv init - | source
export GPG_TTY=$(tty)
# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
# if test -f ~/.cache/wal/colors.fish
#     source ~/.cache/wal/colors.fish
# end


# Created by `pipx` on 2024-09-23 06:51:11
set PATH $PATH /home/nova/.local/bin
set PATH $PATH /home/nova/.local/share/gem/ruby/3.3.0/bin
set CPATH $CPATH /home/nova/workspace/KrNoPwn/src
set C_INCLUDE_PATH $C_INCLUDE_PATH /home/nova/workspace/KrNoPwn/src
alias vim=nvim
starship init fish | source
alias ida=ida.exe
alias exp="explorer.exe ."
status --is-interactive; and source (pyenv virtualenv-init -|psub)

set GOENV_ROOT $HOME/.goenv
set PATH $PATH $GOENV_ROOT/bin
# status --is-interactive; and source (goenv init -|psub)
