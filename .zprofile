
# Setting PATH for Python 2.7
# The orginal version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

##source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
if [[ -x `which virtualenvwrapper.sh` ]]; then
    source virtualenvwrapper.sh
fi
