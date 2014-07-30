\version "2.10.25" 
\include "english.ly"


melody = \relative c'
  <<
  { 
  \tempo 2=75  
  \once \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \key f \major
  \time 4/4
  f4 f f e | f8( g) a( bf) c4 r4 |
  a4 a c2 | bf4 g f2 | a4 a g g | a a f
  f | a a g f8( g) | a2 r2 |
  c4 c d d | c bf a g | f2 f4 g |
  a g a bf | c c d bf | a2 g4 g | f2 r2
  }

  \addlyrics
    {
  Have you seen a brave young lad?
  'Tis my friend,
  Dear -- est friend;
  'Mongst all men in byr -- nie clad
  The bon -- ni -- est is he.
    I have smiled my teeth all white and shin -- ing __,
  I have smiled my teeth all white and shin -- ing with glee.
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
