#!/bin/bash
# Parte 1: Receber o email do usuário
# Parte 2: Executar o ssh git
# Parte 3: Cat no arquivo publico

###############################################################################
# Parte 1
###############################################################################

#Receber o email do usuário
echo '💫 receiving user email... 💫'
echo -n "Digite seu e-mail HP e pressione [ENTER]: "
read email
echo "✅ Email "$email" typed successfully"

###############################################################################
# Parte 2
###############################################################################

# Configurar ssh
echo '💫 Configuring SSH... 💫'
if ssh-keygen -t ed25519 -C ""$email""; then
    echo '✅ SSH successfully configured'
else
    echo '❌ Failed to configure SSH'
fi

###############################################################################
# Parte 3
###############################################################################

# Configurar ssh
echo '💫 Configuring SSH... 💫'
if cat ~/.ssh/id_ed25519.pub; then
    echo '✅ Cat successfully performed'
else
    echo '❌ Failed to perform Cat'
fi

###############################################################################

echo "Concluído! Let's code!"
