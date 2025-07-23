#!/bin/bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]; then
  PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export EDITOR="nvim"
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export TERM=xterm-256color

# Default ROS2 DDS Settings
export ROS_DOMAIN_ID=55
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp

export RCUTILS_CONSOLE_OUTPUT_FORMAT=${RCUTILS_CONSOLE_OUTPUT_FORMAT:='[{severity}] {message}  ({name} {function_name}:{line_number})'}
export RCUTILS_COLORIZED_OUTPUT=1 # force log colors

export PROFILE_IS_SOURCED=1
