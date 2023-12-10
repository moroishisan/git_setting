#! /bin/bash

# git-completion.bash install
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash

# git-prompt.sh install
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh

# chmod
chmod a+x ~/.git-completion.bash
chmod a+x ~/.git-prompt.sh

# .bashrc setting
echo "source ~/.git-completion.bash" >> ~/.bashrc
echo "source ~/.git-prompt.sh" >> ~/.bashrc

# GIT_PS1_SHOWUNTRACKEDFILES
# addされていないファイルがあるときに%を表示する
echo "export GIT_PS1_SHOWUNTRACKEDFILES=1" >> ~/.bashrc

# GIT_PS1_SHOWDIRTYSTATE
# addされているファイルがあるときに*を表示する
echo "export GIT_PS1_SHOWDIRTYSTATE=1" >> ~/.bashrc

# PS1
# ブランチ名を表示
echo "PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '" >> ~/.bashrc

# .bashrc reload
source ~/.bashrc
