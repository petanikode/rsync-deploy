#!/bin/bash
set -eu

SSHPATH="$HOME/.ssh"
mkdir "$SSHPATH"
echo "$SSH_PRIVATE_KEY" > "$SSHPATH/key"
chmod 600 "$SSHPATH/key"
SERVER_DEPLOY_STRING="$SERVER_USERNAME@$SERVER_IP:$DEPLOY_PATH"
# sync it up"
sh -c "rsync $RSYNC_ARGS -e 'ssh -i $SSHPATH/key -o StrictHostKeyChecking=no -p $SERVER_PORT' $GITHUB_WORKSPACE/$BUILD_DIR/* $SERVER_DEPLOY_STRING"