# ~/.config/fish/config.fish
# 主配置文件 - 仅包含通用配置和平台判断


switch (uname -s)
    case Linux
        source ~/.config/fish/config.linux.fish
    case Darwin
        source ~/.config/fish/config.mac.fish
end

### 通用配置（所有平台生效） ###
if status is-interactive
    set fish_greeting
    # 所有平台通用的交互式工具
    command -q atuin && atuin init fish | source
    command -q starship && starship init fish | source
    command -q pyenv && pyenv init - | source
end

# 环境变量
set -gx GPG_TTY (tty)

# 别名
command -q nvim && alias vim=nvim
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

