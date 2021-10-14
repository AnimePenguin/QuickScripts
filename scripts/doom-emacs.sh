if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "Adding The Emacs Repo For Ubuntu"

add-apt-repository ppa:kelleyk/emacs
apt-get update

echo "Installing Emacs"

apt-get install -y emacs27 

echo "Installing ripgrep and fd-find"

apt-get install -y ripgrep fd-find

echo 
echo "Cloning the Doom Emacs Repo"

mkdir ~/.emacs.d
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d

echo "Installing Doom Emacs"

~/.emacs.d/bin/doom install

echo
echo "Adding Doom Emacs to Path"
echo '
if [ -d "$HOME/.emacs.d/bin" ] ;
	then PATH="$HOME/.emacs.d/bin:$PATH"
fi
' >> ~/.bashrc

echo
echo "Done"
