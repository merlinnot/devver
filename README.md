# Devver
[![buddy pipeline](https://app.buddy.works/merlinnot/devver/pipelines/pipeline/45097/badge.svg?token=3a27b0a4c1fe3afde6649e9e0ebfde13bfc76e4b5d5def3c5735f82ee12eac7c "buddy pipeline")](https://app.buddy.works/merlinnot/devver/pipelines/pipeline/45097)
[![buddy pipeline](https://app.buddy.works/merlinnot/devver/pipelines/pipeline/45098/badge.svg?token=3a27b0a4c1fe3afde6649e9e0ebfde13bfc76e4b5d5def3c5735f82ee12eac7c "buddy pipeline")](https://app.buddy.works/merlinnot/devver/pipelines/pipeline/45098)
[![](https://images.microbadger.com/badges/image/merlinnot/devver.svg)](https://microbadger.com/images/merlinnot/devver "Get your own image badge on microbadger.com")

Devver is a fully flavoured development environment based on Docker.
Editors of choice are VS Code and Spacemacs which are set up and ready
to serve you well with all supported languages and frameworks. 
Carefully selected tools allow you to code, debug and share
your environment easily.

### Quickstart
```bash
$ cd your/project/path
$ curl -O https://raw.githubusercontent.com/merlinnot/devver/master/docker-compose.yml
$ docker-compose up -d
$ docker-compose exec dev [command]
```
Aforementioned commands copy latest docker-compose file into your project,
which should be then redistributed with the project, then it sets up and
connects you to newly created container. Most of configuration is pushed
directly to Docker Hub container registry, therefore there's no need to
update any files in your projects while Devver evolves.

To run X11 apps make sure to allow Devver to use your local X11 server:
```
$ xhost +local:root
```

To check port mapping:
```
$ docker-compose port dev [port_number]
```
### Languages

- Python v2.7.12
- Python v3.5.2
- GNU Compiler Collection v5.4.0 20160609
- Clang v3.8.0-2ubuntu4
- Go v1.9.2
- Node.js v6.11.5 (nvm)
- Perl v5.22.1
- GNU bash v4.3.46

### Frameworks, libraries and language-specific tools

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
- [JS Beautifier](https://github.com/beautify-web/js-beautify)
- [ESLint](http://eslint.org)
- [Yarn](https://github.com/yarnpkg/yarn)

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
- [The Fuck](https://github.com/nvbn/thefuck)
- [Firebase CLI](https://github.com/firebase/firebase-tools)
- [Polymer CLI](https://www.polymer-project.org/)

### X-Apps
- [Visual Studio Code](https://code.visualstudio.com/)  
  Plugins:  
    - [Auto Rename Tag v0.0.14](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
    - [change-case v1.0.0](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case) 
    - [Color Highlight v2.3.0](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)
    - [Docker v0.0.22](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)
    - [ESLint v1.4.3](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
    - [Git Blame v2.2.0](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame)
    - [Git History v0.2.3](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
    - [gitignore v0.5.0](https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore)
    - [HTML Snippets v0.1.0](https://marketplace.visualstudio.com/items?itemName=abusaidm.html-snippets)
    - [JavaScript (ES6) snippets v1.5.0](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
    - [JavaScript Snippet pack v0.1.5](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-javascript-snippet-pack)
    - [npm Intellisense v1.3.0](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
    - [npm v0.3.3](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script)
    - [Path Intellisense v1.4.2](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
    - [Polymer IDE v0.6.0](https://github.com/Polymer/vscode-plugin)
    - [Relative Path v1.0.0](https://marketplace.visualstudio.com/items?itemName=jakob101.RelativePath)
    - [SVG Viewer v1.4.3](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer)
    - [TSLint v1.0.24](https://marketplace.visualstudio.com/items?itemName=eg2.tslint)
    - [VSCode Dimmer v2.1.0](https://marketplace.visualstudio.com/items?itemName=hoovercj.vscode-dimmer)

### Tips and tricks
- `e` is an alias for Spacemacs, i.e. `e package.json`
- Use `f` if you've screwed up and want to use The Fuck

### Update
To update container run the following commands:
```
$ docker pull merlinnot/devver
$ docker-compose stop
$ docker-compose rm -f
```
From now on newly created containers will be up to date.

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
