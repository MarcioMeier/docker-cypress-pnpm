FROM cypress/browsers:node18.12.0-chrome107

RUN corepack enable && corepack prepare pnpm@8.9.0

# Update google gpg keys (https://www.omgubuntu.co.uk/2017/08/fix-google-gpg-key-linux-repository-error)
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

RUN apt-get update && apt-get install -y make

# clean up
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
