# cpp-workspace

Just a space where I'm learning C++ in VSCode.

## Setup

**Prerequisites:** Assumes you are running Windows 11 with VSCode installed, and have cloned this repository.

1. Download the latest [MSYS2](https://www.msys2.org/) and install it to the default directory: `C:\msys64`
2. Launch the installed `msys2.exe` and install these packages:

```
pacman -S --needed base-devel mingw-w64-ucrt-x86_64-toolchain
pacman -S cmake
pacman -S git
```

3. Add `C:\msys64\ucrt64\bin` to PATH.
4. Install VSCode extension: [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
5. Create an empty folder called `build` in the repo's root directory. (todo: automate this)

## Links

* [C/C++ for Visual Studio Code](https://code.visualstudio.com/docs/languages/cpp)
* [Debug C++ in Visual Studio Code](https://code.visualstudio.com/docs/cpp/cpp-debug)
* [MSYS2 - Software Distribution and Building Platform for Windows](https://www.msys2.org/)
