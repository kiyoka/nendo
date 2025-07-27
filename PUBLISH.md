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

### 1. バージョン更新

VERSION.yml を手動で編集します：

```yaml
---
:major: 0
:minor: 8
:patch: 1  # パッチバージョンを更新
```

### 2. バージョン情報の反映

```bash
# コンパイルしてバージョン情報を反映
rake compile

# テストの実行
rake
```

### 3. 変更のコミット

```bash
git add -A
git commit -m "Bump version to x.x.x"
```

### 4. リリース

#### 方法1: 自動リリース

```bash
# タグ作成、ビルド、プッシュを一括実行
rake release
```

#### 方法2: 手動ステップ実行

```bash
# ビルド
rake build

# 公開
gem push pkg/nendo-x.x.x.gem

# API キーを指定する場合
gem push pkg/nendo-x.x.x.gem --key your_api_key_name
```

### 5. Git タグの作成（手動の場合）

```bash
git tag vx.x.x
git push origin vx.x.x
```

## 確認

- 公開後は https://rubygems.org/gems/nendo で確認
- `gem install nendo` でインストール可能

## 注意事項

- 認証情報は `~/.gem/credentials` に保存される
- gem version 1.3.6 以上が必要（`gem update --system` で更新）
- 一度公開したバージョンは削除できない
- VERSION.yml の更新後は必ず `rake compile` を実行してバージョン情報を反映させる