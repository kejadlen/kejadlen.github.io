---
title: Adventures in Spacemacs
subtitle: an uncanny valley
---

A reasonable person might wonder why someone that's been happily and
productively using [Vim][vim] for over a decade might want to give
[Emacs][emacs] a try. In short, the answer is [org-mode][org]. I've wanted to
give org-mode a shot for years now, and haven't mainly due to the Emacs
requirement. (I tried [vimwiki][vimwiki], but it just didn't work for my use
cases.) When I learned about [Spacemacs][spacemacs], it was only a matter of
time before the promise of org-mode with vim bindings was too much to resist.

[vim]: http://www.vim.org/
[emacs]: https://www.gnu.org/software/emacs/
[org]: http://orgmode.org/
[spacemacs]: http://spacemacs.org/
[vimwiki]: https://github.com/vimwiki/vimwiki

## Installation

The first decision to make was how to install Emacs. (Because I'm definitely
not using the system Emacs that comes with OS X.) There's the Homebrew
[formula][formula], [cask][cask], and [emacs-plus tap][tap] to choose from.
With Vim, I use [MacVim formula][macvim] with `--with-override-system-vim` so
that I can use the same Vim as a native OS X app as well as on the terminal,
and accomplishing the same behavior for Emacs was strangely difficult.

[formula]: https://github.com/Homebrew/homebrew-core/blob/master/Formula/emacs.rb
[cask]: https://github.com/caskroom/homebrew-cask/blob/master/Casks/emacs.rb
[tap]: https://github.com/d12frosted/homebrew-emacs-plus
[macvim]: https://github.com/Homebrew/homebrew-core/blob/master/Formula/macvim.rb

Issues such as [this][brew-emacs] 

[brew-emacs]: https://github.com/Homebrew/homebrew-core/pull/3330

It took a while, but I eventually settled on `brew install emacs --with-cocoa`
since I have a general preference for installing 



and `emacs='/usr/local/opt/emacs/Emacs.app/Contents/MacOS/Emacs --no-window'` so that I c

## evil-unimpaired

```elisp
(evil-unimpaired :location
                 (recipe :fetcher file
                         :path ~/.emacs.d/layers/+spacemacs/spacemacs-evil/local/evil-unimpaired/evil-unimpaired.el))
```

## Org Mode

- adaptive-wrap

## Annoyances

- ctrl-c
- * register
- mouse
