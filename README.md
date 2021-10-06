## How to use
chmod +x ./install.sh
./install.sh

## 2021/10/6 動かなかった
結局手動で以下対応


まずbrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
インストール後に表示されるメッセージ通りにPATH設定

その後Brew経由で必要なものインストールして必要な初期処理
```
brew install anyenv
anyenv init
anyenv install --init
anyenv install nodenv
nodenv install 16.0.0
nodenv global 16.0.0

brew install ghq
git config --global ghq.root '~/src'

brew install direnv
brew install peco
brew install yarn
brew install goenv
```

git-prompt周りの設定
```
mkdir ~/.zsh
cd ~/.zsh

curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
```

.zprofileと.zshrcのコピー
```
mv .zshrc ~/.zshrc
mv .zprofile ~/.zprofile
```

git config設定
```
git config --global user.name "taaaaho"
git config --global user.email "taaaaho@gmail.com"
```

githubのアクセスキー設定
```
cd ~
mkdir .ssh
ssh-keygen -t ed25519 -C "xxxx@gmail.com"

公開鍵をgithubへ貼り付け
```

firebase
```
npm install -g firebase-tools
exec $SHELL -l
firebase login
firebase use dev
firebase serve
```

gcloud
```
brew install google-cloud-sdk --cask

.zshrcに追記
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

gcloud auth login
```

ターミナルのテーマ変更
```
https://cocopon.me/blog/2014/04/iceberg-for-terminalapp/
背景不透明度 90%
```
