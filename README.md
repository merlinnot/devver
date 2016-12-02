# Dev
Dev is a fully flavoured development environment based on Docker.
Editors of choice are VS Code and Spacemacs which are set up and ready
to serve you well with all supported languages and frameworks. 
Carefully selected tools allow you to code, debug and share
your environment easily.

### Quickstart
```bash
$ cd your/project/path
$ curl -O https://raw.githubusercontent.com/merlinnot/dev/master/docker-compose.yml
$ docker-compose up -d
$ docker-compose exec dev [command]
```
Aforementioned commands copies latest docker-compose file into your project,
which should be then redistributed with the project, then it sets up and
connects you to newly created container. Most of configuration is pushed
directly to Docker Hub container registry, therefore there's no need to
update any files in your projects while Dev evolves.

### Languages

- Python v2.7.12
- Python v3.5.2
- GNU Compiler Collection v5.4.0 20160609
- Clang v3.8.0-2ubuntu4
- Go v1.7.3
- The Glorious Glasgow Haskell Compilation System v8.0.1
- Node.js v7.1.0
- Perl v5.22.1
- GNU bash v4.3.46

### Frameworks, libraries and language-specific tools

C++:
- [Boost v1.62.0](http://www.boost.org)

Haskell:
- [Stack](https://docs.haskellstack.org/en/stable/README/)
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
- [Tern](https://ternjs.net)
- [JS Beautifier](https://github.com/beautify-web/js-beautify)
- [ESLint](http://eslint.org)
- [Yarn](https://github.com/yarnpkg/yarn)
- [Polymer CLI](https://www.polymer-project.org/)

### Command line tools and programs
- [GNU Emacs](https://www.gnu.org/software/emacs/)
- [Spacemacs](http://spacemacs.org)
- [Google Cloud SDK](https://cloud.google.com/sdk/)
- [Google App Engine Go](https://cloud.google.com/sdk/)
- [Google BigQuery Command Line Tool](https://cloud.google.com/sdk/)
- [Google BigQuery Command Line Tool](https://cloud.google.com/sdk/)
- [Google Cloud Bigtable emulator](https://cloud.google.com/sdk/)
- [Google Cloud Datastore Emulator](https://cloud.google.com/sdk/)
- [Google Cloud Datastore Emulator (Legacy)](https://cloud.google.com/sdk/)
- [Google Cloud Pub/Sub Emulator](https://cloud.google.com/sdk/)
- [Google Cloud SDK Core Libraries (Platform Specific)](https://cloud.google.com/sdk/)
- [Google Cloud Storage Command Line Tool](https://cloud.google.com/sdk/)
- [Default set of gcloud commands](https://cloud.google.com/sdk/)
- [gcloud Alpha Commands](https://cloud.google.com/sdk/)
- [gcloud Beta Commands](https://cloud.google.com/sdk/)
- [gcloud app Python Extensions](https://cloud.google.com/sdk/)
- [kubectl](http://kubernetes.io/docs/user-guide/kubectl-overview/)
- [Ngrok](https://ngrok.com)
- [The Fuck](https://github.com/nvbn/thefuck)

### X-Apps
- [Visual Studio Code](https://code.visualstudio.com/)  
  Plugins:  
    - [Auto Rename Tag v0.0.8](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
    - [change-case v1.0.0](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case) 
    - [Color Highlight v1.2.1](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)
    - [ESLint v1.1.0](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
    - [Git Blame v1.3.0](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
    - [Git History v0.1.2](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
    - [gitignore v0.4.0](https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore)
    - [HTML Snippets v0.0.18](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets)
    - [Image Preview v0.5.1](https://marketplace.visualstudio.com/items?itemName=buzzfrog.imagepreview)
    - [JavaScript (ES6) snippets v1.2.0](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
    - [JavaScript Snippet pack v0.1.5](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-javascript-snippet-pack)
    - [npm v0.1.2](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script)
    - [npm Intellisense v0.1.4](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
    - [Path Intellisense v1.1.0](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
    - [React Redux ES6 Snippets v2.0.2](https://marketplace.visualstudio.com/items?itemName=timothymclane.react-redux-es6-snippets)
    - [Reactjs code snippets v1.2.0](https://marketplace.visualstudio.com/items?itemName=xabikos.ReactSnippets)
    - [Relative Path v0.11.0](https://marketplace.visualstudio.com/items?itemName=jakob101.RelativePath)
    - [REST Client v0.11.0](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)
    - [Sass v1.2.1](https://marketplace.visualstudio.com/items?itemName=robinbentley.sass-indented)
    - [SVG Viewer v1.2.0](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer)
    - [VSCode Dimmer v2.1.0](https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-dimmer)

### Tips and tricks
- "e" is an alias for Spacemacs, i.e. `e package.json`
- Use f if you've screwed up and want to use The Fuck

### Development
Dockerfile is composed of files in `./modules` directory. Composing
is made using m4 macro processor. All files included in Dockerfile
must be registered in Dockerfile.m4.

Use `make dockerfile` to compose Dockerfile, `make build` to build
an image.

### Troubleshooting

##### No protocol specified
```
No protocol specified
rqt: cannot connect to X server unix:0
```
Solution: 
```
$ xhost +local:root
```