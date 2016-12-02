#!/bin/sh
# installs a Visual Studio Code extension by downloading and unzipping to $HOME/.vscode/extensions/
# requires curl and unzip
function vsext {
  publisher=$1
  extension=$2
  version=$3
  echo "downloading $publisher.$extension-$version.vsix"
  statuscode=$(curl --write-out "%{http_code}" -o /tmp/$publisher.$extension-$version.vsix https://$publisher.gallery.vsassets.io/_apis/public/gallery/publisher/$publisher/extension/$extension/$version/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage)
  echo "status code $statuscode"
  if [ $statuscode -ne 200 ]; then
    exit 2
  fi
  rm -rf /tmp/extension/
  unzip -q /tmp/$publisher.$extension-$version.vsix extension/* -d /tmp
  rm /tmp/$publisher.$extension-$version.vsix
  mkdir -p /root/.vscode/extensions/
  rm -rf /root/.vscode/extensions/$publisher.$extension-$version/
  mv /tmp/extension/ /root/.vscode/extensions/$publisher.$extension-$version/
  echo "installed /root/.vscode/extensions/$publisher.$extension-$version"
}

vsext formulahendry auto-rename-tag 0.0.8
vsext wmaurer change-case 1.0.0
vsext naumovs color-highlight 1.2.1
vsext dbaeumer vscode-eslint 1.1.0
vsext waderyan gitblame 1.3.0
vsext donjayamanne githistory 0.1.2
vsext codezombiech gitignore 0.4.0
vsext abusaidm html-snippets 0.0.18
vsext buzzfrog imagepreview 0.5.1
vsext xabikos JavaScriptSnippets 1.2.0
vsext akamud vscode-javascript-snippet-pack 0.1.5
vsext eg2 vscode-npm-script 0.1.2
vsext christian-kohler npm-intellisense 0.1.4
vsext christian-kohler path-intellisense 1.1.0
vsext timothymclane react-redux-es6-snippets 2.0.2
vsext xabikos ReactSnippets 1.2.0
vsext jakob101 RelativePath 0.11.0
vsext humao rest-client 0.11.0
vsext robinbentley sass-indented 1.2.1
vsext cssho vscode-svgviewer 1.2.0
vsext hoovercj vscode-dimmer 2.1.0
