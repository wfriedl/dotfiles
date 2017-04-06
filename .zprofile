
# Pip
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=True
# security add-generic-password -a ${USER} -s github-api-token -p <token>
export HOMEBREW_GITHUB_API_TOKEN=`security find-generic-password -gs github-api-token 2>&1 >/dev/null | awk '/password/ {print $2}' | tr -d \\ | tr -d '"' `

# python
export PYTHONPATH=$HOME/code/python

if [ -x '/usr/local/Cellar' ]
then
    PATH=/usr/local/sbin:$PATH
    export PATH
fi

if type virtualenvwrapper.sh >/dev/null 2>&1 
then
    source virtualenvwrapper_lazy.sh
else
    echo "no virtualenvwrapper"
fi
