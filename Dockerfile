FROM node:10-alpine
WORKDIR /usr/src/app    
#install all packages in package.json
COPY package*.json .

COPY assets .
RUN npm install
#expose port 8080 

COPY . .
EXPOSE 8080

#Command to run app
CMD ["node", "app.js"]


#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines

#set of commands that you give to another person to copy
