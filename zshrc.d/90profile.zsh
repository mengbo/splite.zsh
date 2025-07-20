if [ -d ~/.profile.d ]; then
    for i in ~/.profile.d/*.sh(N); do
        if [ -r $i ]; then
            source $i
        fi
    done
    unset i
fi
