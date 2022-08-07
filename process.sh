rm .zshrc
cp $HOME/.zshrc ./

rm -R ./.config
mkdir ./.config
cp -r $HOME/.config/nvim ./.config/
