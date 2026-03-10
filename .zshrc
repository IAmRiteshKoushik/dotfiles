# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME="/usr/lib/jvm/java-24-openjdk"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform_tools
export PATH=$PATH:$HOME/go/bin

ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

alias x="exit"
alias nonet="bash ~/scripts/net.sh"
alias blu="systemctl start bluetooth.service"
alias noblu="systemctl stop bluetooth.service"
alias pn="pnpm"
alias v="nvim"
alias cat="bat"

# -- Workspace settings
alias dev="cd ~/ws/dev/ && ls"
alias dsa="cd ~/ws/dsa/ && ls"
alias ace="cd ~/ws/ace/ && ls"
alias oss="cd ~/ws/oss/ && ls"

# -- Brightness commands
alias bri="brightnessctl set 100%"
alias bri60="brightnessctl set 60%"
alias bri30="brightnessctl set 30%"
alias nobri="brightnessctl set 0%"

# -- Quick commands
alias fix="sudo systemctl restart systemd-timesyncd"
alias tt="bat ~/tt.md"
alias sdn="shutdown now"
alias onenv="source ~/venv/bin/activate"
alias adb="adb shell dumpsys battery set usb 0"
alias noadb="adb shell dumpsys battery set usb 1"

. "$HOME/.local/bin/env"

alias lg="lazygit"
alias ld="lazydocker"

# Rust aliases
alias cr="cargo run"
alias ct="cargo test"

# Golang aliases
alias goi='go mod init github.com/IAmRiteshKoushik/$(basename "$PWD")'
alias got='go mod tidy'
alias gor='go run .'
alias task='go-task'

# Mobile development aliases
alias gr="gradle run"
alias gb="gradle build"
alias fr="flutter run"
alias gci="gh issue create"

# Elixir
alias elx="elixir"

# pnpm
export PNPM_HOME="/home/rk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.avm/bin:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"

# export DOCKER_HOST="unix:///run/user/1000/podman/podman.sock"
# alias docker="podman"

# Setup zoxide
eval "$(zoxide init --cmd cd zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"

# fnm
FNM_PATH="/home/rk/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# bun completions
[ -s "/home/rk/.bun/_bun" ] && source "/home/rk/.bun/_bun"
alias br="bun run"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/sbin/gemini:$PATH"

export NVM_LAZY_LOAD=true
source "$HOME/.zsh-nvm.zsh"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GOPRIVATE=github.com/truck-hai/*

# opencode
export PATH=/home/rk/.opencode/bin:$PATH
