# How to Protect and Manage your Hard Disks Safely

### A Few Notes

- HDs do implement **error correction**, usually the Reed-Solomon algorithm. This helps keeping file integrity when the disk is about to fail, giving you time to backup.

- Many HDs come with the SMART technology (Self-Monitoring, Analysis and Reporting Technology), which is really handy to verify the hard disk current health state. Make sure to **run long SMART tests often**.

- Watch out for read errors. A disk without read errors means low chance of file corruption, and thus is **fine to backup**. Write errors alone means maybe you can just exclude the sectors that can be written to.


### Checking file integrity between two backups

If you have two very similar file trees (such as 2 backups, or one backup + the original files), then you can use rsync to verify whether the files are not corrupt.

Usually rsync uses timestamp + file size to determine whether two files are different. You can make it use checksums instead, using the -c flag:

```
rsync -avi --dry-run --delete -c --exclude ".*" ./mathjs_backup/ ./last-backup/ | tee ~/output.txt
```

This will place in `~/output.txt` the result of the checking. Lines starting with a dot are unchanged files, so you can **filter only relevant lines** using:

```
cat ~/output.txt | grep -v "^\."
```


### Performing SMART tests

SMART tests can be performed using the usually built-in tool `gnome-disks`.

If you want a terminal command, install the package `smartmontools`, then you can run:

```
smartctl -x /dev/sda     # To display all available SMART information on the device
smartclt --test=long     # To perform a long SMART verification on the device (very useful)
```

Make sure to periodically (every semester?) run the long test.



### Checking for read/write errors

Use the command `e2fsck` to do these checks:

```
e2fsck -c -v -t -t /dev/sda1       # Performs read-only checks
e2fsck -c -c -v -t -t /dev/sda1    # Performs read and write checks (non-destructive)
```

If you want it to automatically solve all problems found, attach the `-y` flag.
