#!/bin/sh
# Toggle autotiling

if pid=$(pgrep autotiling-rs); then
	kill -s INT "$pid"
else
	$HOME/.cargo/bin/autotiling-rs
fi

