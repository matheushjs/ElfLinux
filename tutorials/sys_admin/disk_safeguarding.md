# How to Protect and Manage your Hard Disks Safely

### A Few Notes

- HDs do implement **error correction**, usually the Reed-Solomon algorithm. This helps keeping file integrity when the disk is about to fail, giving you time to backup.

- Many HDs come with the SMART technology (Self-Monitoring, Analysis and Reporting Technology), which is really handy to verify the hard disk current health state. Make sure to **run long SMART tests often**.

- Watch out for read errors. A disk without read errors means low chance of file corruption, and thus is **fine to backup**. Write errors alone means maybe you can just exclude the sectors that can be written to.


