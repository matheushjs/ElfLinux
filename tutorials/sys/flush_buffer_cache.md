To flush buffer cache, first run `sudo su` and then you can:

- Free page cache (this is usually enough)

```
sync; echo 1 > /proc/sys/vm/drop_caches;
```

- Free dentries and inodes

```
sync; echo 2 > /proc/sys/vm/drop_caches;
```

- Free dentries, inodes and page cache

```
sync; echo 3 > /proc/sys/vm/drop_caches;
```
