# Personal sofle config

Forked from https://github.com/falbatech/zmk-config-sofle

### Install the build environment 


- Install docker as your OS requires
- Clone this repo
- Edit the config/sofle.keymap to your liking. This is a [nice tool](https://nickcoutsos.github.io/keymap-editor/) to simplify the process

### Build

To build with github actions, create your own repo with the files provided and enable actions. It will build artifacts every commit.


To build locally and not rely on github actions, you can use [act](https://nektosact.com/introduction.html)


Run:
```
act -P ubuntu-latest=-self-hosted
```

This will generate the firmware files inside 2 docker containers. As act doesn't support some things yet, github upload of artifacts fails. This is OK.

Run the getfw.sh script that will copy the files to the current directory.

Destroy the build containers.

Push the reset button twice on one side of the keyboard. This will make the controller behave as a flash drive.
Copy the uf2 file for that side of the keyboard there and repeat this process for the other side.

To ensure both sides are synced, push the reset button on both once at the same time (or as close as possible).
