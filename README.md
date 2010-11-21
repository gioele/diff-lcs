Diff::LCS
=========

Compute differences using the McIlroy-Hunt LCS algorithm.

Description
-----------

Diff::LCS is a port of Perl's Algorithm::Diff that uses the McIlroy-Hunt
longest common subsequence (LCS) algorithm to compute intelligent
differences between two sequenced enumerable containers.

The implementation is based on Mario I. Wolczko's Smalltalk version (1.2,
1993) and Ned Konz's Perl version (Algorithm::Diff).

How to use
----------

Using this module is quite simple. By default, Diff::LCS does not extend
objects with the Diff::LCS interface, but will be called as if it were a
function:

    require 'diff/lcs'

    seq1 = %w(a b c e h j l m n p)
    seq2 = %w(b c d e f j k l m r s t)

    lcs = Diff::LCS.LCS(seq1, seq2)
    diffs = Diff::LCS.diff(seq1, seq2)
    sdiff = Diff::LCS.sdiff(seq1, seq2)
    seq = Diff::LCS.traverse_sequences(seq1, seq2, callback_obj)
    bal = Diff::LCS.traverse_balanced(seq1, seq2, callback_obj)
    seq2 == Diff::LCS.patch!(seq1, diffs)
    seq1 == Diff::LCS.unpatch!(seq2, diffs)
    seq2 == Diff::LCS.patch!(seq1, sdiff)
    seq1 == Diff::LCS.unpatch!(seq2, sdiff)

Objects can be extended with Diff::LCS:

    seq1.extend(Diff::LCS)
    lcs = seq1.lcs(seq2)
    diffs = seq1.diff(seq2)
    sdiff = seq1.sdiff(seq2)
    seq = seq1.traverse_sequences(seq2, callback_obj)
    bal = seq1.traverse_balanced(seq2, callback_obj)
    seq2 == seq1.patch!(diffs)
    seq1 == seq2.unpatch!(diffs)
    seq2 == seq1.patch!(sdiff)
    seq1 == seq2.unpatch!(sdiff)

By requiring `diff/lcs/array` or `diff/lcs/string`, `Array` or `String`
will be extended for use this way.

Authors
-------

Original author: Austin Ziegler.

Contributors:

* Alan Chen
* Gioele Barabucci

License
-------

Copyright 2004 Austin Ziegler <diff-lcs@halostatue.ca>

This program is free software. It may be redistributed and/or modified
under the terms of the GPL version 2 (or later), the Perl Artistic
licence, or the Ruby licence.

Implements McIlroy-Hunt diff algorithm; adapted from:

* Perl's Algorithm::Diff by Ned Konz
* Smalltalk by Mario I. Wolczko

