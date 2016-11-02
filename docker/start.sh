#!/bin/bash

__create_user() {
  SSH_USERPASS=yadan
  echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin yadan)
  echo ssh yadan password: $SSH_USERPASS
}

__create_user
