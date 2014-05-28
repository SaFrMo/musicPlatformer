\header{
   composer          = "Johann Sebastian Bach (1685-1750)"
   title             = "Invention 1"
   opus              = "BWV 772"
   
   mutopiatitle      = "Invention 1"
   mutopiacomposer   = "BachJS"
   mutopiaopus       = "BWV 772"
   mutopiainstrument = "Harpsichord, Piano"
   source            = "Bach-Gesellschaft"
   style             = "Baroque"
   copyright         = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer        = "jeff covey"
   maintainerEmail   = "jeff.covey@pobox.com"
   maintainerWeb     = "http://pobox.com/~jeff.covey/"
   lastupdated       = "2006/08/21"
 footer = "Mutopia-2008/06/15-40"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\version "2.11.46"

voicetwo =
{
   r2          r16   c[ d e]  f[ d e c]                      | % 1
   g8[ g,] r4 r16  g[ a b]  c'[ a b g]                      | % 2
   c'8[ b c' d']  e'[ g a b]                                    | % 3
   c'[ e fis g]  a[ b] c'4 ~                                  | % 4
   c'16[ d e fis]  g[ e fis d]  g8[ b, c d]                  | % 5
   e[ fis g e]  b,8.[ c16]  d8[ d,]                           | % 6
   r16  g,[ a, b,]  c[ a, b, g,]  d8[ g fis g]                    | % 7
   a16[ d e fis]  g[ e fis d]  a8[ d' c' d']                  | % 8
   g16[ \clef "treble" g' f' e']  d'[ f' e' g']  f'8[ e' f' d']       | % 9
   e'16[ a' g' f']  e'[ g' f' a']  g'8[ f' g' e']                        | % 10
   f'16[ bes' a' g']  f'[ a' g' bes']  a'[ g' f' e']  d'[ f' e' g']          | % 11
   f'[ e' d' c']  b[ d' c' e']  d'[ c' b a]  gis[ b a c']              | % 12
   \clef "bass"
   b8[ e]  d'8.[^\mordent e'16]  c'[ b a g!]  fis[ a gis b]   | % 13
   a[ c' b d']  c'[ e' d' f']  e'8[ a e' e]                       | % 14
   a8[ a,] r4 r16  e'16[ d' c']  b[ d' cis' e']                  | % 15
   d'2 ~  d'16[ a b c']    d'[ b c' a]                            | % 16
   b2 ~  b16[ d' c' b]    a[ c' b d']                            | % 17
   c'2 ~  c'16[ g a bes]  c'[ a bes g]                          | % 18
   a8[ bes a g]  f[ d' c' bes]                                | % 19
   a[ f' e' d']    e'16[ d e f]  g[ e f d]                     | % 20
   e8[ c d e]  f16[ d e f]  g8[ g,]                          | % 21
   <c c,>1\arpeggio_\fermata                                 | % 22
   \bar "|."
}
