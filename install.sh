if [ -d ~/.oh-my-osx ]
then
	echo "You already have Oh My OSX installed. You'll need to remove ~/.oh-my-osx if you want to install"
  exit
fi

echo "Cloning Oh My OSX..."
hash git >/dev/null && /usr/bin/env git clone https://github.com/mrWiener/oh-my-osx.git ~/.oh-my-osx || {
  echo "git not installed"
  exit
}

if [! -d ~/.oh-my-zsh ]
then
	curl -L https://github.com/mrWiener/oh-my-zsh/raw/master/tools/install.sh | sh
fi

source ~/.oh-my-osx/reload.zsh