#!/bin/bash

puppet apply --verbose --modulepath=modules manifests/site.pp
