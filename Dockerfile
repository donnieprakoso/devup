# Devup - https://github.com/donnieprakoso/devup/
# ===
# Dockerfile to build image for development environment
# Features:
# - Python 3.7-3.8
# - NodeJs
# - Hugo
# - Neovim
# - Tmux
# - AWS CLI
# - AWS CDK
# - AWS Amplify
# - AWS ECS CLI
#
# TODO
# - Git configuration; system/global
# - EKS - Kubectl
# - Ngrok
# - Jekyll

FROM alpine:3.11

ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV APP_HOME /root

RUN ln -fs /usr/share/zoneinfo/Asia/Singapore /etc/localtime
# Install unzip
RUN apk update && apk --no-cache add unzip \
        bash \
        curl \
        npm \
        python3 \
        python3-dev \
        neovim \
        git \
        openssh \
        docker \
        gcc \
        build-base \
        libffi-dev \
        openssl-dev \
        bzip2-dev \
        zlib-dev \
        readline-dev \
        sqlite-dev \
        linux-headers \
        fzf \
        hugo \
        tmux \
        ipython \
        && rm -rf /var/cache/apk/*

WORKDIR $APP_HOME
RUN curl https://pyenv.run | bash
CMD /bin/bash -c eval "$(.pyenv/bin/pyenv init -)"
CMD /bin/bash -c eval "$(.pyenv/bin/pyenv virtualenv-init -)"
RUN /bin/bash .pyenv/bin/pyenv install 3.7.5
ENV PATH="/root/.pyenv/bin:$PATH"
RUN echo $PATH

RUN curl -fLo $APP_HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN pip3 install aws-shell aws-sam-cli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
CMD ["/bin/bash", "-c", "./aws/install"]
RUN npm install -g aws-cdk @aws-amplify/cli 

# ecs-cli
RUN curl -o /usr/local/bin/ecs-cli https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-linux-amd64-latest
# Copy Neovim configuration
RUN mkdir -p $APP_HOME/.config/nvim/colors/
COPY init.vim $APP_HOME/.config/nvim/
COPY monokai_pro.vim $APP_HOME/.config/nvim/colors/
RUN nvim --headless +PlugInstall +qa

# Installing ngrok
RUN curl -o $APP_HOME/ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip $APP_HOME/ngrok.zip
RUN mv $APP_HOME/ngrok /usr/local/bin/

# Installing other packages for Neovim
RUN npm -g install js-beautify
RUN npm -g install prettier
RUN pip3 install yapf
RUN npm -g install wscat

# https://github.com/jorgebastida/awslogs
RUN pip3 install awslogs

# GitFlow
RUN curl -o $APP_HOME/gitflow-installer.sh -L https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
RUN chmod +x $APP_HOME/gitflow-installer.sh
RUN /bin/bash -c $APP_HOME/gitflow-installer.sh
