# dev
Dev is a Docker container made to work with Vagrant. It's a development environment based on spacemacs.

It is meant to work with following languages:
- Python (2/3)
- C/C++ (with Boost)
- Go 1.7.1 (with goappengine 1.9.46)
- Haskell (haskell stack, 8.0.1 pre-installed)
- JavaScript (Node.js 6.x.x)

### Installation
Simply copy Vagrantfile
```curl -O https://raw.githubusercontent.com/merlinnot/dev/master/Vagrantfile```

with Vagrant and Docker installed:
```bash
$ (sudo) vagrant up
$ (sudo) vagrant ssh
```
