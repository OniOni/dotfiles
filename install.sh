d=`dirname $0`
install() {
    echo "Linking "$1
    ln $d/$1 ~/
}

install .emacs
install .gitconfig
