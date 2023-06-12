FROM node:14

WORKDIR /app

# ホストのpackage.jsonとpackage-lock.jsonをコンテナ内にコピー
COPY ./todo-app/package*.json /app

# パッケージのインストール
RUN npm install -y

# アプリケーションのビルド
RUN npm run build