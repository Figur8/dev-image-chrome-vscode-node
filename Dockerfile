FROM ntopus/dev-image-chrome-node:lts
RUN wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
RUN dpkg -i vscode.deb; \
  apt-get update; \
  apt-get -fy install 
RUN apt-get install -y git
RUN rm -f ./vscode.deb
RUN apt-get clean
RUN code --user-data-dir /home/node --install-extension GulajavaMinistudio.javascript-complete-packs
RUN code --user-data-dir /home/node --uninstall-extension eg2.tslint
ENV DISPLAY :0