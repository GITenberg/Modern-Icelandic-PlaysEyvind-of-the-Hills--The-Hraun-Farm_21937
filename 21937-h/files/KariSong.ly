\version "2.10.25" 
\include "english.ly"


melody = \relative c'
  <<
  { 
  \tempo 4=120  
  \once \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \key g \minor
  \time 6/8

  \partial 8
  d8 | bf'4 bf8 a4 a8 | g4 g8 d4 d8 | bf'4 bf8 a4 a8 | g4. r4 r8 |
  d4 d8 d4 d8 | d4 d8 d4 d8 | d4 g4\fermata r8 
  d8 | bf'4 bf8 a4 a8 | g4 g8 d4 d8 | bf'4 bf8 a4 a8 | g4. r4
  d8 | d4 d8 d4 d8 | d4 d8 d4 d8 | d4 g4\fermata r4 |
  d8 d'2\fermata r8 | bf4 bf8 a4 a8 | g4. d4 d8 | bf'4 bf8 a4 a8 | g4. r4
  g8 | d4 d8 d4 d8 | d4 d8 d4 d8 | d4 g4\fermata r4 \bar "||"
  }

  \addlyrics
    {
    Far in the hills I wan -- dered; soft -- ly shone the sum -- mer night,
    And the sun had ne'er a thought of sleep -- ing.
    Now will I bring my sweet -- heart dear
      the hid -- den trea -- sure bright,
    For faith -- ful -- ly my vows I would be keep -- ing.
    Heigh, ho! New and fine my stock -- ings are, new and fine my shoes,
    And not a care in  all the world to plague me!
    } 
  >>

\score
  { 
  \new Staff \melody 
  \layout
    {
    \context
      { \Score \remove Bar_number_engraver }
    } 
  \midi
    { 
    \context
      { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } 
    } 
  }
