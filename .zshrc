# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/home/rk/.config/emacs/bin/:$PATH"
export PATH=$PATH:$HOME/apps/minio-binaries
export JAVA_HOME="/usr/lib/jvm/java-24-openjdk"

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform_tools
export PATH=$PATH:$HOME/go/bin

ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

alias x="exit"
alias blu="systemctl start bluetooth.service"
alias noblu="systemctl stop bluetooth.service"
alias pn="pnpm"
alias docker='podman'
alias v="nvim"

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

# -- Reset datetime
alias fix="sudo systemctl restart systemd-timesyncd"
alias tt="bat ~/tt.md"
alias sdn="shutdown now"
alias onenv="source ~/venv/bin/activate"

. "$HOME/.local/bin/env"

alias code="/opt/cursor.appimage $@"
alias lg="lazygit"
alias ld="lazydocker"
alias cr="cargo run"
alias goi='go mod init github.com/IAmRiteshKoushik/$(basename "$PWD")'

# Mobile development aliases
alias gr="gradle run"
alias gb="gradle build"
alias fr="flutter run"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

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

export DOCKER_HOST="unix:///run/user/1000/podman/podman.sock"

# Setup zoxide
eval "$(zoxide init --cmd cd zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
