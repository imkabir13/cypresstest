# Use the official Cypress Docker image as the base image
FROM cypress/factory
# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json /app

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Run the Cypress tests
CMD ["npm", "run", "cypress:run"]