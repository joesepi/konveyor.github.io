#!/bin/bash
_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ansible-playbook \
  -eroot_dir=$_dir/../release_notes \
  -e@$_dir/config.yml \
  $_dir/main.yml
