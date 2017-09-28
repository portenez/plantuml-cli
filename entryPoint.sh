#!/usr/bin/env bash

export DISPLAY=:99
export DBUS_SESSION_BUS_ADDRESS=/dev/null
Xvfb :99 -ac -shmem -screen 0 1600x1200x16 2>/dev/null 1>&2 &

exec "$@"
