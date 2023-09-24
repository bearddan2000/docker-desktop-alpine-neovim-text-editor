FROM alpine:latest

ENV APP neovim

ENV APP_EXEC nvim

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN apk update

RUN apk add $APP

RUN adduser -S $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD "${APP_EXEC}"
