FROM --platform=$BUILDPLATFORM node:18-alpine

# Install git in Alpine
RUN apk add --no-cache git

# Clone your repository into /usr/src/app
RUN git clone --depth 1 --branch main https://github.com/Kousthubshetty/crispy-adventure.git /usr/src/app

WORKDIR /usr/src/app

RUN npm install --production

EXPOSE 3000

CMD ["npm", "start"]
