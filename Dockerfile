FROM cypress/browsers:node18.12.0-chrome107

RUN corepack enable && corepack prepare pnpm@8.9.0

RUN apt-get update && apt-get install -y make
