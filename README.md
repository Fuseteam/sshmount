Bash script for reading arguments for sshfs from an ssh-esque config file

it makes it possible to run `sshmount hostname` to mount a remote directory on a local directory using the sshfs program

- the script depends on both sshfs and fusermount being installed on the system
- `sshmount -u host` will unmount the Localdirectory using fusermount
- `sshmount host` will mount the remote directory from a host on a local directory
- the host, local diretory and remote directory are specified in the fsconfig file
- `fsconfig` in this repo is contains examples for writing a the needed config file for this script
- this can be used in combination with a ssh config file
- pass through sshfs flags such as -F, -f, -s, -C, -p, -o, -d, -1, -V and -h to sshfs
- pass through ssh flags with -S example `sshmount -S "-o ClearAllForwardings=no -L 3306:127.0.0.1:3306"`
- allow ssh tunneling by with -w example: `sshmount -w host`
- allow ssh tunneling by specifying "PortForwarding yes" in fsconfig
- allow localforward and remoteforward rules to be added in fsconfig
- list mounted directories with `sshmount -l`
- remount a mounted directory with `sshmount -r host`

# Install
- Download the files

[![download](https://github.com/Fuseteam/systemd-service-files/blob/main/images/download.jpg)](https://github.com/Fuseteam/sshmount/archive/refs/heads/master.zip)
- extract the files
- open the extract folders
- right click on an empty area and click "open in terminal"
- run the following command
## Do not use sudo, the script will install it under your home directory
```
make install
```
# Uninstall
## Do not use sudo, it was installed under your home directory
```
make uninstall
```
