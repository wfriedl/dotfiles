Installation

    git clone https://github.com/wfriedl/dotfiles.git
    sh dotfiles/bin/dotfiles_setup.sh


Upgrading vim plugins

    sh dotfiles/bin/dotfiles_update.sh


Add vim pulgins to pathogen bundles

    cd dotfiles
    git submodule add https://github.com/path/to/module .vim/bundle/module

---
References

    http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
