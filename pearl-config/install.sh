
function post_install(){
    local giturl=https://github.com/robbyrussell/oh-my-zsh.git

    info "Installing or updating the ${PEARL_PKGNAME} git repository..."
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/oh-my-zsh" master
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf "${PEARL_PKGVARDIR}/oh-my-zsh"
}
