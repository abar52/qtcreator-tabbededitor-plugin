# Qt Creator Tabbed Editor Plugin

The aim of this project is to provide a tab-based experience in [Qt Creator](http://qt-project.org/wiki/Category:Tools::QtCreator).

## Copyright / License

Copyright (C) 2015 Oleg Shparber

This software is available under the terms of the GNU Lesser General Public License version 3 (LGPLv3).

This project is a fork of [QtCreator Tabbed Editor Plugin](https://sourceforge.net/projects/tabbededitor/) by SNA Soft.

Instructions to build for fedora 22 x64 with qt-creator (require a working rpmbuild environment)

## 1) build qt-creator from rpm source

```bash
cd rpmbuild/SRPMS
dnf download --source qt-creator
sudo dnf builddep  qt-creator-3.4.1-1.fc22.src.rpm
rpm -ivh qt-creator-3.4.1-1.fc22.src.rpm
cd ../SPECS
rpmbuild -ba qt-creator.spec
```

## 2) import github qtcreator-tabbededitor-plugin repository in qt-creator and build with native compiler

```
import Git project https://github.com/abar52/qtcreator-tabbededitor-plugin.git

add to your Build Environment
QTC_LIBRARY_BASENAME=lib64
QTC_BUILD=<your home>/rpmbuild/BUILD/qt-creator-opensource-src-3.4.1 (must be absolute path)
QTC_SOURCE=<your home>/rpmbuild/BUILD/qt-creator-opensource-src-3.4.1 (must be absolute path)

and build Release
```

## 3) to install for all users move the plugin after the build to qtcreator system plugins repository

```bash
sudo mv ~/.local/share/data/QtProject/qtcreator/plugins/3.4.1/libTabbedEditor.so /usr/lib64/qtcreator/plugins/
```
