git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add plugins
PLUGINS="

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

"
echo "$PLUGINS" >> ~/.zshrc

# add aliases
ALIASES="

alias update='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'

# git
alias clone='git clone'
alias commit='git add . && git commit -m'
alias dev='git checkout dev'
alias push='git push origin'
alias stash='git stash'
alias pull='git pull origin'
alias status='git status'
alias branch='git branch'
alias check='git checkout'
alias checkb='git checkout -b'
alias merge='git checkout main && git merge dev && git push origin main && git checkout dev'

# asdf
alias nodei='asdf install nodejs'
alias nodel='asdf local nodejs'

# npm
alias ni='npm install'
alias ns='npm start'
alias nt='npm test'
alias nb='npm run build'
alias nd='npm run dev'
alias nis='npm install && npm start'
alias nid='npm install && npm run dev'
alias logs='npm run logs'

# docker
alias dstart='sudo systemctl start docker'
alias dres='sudo systemctl restart docker'
alias dstop='sudo systemctl stop docker docker.socket'
alias dup='docker-compose up'
alias dbuild='docker-compose up --build'

# projects
# benvo
alias bvfml='code ~/Documents/Benvo/benvo-family'
alias bvops='code ~/Documents/Benvo/benvo-ops'
alias afront='code ~/Documents/Benvo/afarma-frontend'
alias aback='code ~/Documents/Benvo/afarma-api'
# bfdb
alias bfdbtutor='code ~/Documents/BFDB/bfdb-tutor'
alias bfdbops='code ~/Documents/BFDB/bfdb-ops'
alias bfdbnot='code ~/Documents/BFDB/bfdb-notifications'
alias bfdblp='code ~/Documents/BFDB/bfdb-lp'
alias bfdbcron='code ~/Documents/BFDB/bfdb-cron'
"
echo "$ALIASES" >> ~/.zshrc

ssh-keygen -t ed25519 -C "rodriggeslucas@gmail.com"

echo "THIS IS YOUR SSH PUBLIC KEY" && cat ~/.ssh/id_ed25519.pub

git config --global user.name "lucasrodrigges"
git config --global user.email "rodriggeslucas@gmail.com"

exec zsh && echo "Script finished"

