---
title: Submodule and Symlink All The Things!
subtitle: I have one hammer...
---
Using [git submodules] and [symlinks] is a technique that I use surprisingly
often, so I thought that I'd perhaps document it here. I particularly like it
for several reasons:

1. It relies on tools that I'm pretty much always using anyway. (`git` and
a filesystem that supports symlinks. Sorry, people using Windows.)
1. There are fewer steps required when getting the project working on a new
machine. (Assuming usage of `git clone --recursive`.)
1. It's simpler to update files from said dependencies - I can treat them as
normal files and update the submodules at my leisure. No need to change
directories or tools to make changes.

For my usage, the main downside is that to avoid git submodule hell, it really
helps to be disciplined during development, especially when committing across
the submodule boundary. I've also run into issues when changing git remote
URLs, but that's a pretty rare use case.



[git submodules]: https://git-scm.com/docs/git-submodule
[symlinks]: http://www.freebsd.org/cgi/man.cgi?ln
