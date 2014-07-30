\version "2.10.25" 
\include "english.ly"


melody = \relative c''
  <<
  { 
  \tempo 2=75  
  \once \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \key a \minor
  \time 2/4

  c4. c8 | c4. c8 | c8( b) a4 | g2\fermata |
  g4. g8 | g4. a8 | bf2 | a4\fermata r4 |
  c4. c8 | c4. c8 | c8( b) a4 | g2\fermata |
  g4. g8 | g4. a8 | a4. bf8 | g2\fermata |
  bf4. bf8 | g4. g8 | a4. a8 | c4. c8 | c4.( b!8) | a2\fermata  \bar "||"
  }

  \addlyrics
    {
    Sweet -- ly sleep, my dear young love,
    Out -- side rain is fall -- ing,
    Moth -- er safe -- ly away will stow
    Horse and sheep and swan and dove.
    Then we'll rest, we two, for night is call -- ing.
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
    \context { \Score } 
    }
  }
