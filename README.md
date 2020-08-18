Bash script for reading arguments for sshfs from an ssh-esque config file

it makes it possible to run sshmount hostname to mount a remotedirectory on a local directory using the sshfs program

sshfs.conf is an example configfile

the script depends on both sshfs and fusermount being installed on the system
sshmount -u host will unmount the Localdirectory using fusermount
sshmount host will mount the remote host directory on a localdirectory
the host, local diretory and remote directory are specified in the sshfs.conf file
this can be used in combination with a ssh config file
