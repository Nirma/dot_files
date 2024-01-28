# setup vimplug 

if ! [[ -e ~/.vim/autoload/plug.vim ]]
then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ -e  ~/.vimrc ]]
then 
    mv ~/.vimrc ~/.vimrc.old
fi

ln -sf $(pwd)/.vimrc ~/.vimrc

vim -c "PlugInstall"

# setup generic tmux config
if [[ -e ~/.tmux.conf ]] 
then
        mv ~/.tmux.conf ~/tmux.conf.old 
fi

if [[ -e ~/.config/tmux/tmux.conf ]] 
then 
       mv ~/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf.old
fi

if [[ -d ./.tmux ]] 
then 
    rm -rf .tmux 
fi 

if ! [[ -d ~/.config/tmux ]] 
then
    mkdir -p ~/.config/tmux
fi

git clone https://github.com/gpakosz/.tmux.git

ln -sf $(pwd)/.tmux/.tmux.conf ~/.config/tmux/tmux.conf 
ln -sf $(pwd)/.tmux.conf.local ~/.config/tmux/tmux.conf.local


