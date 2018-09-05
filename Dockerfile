FROM ubuntu

RUN apt update && apt install git -y
RUN adduser msabourin
RUN cd /home/msabourin && git clone https://github.com/OniOni/dotfiles.git
RUN chmod +x /home/msabourin/dotfiles/install.sh
RUN chown -R msabourin:msabourin /home/msabourin
