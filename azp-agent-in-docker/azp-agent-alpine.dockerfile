FROM python:3-alpine
ENV TARGETARCH="linux-musl-x64"

# Another option:
# FROM arm64v8/alpine
# ENV TARGETARCH="linux-musl-arm64"

RUN apk update && \
  apk upgrade && \
  apk add bash curl gcc git icu-libs jq musl-dev python3-dev libffi-dev openssl-dev cargo make

# Install Azure CLI
RUN pip install --upgrade pip
RUN pip install azure-cli

WORKDIR /azp/

COPY ./start.sh ./
RUN chmod +x ./start.sh

RUN adduser -D agent
RUN chown agent ./
USER agent
# Another option is to run the agent as root.
# ENV AGENT_ALLOW_RUNASROOT="true"

ENTRYPOINT [ "./start.sh" ]
