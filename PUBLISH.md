# RubyGems.org への公開手順

## 初回セットアップ

### 1. RubyGems.org アカウント認証

```bash
# 初回認証（メールアドレス/パスワード入力）
gem signin

# または認証情報を直接指定
gem signin --host https://rubygems.org
```

### 2. API キーを使う場合（推奨）

1. https://rubygems.org でログイン
2. プロフィール → API Keys → Create New API Key
3. 生成されたキーを保存

## 公開手順

### 方法1: 自動リリース（推奨）

```bash
# バージョン更新とビルド、公開を一括実行
rake release
```

### 方法2: 手動ステップ実行

```bash
# 1. バージョン更新
rake version:bump:patch  # パッチバージョン
rake version:bump:minor  # マイナーバージョン  
rake version:bump:major  # メジャーバージョン

# 2. ビルド
rake build

# 3. 公開
gem push pkg/nendo-x.x.x.gem

# API キーを指定する場合
gem push pkg/nendo-x.x.x.gem --key your_api_key_name
```

## 確認

- 公開後は https://rubygems.org/gems/nendo で確認
- `gem install nendo` でインストール可能

## 注意事項

- 認証情報は `~/.gem/credentials` に保存される
- gem version 1.3.6 以上が必要（`gem update --system` で更新）
- 一度公開したバージョンは削除できない