# Learn more about 'keychain' at http://www.funtoo.org/Keychain

# load keychain if we're interactive
fd=0
if [[ -t "$fd" || -p /dev/stdin ]]; then
    if which keychain > /dev/null; then
        if [ -f ~/.mykeychain ]; then
            source ~/.mykeychain

            eval `$(which keychain) --eval --agents ssh --inherit any-once ${KEYS}`
        else
            # ~/.mykeychain contains 'KEYS' which is a list
            # of private keys to load
            # e.g. KEYS=" ${HOME}/.ssh/id_dsa ${HOME}/.ssh/github_rsa "
            #
            # NOTE: the spaces at the beginning and end are critical!
            echo "\"~/.mykeychain\" missing; not loading keychain"
        fi
    fi
fi
