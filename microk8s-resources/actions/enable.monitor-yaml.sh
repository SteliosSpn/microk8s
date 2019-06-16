#!/usr/bin/env bash

set -e

source $SNAP/actions/common/utils.sh


if [[ -d $1 ]]; then
    echo "Monitoring directory $1 for yaml changes "
else
    echo "$1 is not a valid directory. Hint: microk8s.enable monitor-yaml:<dir_path_to_monitor>"
    exit 1
fi


exec "$SNAP/monitoryaml" "$1"
