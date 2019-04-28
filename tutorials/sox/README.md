# Usage of the `sox` command

## Removing Silence from Songs

Silence can be removed from the beginning of the song, as follows (the `-S` is merely for `sox` to show progress):

```
sox -S in.mp3 out.mp3 silence -l 1 0.1 1%
```

This removes the first period of silence of the song. The period of silence ends after 0.1 seconds of non-silence is reached. It is considered silence if the sample is at most 1% of the maximum sample.

The command's syntax is:

```
silence [-l] above-periods [duration threshold[d|%]
       [below-periods duration threshold[d|%]]
```

However, removing silence at the end is not as simple. It is better to reverse the song and then cut the silence again, as follows:

```
sox -S in.mp3 out.mp3 silence -l 1 0.1 1% : reverse : silence -l 1 0.1 1% : reverse
```
