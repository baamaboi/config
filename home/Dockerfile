FROM ubuntu:24.04
RUN yes | unminimize
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && apt-get install -y vim build-essential python3 python3-dev python-is-python3 zsh curl git unzip zip tldr man-db
RUN apt-get full-upgrade -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN curl -fsSL https://bun.com/install | bash
RUN curl -s "https://get.sdkman.io" | bash
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN curl -fLo ~/.vim/colors/jellybeans.vim --create-dirs https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
RUN vim +PlugInstall +qall
RUN chsh -s /bin/zsh
RUN mkdir /code
RUN mkdir -p $HOME/.local/share/tldr && tldr -u
WORKDIR /code
COPY . /root/
ENV TERM=xterm-256color

ENTRYPOINT ["tail"]
CMD ["-f", "/dev/null"]