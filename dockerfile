# Use an official Node.js image as the base
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --frozen-lockfile

# Copy the entire project
COPY . .

# Build the Next.js app
RUN npm run build

# Remove unnecessary files to reduce image size
RUN rm -rf node_modules && npm install --production

# Use a lightweight Node.js image for runtime
FROM node:18-alpine AS runner

WORKDIR /app

# Copy built files from builder stage
COPY --from=builder /app ./

# Expose the port Next.js runs on
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "run", "start"]
