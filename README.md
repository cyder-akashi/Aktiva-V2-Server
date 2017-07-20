# Aktiva-V2-Server
Aktiva-V2のサーバ用リポジトリです。

## 必要環境
* Xcode Command line tools
* [Homebrew](https://brew.sh/index_ja.html)
* [rbenv](https://github.com/rbenv/rbenv)
* [Ruby 2.4.1](https://github.com/ruby/ruby)
* [bundler](http://bundler.io/)
* [editorconfig plugin](http://editorconfig.org/#download)

### Xcode Command line tools
AppStoreからXcodeをインストールし、以下のコマンドを実行する。
```sh
xcode-select --install
```

### Homebrew
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### rbenv
```sh
brew update
brew install rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
```

### Ruby 2.4.1
```sh
rbenv install 2.4.1
```

### bundler
```sh
gem install bundler
```

### editorconfig plugin
[ここ](http://editorconfig.org/#download)からエディタに合わせたものをインストールすること。

## セットアップ
1. 次のコマンドを実行する。
```sh
git clone git@github.com:cyder-akashi/Aktiva-V2-Server.git
cd Aktiva-V2-Server
```

2. Gemライブラリをインストールする
```sh
bundle update
bundle install --path=vendor/bundle
```

3. サーバを起動する
```sh
rails server
```

## 著者
* [森 篤史](@Mori-Atsushi)
