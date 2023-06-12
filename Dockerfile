FROM node:14

WORKDIR /app

# ホストのpackage.jsonとpackage-lock.jsonをコンテナ内にコピー
COPY ./app/package*.json /app

# アプリケーションのソースコードをコンテナ内にコピー
COPY /app /app

# パッケージのインストール
RUN npm install -y

# アプリケーションのビルド
RUN npm run build