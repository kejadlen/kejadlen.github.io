---
title: '#beachconf'
---

At Pivotal Labs, when we're in between projects, we call it being on the
"beach". (I've heard other consultancies call it the "bench", which makes more
sense to me.) While this may sound like a dream for a lot of people, we've
found that most people get bored/burned out on beach after a few weeks. In
light of that, and to keep me more accountable, I've decided to start keeping a
log of what I'm doing on the beach.

### July 5

- Watched [What's New in Foundation][212]. This wasn't too informative; some
  nice improvements with Objective-C interop with `String`/`Range` and
  copy-on-write, but I don't use key paths or KVO a lot, so that was not as
  interesting. The addition of [Codable][codable] is greatly welcomed, though.
- Read [A Mathematician's Lament][lament]. While I agree pretty much completely
  with the overall point, I did think it was overly harsh on math teachers.
- Watched [Building Apps with Dynamic Type][245]. I've always been impressed by
  Apple's accessibility support as a developer (I do use a handful of
  accessibility features on iOS, but not Dynamic Type), and it's cool to see
  Apple steadily improving in this area.
  - Both designers and devs are going to have to adjust to constraints based on
    baselines instead of the space between labels.
- Poked around at [my implementation][kilo-rs] of [Build Your Own Text
  Editor][text-editor].

[212]: https://developer.apple.com/videos/play/wwdc17/212
[codable]: https://developer.apple.com/documentation/swift/codable
[lament]: https://www.maa.org/sites/default/files/pdf/devlin/LockhartsLament.pdf
[245]: https://developer.apple.com/videos/play/wwdc2017/245
[kilo-rs]: https://github.com/kejadlen/kilo-rs
[text-editor]: http://viewsourcecode.org/snaptoken/kilo/index.html

### July 6

- Poked around a bit more with [kilo.rs][kilo-rs]. Realized that I need to
  handle `STDIN` differently, so I'm going to let that simmer in my
  subconscious for a bit before continuing.
- Watched [Life After Nil][life-after-nil]. Mostly skimmed through this talk
  about applying concepts learned from Haskell to Ruby. Not much new to me
  here, but validating to see that I've reached similar conclusions as other
  people.
- Watched [Auto Layout Techniques in Interface Builder][412]. Learned a few
  neat tricks in this talk. I like how hard Apple's pushing Dynamic Type across
  their WWDC presentations. From my anecdotal experience, I've seen a number of
  people on the bus using that accessibility feature.
- Wrote [a blog post on encrypting stuff in git][encrypting-stuff-in-git].
- Read (skimmed) [Can Programming Be Liberated from the von Neumann Style? A
  Functional Style and Its Algebra of Programs][backus-turing]. Basically
  Backus complaining about "von Neumann style" programming languages.
  Interesting how not much seems to have changed in this regard since he wrote
  this in 1978.
- Read [An Experiment in Software Prototyping Productivity][haskell-prototype].
  Some interesting findings, even keeping in mind the authorial bias for
  Haskell.

[life-after-nil]: https://vimeo.com/200077718
[412]: https://developer.apple.com/videos/play/wwdc2017/412/
[encrypting-stuff-in-git]: {{ site.baseurl }}{% post_url 2017-07-06-encrypting-stuff-in-git %}
[backus-turing]: http://www.thocp.net/biographies/papers/backus_turingaward_lecture.pdf
[haskell-prototype]: http://haskell.cs.yale.edu/?post_type=publication&p=366
