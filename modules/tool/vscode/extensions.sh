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

vsext wmaurer change-case 1.0.0
vsext naumovs color-highlight 1.2.1
vsext waderyan gitblame 1.3.0
vsext hoovercj vscode-dimmer 2.1.0
