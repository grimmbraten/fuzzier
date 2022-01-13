if ! command -v fzf &>/dev/null; then
    echo "[fuzzier] Please install 'fzf' before using this plugin.\n"
fi

if ! command -v bat &>/dev/null; then
    echo "[fuzzier] Please install 'bat' before using this plugin.\n"
fi

fuzzier() {
    if [ -z "$1" ]; then
        fzf --preview 'bat --style=numbers --color=always --line-range=:500 {}'

    else
        fzf --query="$1" --preview 'bat --style=numbers --color=always --line-range=:500 {} '
    fi
}
