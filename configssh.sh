#!/bin/bash
# Parte 1: Receber o email do usuário
# Parte 2: Executar o ssh git
# Parte 3: Cat no arquivo publico

cat <<'EOF'
   _____                          _  _                          
  / ____|                        | |(_)                         
 | |      ___   _ __ ___   _ __  | | _   __ _  _ __    ___  ___ 
 | |     / _ \ | '_ ` _ \ | '_ \ | || | / _` || '_ \  / __|/ _ \
 | |____| (_) || | | | | || |_) || || || (_| || | | || (__|  __/
  \_____|\___/ |_| |_| |_|| .__/ |_||_| \__,_||_| |_| \___|\___|
                          | |                                   
                          |_|          .:-  `osso+/:.                                 
  _______             _             ./sso`  +sssssssss/.                      
 |__   __|           | |          .ossss-  :sssssssssssso.                       
    | |  ___    ___  | | ___     /sssss/  .sssssssssssssss/                        
    | | / _ \  / _ \ | |/ __|   +ssssso   `...:sso.......:s+                          
    | || (_) || (_) || |\__ \  :ssssss`  /+:  `ss.  :+/  `ss:                           
    |_| \___/  \___/ |_||___/  osssss-  -so`  +s:  .ss`  +sso
                               sssss/  `ss.  /s+  `os-  -ssss
                               ossso`  os:  .ss`  +s/  `sssso
                               :sss.  /s+  `os-  .++   ossss:
                                +s/..-ss-..+s/  `.....+ssss+ 
                                 /sssssssssso   osssssssss/  
                                  .ossssssss.  /sssssssso.   
                                   ./sssss:  -sssssss/.     
                                      .://  `oso+/:.                                                     
EOF

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
