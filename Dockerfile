FROM node:lts-slim
RUN npm isntall -g pnpm

ENV HOST=0.0.0.0
ENV PORT=8000

WORKDIR /app
COPY package.json pnpm-lock.yaml .npmrc ./
RUN pnpm install && pnpm store prune

COPY . .

EXPOSE 8000
CMD ["pnpm","dev"]
