# Use the official Node.js 18 image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port on which Next.js will run
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "run", "start"]
