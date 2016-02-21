# Z for zshrc

## Installation
0. sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
1. mkdir -p ~/.zsh
2. git clone https://github.com/fnureev/Z ~/.zsh
3. rm ~/.zshrc && ln -s ~/.zsh/.zshrc ~/.zshrc
4. mkdir -p ~/.oh-my-zsh/custom/themes/
5. ln -s ~/.zsh/themes/my-theme.zsh-theme ~/.oh-my-zsh/custom/themes/my-theme.zsh-theme
6. source ~/.zshrc
