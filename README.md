# pyenv-install-essentials

This is a very simple plugin that provides the command
```
pyenv install-essentials
```
which installs what I consider to be "essential" packages
into the current environment. These are (currently):

* numpy
* matplotlib
* pandas
* seaborn
* ipython
* jupyter
* pytest
* flake8
* black
* black-macchiato

Additionally, it installs an IPython kernel for the current virtual environment.
This makes it possible to choose the kernel of this virtual environment in the
jupyter web interface.

## Installation

Just copy the content of this repository to
`$PYENV_ROOT/plugins/pyenv-science-essentials`, e.g. by
```
cd $PYENV_ROOT/plugins
git clone TODO
```

## Uninstall IPython kernels

This plugin contains a hook for uninstalling installed IPython kernels.
The hook is run when calling
```
pyenv uninstall <env_name>
```
`pyenv-virtualenv` will will prompt you whether you really want to uninstall. 
However, currently the IPython kernel will get removed regardless of the answer.

## Notes

This is mostly intended for personal use, and does not really do a lot. It
actually just runs
```
pip install --upgrade pip
pip install "${essentials[@]}"
python -m ipykernel install --user --name="IPython-${PYENV_VERSION}"
```
but I never remember the last command.

Overall the bash scripts are not extremely safe to use, so be cautious if you are
using this on another system.

This was to some extent inspired by
[pyenv-jupyter-kernel](https://github.com/aiguofer/pyenv-jupyter-kernel).
