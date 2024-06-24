# Usar a imagem base oficial do Node.js
FROM node:18-alpine

# Configurar o diretório de trabalho dentro do contêiner
WORKDIR /app

# Instalar pnpm globalmente
RUN npm install -g pnpm

# Copiar os arquivos de configuração do projeto para o diretório de trabalho
COPY package.json pnpm-lock.yaml ./

# Instalar as dependências do projeto usando pnpm
RUN pnpm install

# Copiar o restante dos arquivos da aplicação para o diretório de trabalho
COPY . .

# Expor a porta que a aplicação irá usar (substitua pela porta correta se necessário)
EXPOSE 3000

RUN pnpm run build

# Comando para rodar a aplicação
CMD ["node", "build/server.js"]
