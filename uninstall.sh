#!/bin/zsh

{
    perl -0777 -pi -e 's/### BEGIN VSR REGISTRATION ###[^#]*### END VSR REGISTRATION ###//' ~/.zshrc && \
        rm /usr/local/bin/vsr && \
        echo "$fg[green]"'[SUCCESS]'"$reset_color"' vsr removed!' && \
        echo "Please restart your shell to start clean." && \
        echo ''
} || {
    echo "$fg[red]"'[ERROR]'"$reset_color"' vsr uninstall aborted; please refer to above error(s).' && \
        echo ''
}
