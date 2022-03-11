# runcom_backups
Backups for bashrc, vimrc, etc..

Current files:
* vimrc
* bashrc
* bash_aliases

## Packages for a fresh installation

* Guake, Vim, Flameshot, Meld, Feh, trashput-cli fish terminator xclip htop

```
sudo apt install guake vim flameshot meld feh trash-cli fish terminator xclip htop
```

* Pomodoro Timer
```
sudo apt install gnome-shell-pomodoro
```

## Anaconda Setup for Fish
* For the **config.fish**(create if you don't have) file in ```~/.config/fish/``` directory. 
* Now add the following to the file 'config.fish':

```
set  PATH /home/<user>/anaconda3/bin $PATH
```

* Then save the file. Close the current terminal (fish shell) and open again. Now you can use Anaconda's python.

* To check: run ```python3``` and you will see:
```
 Python 3.7.1 (default, Dec 14 2018, 19:28:38)
 [GCC 7.3.0] :: Anaconda, Inc. on linux
 Type "help", "copyright", "credits" or "license" for more information.
```
* To use conda activate env command

Enter this command on your fish shell:
```
conda init fish
```
