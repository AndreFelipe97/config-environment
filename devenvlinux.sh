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

echo 'Configuração de ambiente linux'

###############################################################################
# Parte 1
###############################################################################

#Updatig machine via Apt Get
echo '💫 Updating packages... 💫'
if cd ~/ && sudo apt update -qq >/dev/null; then
    echo '✅ Successfully updated packages'
else
    echo '❌ Failed to update packages'
fi

#Upgrade machinne...
echo '💫 Upgrading packages... 💫'
if cd ~/ && sudo apt upgrade -qq -y >/dev/null; then
    echo '✅ Package upgrade performed successfully'
else
    echo '❌ Failed to upgrade packages'
fi

###############################################################################
# Parte 2
###############################################################################

# Instala o git
echo '💫 Installing Git... 💫'
if cd ~/ && sudo apt install git -y >/dev/null; then
    echo '✅ Git successfully installed'
else
    echo '❌ Failed to install git'
fi

###############################################################################
# Parte 3
###############################################################################

# Install Google chrome
echo '💫 Installing Google Chrome... 💫'
if wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64 && sudo apt install ./google-chrome-stable_current_amd64.deb; then
    echo '✅ Google Chrome successfully installed'
else
    echo '❌ Failed to install google chrome'
fi

###############################################################################
# Parte 4
###############################################################################

# Install VSCode
echo '💫 Installing VSCode... 💫'
if sudo snap install --classic code; then
    echo '✅ Google Chrome successfully installed'
else
    echo '❌ Failed to install google chrome'
fi

###############################################################################
# Parte 5
###############################################################################

# Install JDK 8
echo '💫 Installing JDK... 💫'
if sudo apt-get install openjdk-8-jdk; then
    echo '✅ JDK successfully installed'
else
    echo '❌ Failed to install JDK'
fi

###############################################################################
# Parte 6
###############################################################################

# Install Android Studio
echo '💫 Installing Android Studio... 💫'
if sudo add-apt-repository ppa:maarten-fonville/android-studio && sudo apt-get update && sudo apt-get install android-studio; then
    echo '✅ Android Studio successfully installed'
else
    echo '❌ Failed to install Android Studio'
fi
###############################################################################
# Parte 6
###############################################################################

# Install Android Studio
echo '💫 Installing Android Studio... 💫'
if sudo add-apt-repository ppa:maarten-fonville/android-studio && sudo apt-get update && sudo apt-get install android-studio; then
    echo '✅ Android Studio successfully installed'
else
    echo '❌ Failed to install Android Studio'
fi

###############################################################################
# Parte 7
###############################################################################

# Install Flutter
echo '💫 Installing Android Studio... 💫'
if sudo snap install flutter --classic; then
    echo '✅ Flutter successfully installed'
else
    echo '❌ Failed to install Flutter'
fi


###############################################################################
# Parte 8
###############################################################################

# Instala a LTS Node
echo '💫 Installing NodeJS... 💫'
if cd ~/ && sudo apt install nodejs; then
    echo '✅ Node successfully installed'
else
    echo '❌ Failed to install NodeJS'
fi

###############################################################################
# Parte 9
###############################################################################

# Instala a Npm
echo '💫 Installing NPM... 💫'
if cd ~/ && sudo apt install npm; then
    echo '✅ NPM successfully installed'
else
    echo '❌ Failed to install NPM'
fi

###############################################################################
# Parte 10
###############################################################################

# Atualiza  node
echo '💫 Updating Node JS 14.15.4 LTS... 💫'
if cd ~/ && sudo npm cache clean -f && sudo npm install -g n && sudo n 14.15.4; then
    echo '✅ Node updated successfully'
else
    echo '❌ Failed to update Node'
fi

###############################################################################
# Parte 11
###############################################################################

# Instala o Yarn
echo '💫 Installing Yarn... 💫'
if cd ~/ && sudo npm install -g yarn -y; then
    echo '✅ Yarn successfully installed'
else
    echo '❌ Failed to install Yarn'
fi

###############################################################################
# Parte 12
###############################################################################

# Instala o Yarn
echo '💫 Installing Yarn... 💫'
if sudo npm install -g create-react-app; then
    echo '✅ Yarn successfully installed'
else
    echo '❌ Failed to install Yarn'
fi

###############################################################################
# Parte 13
###############################################################################

# Instala o .NET Core 3.1 SDK
echo '💫 Registering Microsoft packages... 💫'
if cd ~/ && wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb; then
    echo '✅ Microsoft packages successfully registered'
else
    echo '❌ Failed to register Microsoft packages'
fi

###############################################################################
# Parte 14
###############################################################################

echo '💫 Installing the .NET Core 3.1 SDK... 💫'
if cd ~/ && sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt-get update && sudo apt-get install -y dotnet-sdk-3.1; then
    echo '✅ .NET Core 3.1 SDK successfully installed'
else
    echo '❌ Failed to install .NET Core 3.1 SDK'
fi

###############################################################################
# Parte 15
###############################################################################

# Instala o .NET EF Core CLI
echo '💫 Installing dotnet-EF... 💫'
if cd ~/ && dotnet tool install --global dotnet-ef; then
    echo '✅ Dotnet-EF successfully installed'
else
    echo '❌ Failed to install dotnet-EF'
fi

echo '💫 Updating dotnet-EF... 💫'
if cd ~/ && dotnet tool update --global dotnet-ef; then
    echo '✅ Dotnet-EF updated successfully'
else
    echo '❌ Failed to try to update dotnet-EF'
fi

###############################################################################

echo "Concluído! Let's code!"
