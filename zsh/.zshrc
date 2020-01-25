# -------------------- ZSH Configuration --------------------------

export ZSH="/home/will/.oh-my-zsh" # Installation location
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git sudo)
source $ZSH/oh-my-zsh.sh

# ---------------- Powerlevel9K configuration ---------------------
# Segment colors
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='red'
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_ETC_BACKGROUND='red'
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND='red'
# Segment configuration
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon host user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# ------------------------- Aliases -------------------------------
alias zshconf="$EDITOR ~/.zshrc"
alias swayconf="$EDITOR ~/.config/sway/config"
alias barconf="$EDITOR ~/.config/waybar/config.json"
alias barstyle="$EDITOR ~/.config/waybar/style.css"

# ---------------------- Initialisation ---------------------------
neofetch

