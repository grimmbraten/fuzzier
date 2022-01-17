if ! command -v fzf &>/dev/null; then
    echo "[fuzzier] Missing required dependency!\nPlease install 'fzf' before using this plugin.\nhttps://github.com/junegunn/fzf"
fi

if ! command -v bat &>/dev/null; then
    echo "[fuzzier] Missing required dependency!\nPlease install 'bat' before using this plugin.\nhhttps://github.com/sharkdp/bat"
fi

fuzzier() {
    fzf --query="$1" --preview 'bat --style=numbers --color=always --line-range=:500 {} '
}
