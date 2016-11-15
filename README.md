# Dev
Dev is a fully flavoured development environment based on Vagrant and Docker.
Editor of choice is Spacemacs which is set up and ready to serve you well
with all supported languages and frameworks. Carefully selected tools allow 
you to code, debug and share your environment easily.

### Quickstart
```bash
cd your/project/path
curl -O https://raw.githubusercontent.com/merlinnot/dev/master/Vagrantfile
vagrant up
vagrant ssh
```
Aforementioned commands copies latest Vagrantfile into your project, which
which should be then redistributed with the project, then it sets up and
connects you to newly created container. Most of configuration is pushed
directly to Docker Hub container registry, therefore thre's no need to
update any files in your projects while Dev evolves.

### Languages

- Python v2.7.12
- Python v3.5.2
- GNU Compiler Collection v5.4.0 20160609
- Clang v3.8.0-2ubuntu4
- Go v1.7.3
- The Glorious Glasgow Haskell Compilation System, v8.0.1
- Node.js v7.1.0
- Perl v5.22.1
- GNU bash, v4.3.46

### Frameworks, libraries and language-specific tools

C++:
- [Boost v1.62.0](http://www.boost.org)

Haskell:
- [Stack v1.2.0](https://docs.haskellstack.org/en/stable/README/)
- [apply-refact](https://hackage.haskell.org/package/apply-refact)
- [hlint](https://hackage.haskell.org/package/hlint)
- [stylish-haskell](https://hackage.haskell.org/package/stylish-haskell)
- [hasktags](https://hackage.haskell.org/package/hasktags)
- [hoogle](https://hackage.haskell.org/package/hoogle)
- [intero](https://hackage.haskell.org/package/intero)
- [hindent](https://hackage.haskell.org/package/hindent)

Go:
- [gocode](https://github.com/nsf/gocode)
- [godef](https://github.com/rogpeppe/godef)
- [guru](https://golang.org/x/tools/cmd/guru)
- [gorename](https://golang.org/x/tools/cmd/gorename)
- [goimports](https://golang.org/x/tools/cmd/goimports)
- [gometalinter](https://github.com/alecthomas/gometalinter)
- [Glide](https://glide.sh/get)
- [Google App Engine SDK for Go](https://cloud.google.com/appengine/docs/go/download)
- [Goole App Engine package](google.golang.org/appengine)

JavaScript:
- [Tern v0.20](https://ternjs.net)
- [JS Beautifier v1.6.4](https://github.com/beautify-web/js-beautify)
- [ESLint v3.10.0](http://eslint.org)
- [Yarn v0.16.1](https://github.com/yarnpkg/yarn)

### Command line tools and programs
- [GNU Emacs 24.5.1](https://www.gnu.org/software/emacs/)
- [Spacemacs v0.200.5](http://spacemacs.org)
- [Google Cloud SDK 134.0.0](https://cloud.google.com/sdk/)
- [Ngrok v1.6](https://ngrok.com)
- [The Fuck v3.11](https://github.com/nvbn/thefuck)

### Tips and tricks
- "e" is an alias for Spacemacs, i.e. `e package.json`
- Use f if you've screwed up and want to use The Fuck
