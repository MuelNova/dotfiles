# ~/.config/fish/config.fish
# 主配置文件 - 仅包含通用配置和平台判断

fish_add_path -g --path $HOME/.local/bin

switch (uname -s)
    case Linux
        source $HOME/.config/fish/config.linux.fish
    case Darwin
        source $HOME/.config/fish/config.mac.fish
end

### 通用配置（所有平台生效） ###
if status is-interactive
    set fish_greeting
    # 所有平台通用的交互式工具
    command -q atuin && atuin init fish | source
    command -q starship && starship init fish | source
    # command -q pyenv && pyenv init - | source  # use uv instead
end

# 环境变量
set -gx GPG_TTY (tty)

# 别名
command -q nvim && alias vim=nvim

