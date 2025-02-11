# My DuckDB & dbt Project

このプロジェクトは、DuckDB と dbt を組み合わせたデータ変換パイプラインのサンプルプロジェクトです。

## 必要なツール

- [Homebrew](https://brew.sh/)（Mac 用）
- [DuckDB CLI](https://duckdb.org/)
- [Python 3.7+](https://www.python.org/)
- [dbt](https://www.getdbt.com/)（適宜、利用するアダプターもインストールしてください）
- [Poetry](https://python-poetry.org/)（依存関係管理用 ※利用する場合）

## セットアップ手順

### 1. DuckDB CLI のインストール

Homebrew を利用して DuckDB CLI をインストールします。ターミナルで以下のコマンドを実行してください。

```bash
brew install duckdb
```

DBT_PROFILES_DIRの指定

```bash
export DBT_PROFILES_DIR=$(pwd)
```
