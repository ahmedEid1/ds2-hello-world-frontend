FROM node:14

# Set working directory
WORKDIR /app

# Install dependencies
COPY app/package*.json ./
RUN npm install

# Copy the rest of the application code
COPY app/ .

# Build the React application
RUN npm run build

# Expose port and define the command to run the app
EXPOSE 3000
CMD ["npx", "serve", "-s", "build",  "-l", "3000"]
