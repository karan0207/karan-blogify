# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY ./api .

# Expose the port the app runs on
EXPOSE 3000

# Run the Node.js application
CMD ["node", "index.js"]
