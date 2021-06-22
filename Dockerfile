# specify base image
FROM node:current-alpine

# resolve idealTree error
# any commands following this instruction will happen from this directory, rather than the root directory
WORKDIR /usr/app

# make current working directory files into container
COPY ./ ./

# install dependencies
RUN npm install

# specify default command
CMD ["npm", "start"]
