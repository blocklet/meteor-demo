FROM gitpod/workspace-full

ENV ABT_NODE_TEST_DOCKER=1
ENV PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
ENV ABT_NODE_HTTP_PORT=8080

RUN brew install nginx \
  && npm install -g lerna @abtnode/cli@1.1.15




# Taken from https://github.com/meteor/todos/pull/275/files
USER gitpod
RUN cd /home/gitpod && curl https://install.meteor.com/ | sh
