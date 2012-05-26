Installation

    git clone git://github.com/wfriedl/dotvim.git ~

Create symlink for vimrc

    ln -s ~/.vim/vimrc ~/.vimrc

Update vim and other submodules

    git submodule update --init


Upgrading vim plugins

    git submodule foreach git pull origin master


References

    http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
