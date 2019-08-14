Configure `perf` to run without requiring sudo-rights.
---

First execute:

```
sudo sh -c 'echo 1 >/proc/sys/kernel/perf_event_paranoid'
```

To ensure it persists through booting, append to the file `/etc/sysctl.d/99-mysettings.conf` (create if needed):

```
kernel.perf_event_paranoid=1
```

(must be a filename that doesnt exist in /run/sysctl.d/ or /usr/lib/sysctl.d/)
