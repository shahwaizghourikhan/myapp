# 1. Start with a lightweight base server environment
FROM node:18-alpine
# 2. Create a folder inside the container to hold our app
WORKDIR /app
# 3. Copy ONLY the dependency list first (this makes future builds much faster)
COPY package.json .
# 4. Run the command to install all necessary packages inside the container
RUN npm install
# 5. Now, copy the rest of your massive project code into the container
COPY . .
# 6. Expose the port your web app uses to talk to the browser
EXPOSE 8080
# 7. The final command to start the web app when the container turns on
CMD ["npm", "start"]