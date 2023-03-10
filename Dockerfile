FROM smartcontract/chainlink:1.11.0

USER root

# Create the chainlink node root path
RUN mkdir /chainlink-config

# Arg for api user email, with default value
ARG API_USER_EMAIL="tech.dev@webspaceiq.com"
ENV API_USER_EMAIL=$API_USER_EMAIL

# Arg for api user password, with default value
ARG API_USER_PASSWORD="PA@SSword1234!567"
ENV API_USER_PASSWORD=$API_USER_PASSWORD

# Arg for node wallet password, with default value
ARG WALLET_PASSWORD="PA@SSword1234!567"
ENV WALLET_PASSWORD=$WALLET_PASSWORD

# Create chainlink node required values to initialize with
RUN echo $API_USER_EMAIL > /chainlink-config/.api
RUN echo $API_USER_PASSWORD >> /chainlink-config/.api
RUN echo $WALLET_PASSWORD > /chainlink-config/.password