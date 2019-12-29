# rsync-deploy

Deploy to a remote server using rsync.

example usage to sync everything in the workspace folder:

```yml
- name: deploy to server
  uses: petanikode/rsync-deploy@v1.2
  env:
    SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
    RSYNC_ARGS: "-ahzur --delete"
    BUILD_DIR: "public" # deploy dir (public)
    SERVER_USERNAME: ${{ secrets.SERVER_USERNAME }}
    SERVER_IP: ${{ secrets.SERVER_IP }}
    SERVER_PORT: ${{ secrets.SERVER_PORT }}
    DEPLOY_PATH: ${{ secrets.DEPLOY_PATH }} # server path /home/user/public_html
```

If you only want to sync a specific subfolder you can put that folder in the folder env var instead
