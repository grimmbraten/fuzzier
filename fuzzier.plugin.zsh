if ! command -v fzf &>/dev/null; then
    echo "Please install fzf before using this plugin."
fi

if ! command -v bat &>/dev/null; then
    echo "Please install bat before using this plugin."
fi

fuzzier() {
    if [ -z "$1" ]; then
        fzf --preview 'bat --style=numbers --color=always {} | head -n 480'

    else
        fzf --query="$1" --preview 'bat --style=numbers --color=always {} | head -n 480'
    fi
}
