
# Pip
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

if [ -x '/usr/local/Cellar' ]
then
    PATH=/usr/local/share/python:$PATH
    export PATH
fi

if type virtualenvwrapper.sh >/dev/null 2>&1 
then
    source virtualenvwrapper_lazy.sh
else
    echo "no virtualenvwrapper"
fi
