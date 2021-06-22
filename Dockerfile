# specify base image
FROM node:current-alpine

# resolve idealTree error
WORKDIR /usr/app

# make current working directory files into container
COPY ./ ./

# install dependencies
RUN npm install

# specify default command
CMD ["npm", "start"]
