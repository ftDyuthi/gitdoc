# Use Node.js base image  
FROM node:14  

# Set working directory  
WORKDIR /app  

# Copy package.json and install dependencies  
COPY package.json ./  
RUN npm install  

# Copy application files  
COPY . .  

# Expose the port  
EXPOSE 3000  

# Command to run the app  
CMD ["npm", "start"]