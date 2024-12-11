# Usar a imagem Node.js oficial
FROM node:18

# Configurar o diretório de trabalho
WORKDIR /usr/src/app

# Copiar os arquivos de configuração
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante do projeto
COPY . .

# Expor a porta da aplicação
EXPOSE 3000

# Comando padrão para iniciar a aplicação
CMD ["npm", "run", "start:dev"]
