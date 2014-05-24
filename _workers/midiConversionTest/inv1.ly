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

voiceone =
{
   r16  c'[ d' e']   f'[ d' e' c']  g'8[ c'' b'^\prall c'']              | % 1
   d''16[ g' a' b']  c''[ a' b' g']  d''8[ g'' f''^\prall g'']               | % 2
   e''16[ a'' g'' f'']  e''[ g'' f'' a'']  g''[ f'' e'' d'']  c''[ e'' d'' f'']              | % 3
   e''[ d'' c'' b']  a'[ c'' b' d'']  c''[ b' a' g']  fis'[ a' g' b']              | % 4
   a'8[ d']  c''8.[^\mordent d''16]  b'[ a' g' fis']  e'[ g' fis' a']    | % 5
   g'[ b' a' c'']  b'[ d'' c'' e'']  d''[ b'32 c'' d''16 g'']  b'8[^\prall a'16 g'] | % 6
   g'8 r r4 r16  g'[ a' b']  c''[ a' b' g']                           | % 7
   fis'8^\prall r r4 r16  a'[ b' c'']  d''[ b' c'' a']                  | % 8
   b'8          r r4 r16  d''[ c'' b']  a'[ c'' b' d'']                  | % 9
   c''8          r r4 r16  e''[ d'' c'']  b'[ d'' cis'' e'']                | % 10
   d''8[ cis'' d'' e'']  f''[ a' b'! cis'']                               | % 11
   d''[ fis' gis' a']  b'[ c''] d''4 ~                                | % 12
   d''16[ e' fis' gis']  a'[ fis' gis' e']  e''[ d'' c'' e'']  d''[ c'' b' d'']    | % 13
   c''[ a'' gis'' b'']  a''[ e'' f'' d'']  gis'[ f'' e'' d'']  c''8[ b'16 a']        | % 14
   a'16[ a'' g'' f'']  e''[ g'' f'' a''] g''2 ~                              | % 15
   g''16[ e'' f'' g'']   a''[ f'' g'' e''] f''2 ~                              | % 16
   f''16[ g'' f'' e'']   d''[ f'' e'' g''] f''2 ~                              | % 17
   f''16[ d'' e'' f'']   g''[ e'' f'' d''] e''2 ~                              | % 18
   e''16[ c'' d'' e'']  f''[ d'' e'' c'']  d''[ e'' f'' g'']  a''[ f'' g'' e'']              | % 19
   f''[   g'' a'' b'']  c'''[ a'' b'' g'']  c'''8[ g'']  e''[ d''16 c'']                 | % 20
   c''[ bes' a' g']  f'[ a' g' bes']  a'[ b' c'' e']  d'[ c'' f' b']         | % 21
   <c'' g' e'>1^\fermata\arpeggio                                | % 22
   \bar "|."
}

