\version "2.24.0"

\header {
  title = "Good Riddance (Time of Your Life)"
  composer = "Green Day"
  arranger = "arr. Jim Pleuss"
  instrument = "Viola"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key g \major
  \time 4/4
  \tempo "Emotional, Reminiscent" 4 = 90
}

tenorViola = \relative c' {
  \global
  \clef alto
  
  % Rehearsal A / Intro
  \mark \default
  R1*4 |
  R1*4 |
  R1*4 |
  R1*3 |
  
  % Rehearsal B
  \mark \default
  g2\mf fis~ | fis1 | g1 | fis1 |
  R1*4 | e'2 fis | g1 | e2 fis | g1 |
  b,2 d | b2 d | b2 a |
  
  % Rehearsal C
  \mark \default
  r4 \f b8.' c16 d4 c8 b |
  c4. g8 fis2 |
  r4 b8. c16 d4 c8 b |
  c4. d8 d2 |
  r4 g8. fis16 e4 d8 b |
  c8. b16 a8. g16 a4 d, |
  r4 b8.' c16 d4 c8 b |
  c8. b16 a8. g16 fis2 |
  b4 b16 a g a~ a2 |
  r4 g8 a16 b~ b2 |
  e4,~ e8 g16 fis~ fis2 |
  g4~ g8 a16 g~ g2 |
  b4~ b8 g8~ g2 | 
  e4~ e8 g8~ g2 |
  e4~ e8 fis8~ fis2 |
  g2,\mf fis~ | fis1 | g1 | fis1 |
  R1*4 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = #"Viola"
  } \tenorViola
  \layout { }
  \midi { }
}
