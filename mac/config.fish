if status is-interactive
    set PATH /Users/sp/opt/anaconda3/bin $PATH
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/sp/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Brew
if status is-interactive
    # Commands to run in interactive sessions can go here
    # ・
    # ・（他にコマンドがあればここに記述されているはず）
    # ・
    eval (/opt/homebrew/bin/brew shellenv) # <= これを追加
end

# Rust
set PATH $HOME/.cargo/bin $PATH
