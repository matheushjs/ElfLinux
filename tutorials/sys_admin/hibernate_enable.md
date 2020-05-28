Copy the UUID of the swap partition

```
vim /etc/fstab
```

Edit the grub file

```
sudo vim /etc/default/grub
```

Change "quiet splash" to

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=SWAP_UUID_HERE"
```

Update grub

```
sudo update-grub
```

Hibernate

```
systemctl hibernate
```
