
function _config_information(){
    info "The oh-my-zsh config template is located in:"
    echo "    $PEARL_PKGDIR/module/templates/zshrc.zsh-template"
    info "Put all the oh-my-zsh config you want in ~/.zshrc BEFORE the pearl source command that should look like:"
    echo "    source $PEARL_ROOT/boot/pearl.sh"
    return 0
}

function post_install(){
    _config_information
}

function post_update(){
    _config_information
}

function pre_remove(){
    return 0
}
