# ~/.config/fish/config.mac.fish
# macOS 专属路径

### 架构感知路径
set -l brew_prefix
if test -d /opt/homebrew  # Apple Silicon
    set brew_prefix /opt/homebrew
else if test -d /usr/local/Homebrew  # Intel
    set brew_prefix /usr/local
end

### Homebrew 路径
if set -q brew_prefix
    fish_add_path -g --path \
        $brew_prefix/bin \
        $brew_prefix/sbin \
        $brew_prefix/opt/coreutils/libexec/gnubin
    
    set -gx MANPATH $brew_prefix/share/man $MANPATH
    set -gx INFOPATH $brew_prefix/share/info $INFOPATH
end

### macOS 特殊路径
fish_add_path -g --path \
    /Library/Apple/usr/bin \
    /Applications/Xcode.app/Contents/Developer/usr/bin

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
