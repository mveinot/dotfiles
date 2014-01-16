if which brew > /dev/null; then
    BASHCOMPLETE_DIR="$(brew --prefix)/etc/bash_completion.d"

    if [ -d $BASHCOMPLETE_DIR ]; then
        for f in $(ls $BASHCOMPLETE_DIR); do
            source $BASHCOMPLETE_DIR/$f
        done
    fi
fi
