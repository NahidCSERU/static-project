# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory in the container
WORKDIR  /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./

 
# Install app dependencies
RUN npm i -g npm@7.0.6


# Bundle your app source
COPY . .

# Expose the port your app will run on
EXPOSE 4000

# Define the command to run your app
CMD ["npm", "start "]
