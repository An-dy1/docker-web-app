# specify base image
FROM alpine

# install dependencies
RUN npm install

# specify default command
CMD ["npm", "start"]
