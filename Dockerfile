FROM node:14

WORKDIR /app

# ホストのpackage.jsonとpackage-lock.jsonをコンテナ内にコピー
COPY ./app/package*.json ./

# パッケージのインストール
RUN npm install

# アプリケーションのソースコードをコンテナ内にコピー
COPY . .

# アプリケーションのビルド

RUN npm run build