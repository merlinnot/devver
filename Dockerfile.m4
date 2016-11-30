# -*-dockerfile-*-

# This file is preprocessed by m4. Use make build to build docker image.
# All imported files can be found in ./modules directory.

# Base image
include(core.docker)
include(tool/essentials.docker)

# Languages
include(lang/python.docker)
include(lang/cpp.docker)
include(lang/haskell.docker)
include(lang/go.docker)
include(lang/javascript.docker)

# Tools
include(tool/spacemacs.docker)
include(tool/thefuck.docker)
include(tool/gcloud.docker)
include(tool/bash.docker)
include(tool/vscode/vscode.docker)

# Shrinking image
include(shrink.docker)
