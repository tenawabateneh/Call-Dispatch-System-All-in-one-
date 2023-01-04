# specifing the base image which is nginx:alpine
FROM node:lts-alpine


# Create app directory
WORKDIR /usr/src/app

# coping the file from current dirctory to the destination
# COPY . /usr/share/nginx/ejs/test



# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

# Bundle app source
COPY . .

RUN npm install
# If you are building your code for production
# RUN npm install --only=production



EXPOSE 3000


CMD [ "npm", "start" ]