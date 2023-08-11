FROM node:18-alpine
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .

# Copy app files
COPY . .

RUN yarn
RUN yarn build 

# Expose port
EXPOSE 5000

# Start the app
CMD [ "yarn", "start"]
