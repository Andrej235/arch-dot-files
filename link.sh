directories=$(ls -d */)

for current in $directories; do
    if [ -e $HOME/.config/$current ]; then
        echo "~/.config/$current already exists, removing..."
        rm -rf $HOME/.config/$current
        ln -s $PWD/$current $HOME/.config
    else
        ln -s $PWD/$current $HOME/.config
    fi
done
