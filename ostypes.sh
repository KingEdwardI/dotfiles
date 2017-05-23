if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # ...
        echo "linux-gnu"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        echo "mac osx"
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
        echo "cygwin"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
        echo "freebsd"
else
        # Unknown.
        echo "unknown"
fi
