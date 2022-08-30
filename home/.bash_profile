if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi


if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]
    then exec startx 
fi

. "$HOME/.cargo/env"
export PATH=$PATH:/home/exst/.spicetify
