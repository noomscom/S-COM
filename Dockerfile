FROM node:16.17.0
# Setup app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source file
COPY . .

# Build for production
RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "dev" ]