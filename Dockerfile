# Use the official Node.js image as a base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the React application to the container
COPY src .

# Compile TypeScript app
RUN npm install typescript
RUN ./node_modules/typescript/bin/tsc -p ./js/

# Expose the default React development server port (80)
EXPOSE 8080

# Start the React application
CMD ["npm", "run", "start"]
