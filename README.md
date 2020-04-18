# :rocket: DevUp

![DevUp](https://circleci.com/gh/donnieprakoso/devup.svg?style=shield)

> DevUp is a Docker image for isolated development environment. DevUp consists of developer toolings that I've been progressively building for years and now become my primary tool for coding. DevUp was initially built as I no longer want to torture my laptop and move all of my development activities using either VPS or VM. This tool is tested with MacOS, Linux and iPadOS.  

# Give It a Spin!
Assuming that you already have Docker installed, you can easily run DevUp with following commands:

```bash
docker pull donnieprakoso/devup:latest
docker run -it donnieprakoso/devup:latest /bin/bash
```

And you're in! :metal: So what's next? 

## Case: Binding source code folder, SSH keys and AWS credentials
```bash
docker pull donnieprakoso/devup
DEVUP_CODES=/YOUR_SOURCE_CODE_FOLDER
DEVUP_SSH_KEYS=/YOUR_SSH_KEYS_FOLDER
DEVUP_AWS_CREDENTIALS=/YOUR_AWS_CREDENTIALS_FOLDER
docker run \
    --mount type=bind,src=$DEVUP_CODES,dst=/root/codes \
    --mount type=bind,src=$DEVUP_SSH_KEYS,dst=/root/.ssh \
    --mount type=bind,src=$DEVUP_AWS_CREDENTIALS,dst=/root/.aws \
    -it donnieprakoso/devup:latest \
    /bin/bash
```

## Case: Using DevUp for Web Development
```bash
docker pull donnieprakoso/devup
DEVUP_PORT=8080
docker run \
    -p $DEVUP_PORT:$DEVUP_PORT
    -it donnieprakoso/devup:latest \
    /bin/bash
```

# Features
DevUp comes with few developer toolings that I primarily use: tmux, Neovim, Docker, AWS CLI and others, along with language runtime(s) such as NodeJS, Python, and Go.
To understand on how to use these toolings, please refer to their respective page (shown below on Credits section). Neovim is the only tool that I heavily remap its configuration (refer to init.vim).

## Neovim Keyboard Mapping

| Use When | Visual Mode | Insert Mode | Command Mode | Map |
| -------- | ----------- | ----------- | ------------ | --- |
| Open file explorer | | | :white_check_mark: | C-n | 
| Copy | :white_check_mark: | | | cc | 
| Cut | :white_check_mark: | | | cx | 
| Paste | :white_check_mark: | | | cv | 

# Credits
This tool would not have been possible without fantastic tools and amazing work of lot of people. Thank you!
- [tmux](https://github.com/tmux/tmux/wiki)
- [Neovim](https://neovim.io/)
- [Docker](https://www.docker.com/)
- [Alpine Linux](https://alpinelinux.org/)
- [Python](https://www.python.org/)
- [Go](https://golang.org/)
- [NodeJS](https://nodejs.org/en/)
- [pyenv](https://github.com/pyenv/pyenv)
- [awslogs](https://github.com/jorgebastida/awslogs)
- [ngrok](https://ngrok.com/)
- [wscat](https://github.com/websockets/wscat)
- [Hugo](https://gohugo.io/)

# License
Refer to the provided `LICENSE.md` for further information.
