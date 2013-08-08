#!/bin/bash

gem uninstall hiera-eyaml-plaintext
rake build
gem install pkg/hiera-eyaml-plaintext
eyaml -v