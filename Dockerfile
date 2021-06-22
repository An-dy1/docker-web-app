# specify base image
FROM node:current-alpine

# resolve idealTree error
# any commands following this instruction will happen from this directory, rather than the root directory
WORKDIR /usr/app

# copy current working directory files into container
COPY ./package.json ./

# install dependencies
RUN npm install

# copy everything else; changing the index.js file will not invalidate the cache
COPY ./ ./

# specify default command
CMD ["npm", "start"]
