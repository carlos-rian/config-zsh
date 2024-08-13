# Initial linux configuration ([UBUNTU 24.04](ms-windows-store://pdp?hl=en-us&gl=us&referrer=storeforweb&source=https%3A%2F%2Fwww.google.com%2F&productid=9nz3klhxdjp5&ocid=storeweb-pdp-open-cta))


## 1. Update and upgrade
```bash
sudo apt update && sudo apt upgrade -y
```

## 2. Install basic tools

- Install basic packages

```bash
sudo apt install -y \
    git \
    curl \
    zsh \
    wget \
    make \
    llvm \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev
```

- Install ohmyzsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
```

- Install zsh-syntax-highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
```

- Install zsh-autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```


- Replace the zshrc default configs

```bash
cp .zshrc ~/.zshrc
cp .zshenv ~/.zshenv
cp .p10k.zsh ~/.p10k.zsh
```

- Install pyenv

```bash
curl https://pyenv.run | zsh
```

- Install poetry

```bash
curl -sSL https://install.python-poetry.org | python -
```

- Install python3.11

```bash
pyenv install 3.11 && pyenv global 3.11
```
