#!/bin/bash
# Parte 1: ZSH
# Parte 2: Configuração do ZSH
# Parte 3: Instalando Oh-My-ZSH
# Parte 4: Intalando plugins oh my zsh
# Parte 5: Zenit

###############################################################################
# Parte 1
###############################################################################

#Instalando ZSH
echo '💫 Installing ZSH... 💫'
if cd ~/ && sudo apt install zsh; then
    echo '✅ ZSH successfully installed'
else
    echo '❌ Failed to install ZSH'
fi

###############################################################################
# Parte 3
###############################################################################

# Instala o oh my zsh
echo '💫 Installing oh my zsh... 💫'
if cd ~/ && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; then
    echo '✅ Oh my zsh successfully installed'
else
    echo '❌ Failed to install Oh my zsh'
fi

###############################################################################
# Parte 4
###############################################################################

# Instala o plugins
echo '💫 Installing oh my zsh plugins... 💫'
if cd ~/ && sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"; then
    echo '✅ Plugins successfully installed'
else
    echo '❌ Failed to install plugins'
fi

echo '💫 Configuring Zenit... 💫'
if cd ~/ && echo -e "zinit light zdharma/fast-syntax-highlighting\nzinit light zsh-users/zsh-autosuggestions\nzinit light zsh-users/zsh-completions" >> .zshrc; then
    echo '✅ Zinit successfully configured'
else
    echo '❌ Failed to configure zenit'
fi

###############################################################################

echo "Concluído! Let's code!"
