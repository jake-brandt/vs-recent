#!/bin/zsh

{
    ln -s $(pwd)/vsr.sh /usr/local/bin/vsr && \
        echo '### BEGIN VSR REGISTRATION ###' >> ~/.zshrc && \
        echo "export fpath=($(pwd) "'$fpath)' >> ~/.zshrc && \
        echo "alias vsr='. vsr'" >> ~/.zshrc && \
        echo 'compinit' >> ~/.zshrc && \
        echo '### END VSR REGISTRATION ###' >> ~/.zshrc && \
        echo "$fg[green]"'[SUCCESS]'"$reset_color"' vsr setup completed!' && \
        echo "Functionality will be available after a restart of your shell, or run \"source ~/.zshrc\" to get the changes immediately." && \
        echo ''
} || {
    echo "$fg[red]"'[ERROR]'"$reset_color"' vsr setup aborted; please refer to above error(s).' && \
        echo ''
}
