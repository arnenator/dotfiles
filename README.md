# dotfiles
These files are my configurations and setup for MacOS and Windows. A quick disclaimer, the two platforms are not going to be exact the same. 
As an example we are not going to install fish in the Windows setup. 

## How to start?
These setup files assumes that you have a clean installation of your PC. In order to begin the installation you need to ensure the following is installed on your PC:

### Prerequisites
**Mac**:
- Fish
- Homebrew

**Windows**:
- Powershell

On the Windows setup we are going to use Chocolatey in order to install applications and other nice tools. Chocolatey is being installed during the execution of `./setup.ps1`.

### Starting Setup
**MAC**
```fish
fish ./setup.fish
```

**Windows**

When you want to do this in windows then it may require you to open up your powershell windows as an administrator

```pwsh
./setup.ps1
```