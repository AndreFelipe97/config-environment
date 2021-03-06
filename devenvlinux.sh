#!/bin/bash
#Parte 1: Atualizar
#Parte 2: Git
#Parte 3: Crome
#Parte 4: Vscode
#Parte 5: Android studio
#Parte 6: JDK8
#Parte 7: Flutter
#Parte 8: Node
#Parte 9: Npm
#Parte 10: Yarn
#Parte 11: Create react app
#Parte 12: dotnet core
#Parte 13: EF core

echo 'ConfiguraΓ§Γ£o de ambiente linux'

###############################################################################
# Parte 1
###############################################################################

#Updatig machine via Apt Get
echo 'π« Updating packages... π«'
if cd ~/ && sudo apt update -qq >/dev/null; then
    echo 'β Successfully updated packages'
else
    echo 'β Failed to update packages'
fi

#Upgrade machinne...
echo 'π« Upgrading packages... π«'
if cd ~/ && sudo apt upgrade -qq -y >/dev/null; then
    echo 'β Package upgrade performed successfully'
else
    echo 'β Failed to upgrade packages'
fi

###############################################################################
# Parte 2
###############################################################################

# Instala o git
echo 'π« Installing Git... π«'
if cd ~/ && sudo apt install git -y >/dev/null; then
    echo 'β Git successfully installed'
else
    echo 'β Failed to install git'
fi

###############################################################################
# Parte 3
###############################################################################

# Install Google chrome
echo 'π« Installing Google Chrome... π«'
if wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64 && sudo apt install ./google-chrome-stable_current_amd64.deb; then
    echo 'β Google Chrome successfully installed'
else
    echo 'β Failed to install google chrome'
fi

###############################################################################
# Parte 4
###############################################################################

# Install VSCode
echo 'π« Installing VSCode... π«'
if sudo snap install --classic code; then
    echo 'β Google Chrome successfully installed'
else
    echo 'β Failed to install google chrome'
fi

###############################################################################
# Parte 5
###############################################################################

# Install JDK 8
echo 'π« Installing JDK... π«'
if sudo apt-get install openjdk-8-jdk; then
    echo 'β JDK successfully installed'
else
    echo 'β Failed to install JDK'
fi

###############################################################################
# Parte 6
###############################################################################

# Install Android Studio
echo 'π« Installing Android Studio... π«'
if sudo add-apt-repository ppa:maarten-fonville/android-studio && sudo apt-get update && sudo apt-get install android-studio; then
    echo 'β Android Studio successfully installed'
else
    echo 'β Failed to install Android Studio'
fi
###############################################################################
# Parte 6
###############################################################################

# Install Android Studio
echo 'π« Installing Android Studio... π«'
if sudo add-apt-repository ppa:maarten-fonville/android-studio && sudo apt-get update && sudo apt-get install android-studio; then
    echo 'β Android Studio successfully installed'
else
    echo 'β Failed to install Android Studio'
fi

###############################################################################
# Parte 7
###############################################################################

# Install Flutter
echo 'π« Installing Android Studio... π«'
if sudo snap install flutter --classic; then
    echo 'β Flutter successfully installed'
else
    echo 'β Failed to install Flutter'
fi


###############################################################################
# Parte 8
###############################################################################

# Instala a LTS Node
echo 'π« Installing NodeJS... π«'
if cd ~/ && sudo apt install nodejs; then
    echo 'β Node successfully installed'
else
    echo 'β Failed to install NodeJS'
fi

###############################################################################
# Parte 9
###############################################################################

# Instala a Npm
echo 'π« Installing NPM... π«'
if cd ~/ && sudo apt install npm; then
    echo 'β NPM successfully installed'
else
    echo 'β Failed to install NPM'
fi

###############################################################################
# Parte 10
###############################################################################

# Atualiza  node
echo 'π« Updating Node JS 14.15.4 LTS... π«'
if cd ~/ && sudo npm cache clean -f && sudo npm install -g n && sudo n 14.15.4; then
    echo 'β Node updated successfully'
else
    echo 'β Failed to update Node'
fi

###############################################################################
# Parte 11
###############################################################################

# Instala o Yarn
echo 'π« Installing Yarn... π«'
if cd ~/ && sudo npm install -g yarn -y; then
    echo 'β Yarn successfully installed'
else
    echo 'β Failed to install Yarn'
fi

###############################################################################
# Parte 12
###############################################################################

# Instala o Yarn
echo 'π« Installing Yarn... π«'
if sudo npm install -g create-react-app; then
    echo 'β Yarn successfully installed'
else
    echo 'β Failed to install Yarn'
fi

###############################################################################
# Parte 13
###############################################################################

# Instala o .NET Core 3.1 SDK
echo 'π« Registering Microsoft packages... π«'
if cd ~/ && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb; then
    echo 'β Microsoft packages successfully registered'
else
    echo 'β Failed to register Microsoft packages'
fi

###############################################################################
# Parte 14
###############################################################################

echo 'π« Installing the .NET Core 3.1 SDK... π«'
if cd ~/ && sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt-get update && sudo apt-get install -y dotnet-sdk-3.1; then
    echo 'β .NET Core 3.1 SDK successfully installed'
else
    echo 'β Failed to install .NET Core 3.1 SDK'
fi

###############################################################################
# Parte 15
###############################################################################

# Instala o .NET EF Core CLI
echo 'π« Installing dotnet-EF... π«'
if cd ~/ && dotnet tool install --global dotnet-ef; then
    echo 'β Dotnet-EF successfully installed'
else
    echo 'β Failed to install dotnet-EF'
fi

echo 'π« Updating dotnet-EF... π«'
if cd ~/ && dotnet tool update --global dotnet-ef; then
    echo 'β Dotnet-EF updated successfully'
else
    echo 'β Failed to try to update dotnet-EF'
fi

###############################################################################

echo "ConcluΓ­do! Let's code!"
