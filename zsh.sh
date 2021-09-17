yum install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

git clone https://gitee.com/zaliasc/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://gitee.com/zaliasc/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://gitee.com/zaliasc/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

git clone --depth 1 https://gitee.com/zaliasc/fzf.git ~/.fzf
~/.fzf/install


#vim ~/.zshrc

ZSH_THEME=”bira”

plugins=(git
         z
         extract
         zsh-autosuggestions
         zsh-syntax-highlighting
         zsh-history-substring-search
         )

chsh -s /bin/zsh
