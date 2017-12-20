#!/bin/sh
firstArg="$1" shift && cd "$firstArg" && git "$@"