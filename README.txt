= doublehelix

* http://github.com/mame/doublehelix

== DESCRIPTION:

doublehelix obfuscates Ruby codes in Double-helix style.
This is inspired by Perl's Acme::DoubleHelix.

Test checkin here

== FEATURES/PROBLEMS:


== SYNOPSIS:

  This is a ``Hello, world!'' program obfucated by doublehelix:

    require "doublehelix"

     AT
    A--T
    T---A
    G----C
     G----C
      G----C
       T---A
        G--C
         AT
         GC
        T--A
       G---C
      T----A
     A----T
    T----A
    G---C
    C--G
     AT
     CG
    A--T
    A---T
    C----G
     A----T
      G----C
       G---C
        G--C
         CG
         GC
        A--T
       T---A
      C----G
     G----C
    A----T
    T---A
    C--G
     GC
     TA
    T--A
    C---G
    G----C
     A----T
      T----A
       C---G
        A--T
         AT
         AT
        C--G
       A---T
      T----A
     G----C
    T----A
    G---C
    T--A
     TA
     CG
    G--C
    C---G
    A----T
     T----A
      G----C
       A---T
        T--A
         CG
         GC
        A--T
       G---C
      C----G
     G----C
    G----C
    A---T
    C--G
     AT
     CG
    A--T
    C---G
    A----T

  You can obfuscate your script by doublehelix method:

    require "doublehelix"
    puts doublehelix('puts"Hello, world!"')

== REQUIREMENTS:

None

== INSTALL:

* gem install doublehelix

== LICENSE:

Copyright:: Yusuke Endoh <mame@tsg.ne.jp>
License:: Ruby's
