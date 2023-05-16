# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the entire application to the working directory
COPY . .

# # Expose a port (optional)
# EXPOSE 3000

# # Define the command to run the application
# CMD [ "node", "app.js" ]

CMD ["sh", "-c", "while true; do sleep 1; done"]
