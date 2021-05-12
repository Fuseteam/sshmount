Bash script for reading arguments for sshfs from an ssh-esque config file

it makes it possible to run `sshmount hostname` to mount a remote directory on a local directory using the sshfs program

- the script depends on both sshfs and fusermount being installed on the system
- `sshmount -u host` will unmount the Localdirectory using fusermount
- `sshmount host` will mount the remote directory from a host on a local directory
- the host, local diretory and remote directory are specified in the fsconfig file
- `fsconfig` in this repo is an example config file
- if `.ssh/fsconfig` doesn't already exist it will create it from the example config file
- this can be used in combination with a ssh config file
- pass through sshfs flags such as -f, -s, -C, -p, -o, -d, -1, -V and -h to sshfs

# Install
```
sudo make install
```
# Uninstall
```
sudo make uninstall
```
