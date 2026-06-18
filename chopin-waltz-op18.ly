\language "english"

\header {
  title = "Grande Valse Brillante"
  subtitle = "to Mlle. Laura Horsfold"
  composer = "Frédéric Chopin"
  opus = "Op. 18"
}

upper = \relative c'' {
  \clef treble
  \key ef \major
  \time 3/4
  \tempo "Vivo"

  bf2->-1\p bf8-.-3\<[ bf-.-2] |
  bf2->-1 bf8-.[ bf-.] |
  bf4-> bf8-.[ bf-.] bf4-> |
  bf8-.[ bf-.] bf4-> bf8-.[ bf-.] \bar ".|:"
  bf4-.-1\f d8-2[ ef] <d f>4 |
}

lower = \relative c {
  \clef bass
  \key ef \major
  \time 3/4

  R1*3/4 |
  R1*3/4 |
  R1*3/4 |
  R1*3/4 |

}

\score {
  \new PianoStaff \with { instrumentName = "" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {}
}
