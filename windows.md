
1. Install Pyenv for Windows

https://github.com/pyenv-win/pyenv-win

2. Install Python 3.10

```bash
pyenv install 3.10
```

3. Set Python 3.10 as the global version

```bash
pyenv global 3.10
```

4. Install Poetry

```bash
(Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | python -
```

5. Add Poetry to the PATH

```bash
%APPDATA%\Python\Scripts
```

6. Install Azure Functions Core Tools

https://go.microsoft.com/fwlink/?linkid=2174087

