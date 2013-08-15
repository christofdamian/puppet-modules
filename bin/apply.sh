#!/bin/bash

DIR=$( cd "$( dirname "$0" )" && cd .. && pwd )

puppet apply --verbose --modulepath="$DIR/modules" "$DIR/manifests/site.pp"
