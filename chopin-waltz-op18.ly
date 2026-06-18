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

  bf2->-1\p bf8-.-3\<[ bf-.-2] | %m1
  bf2->-1 bf8-.[ bf-.] |
  bf4-> bf8-.[ bf-.] bf4-> |
  bf8-.[ bf-.] bf4-> bf8-.[ bf-.] \bar ".|:"
  bf4-.-1\f d8-2\<( ef <d f>4\! |
  bf-.\<) ef8-2( f <ef g>4\! |
  bf4\<) f'8-2( g <f af>4\!) | %m7
  <df g bf>2-^\fz <df g bf>8\> <df g bf> |
  <<
    {
      \voiceOne
      bf'4->-4\p( c8 bf af4) |
      af-4->( bf8 af g4) |
    }
    \new Voice
    {
      \voiceTwo
      <df g>2 c4 |
      cf2 bf4 |
    }
  >>
  \oneVoice
}

lower = \relative c {
  \clef bass
  \key ef \major
  \time 3/4
  \set Staff.pedalSustainStyle = #'bracket

  R1*3/4 | %m1
  R1*3/4 |
  R1*3/4 |
  R1*3/4 |
  bf4-.\sustainOn <bf' f' af> <bf f' af>\sustainOff |
  ef,-.\sustainOn <bf' ef g> <bf ef g>\sustainOff |
  d,-.\sustainOn  <bf' f' af> <bf f' af>\sustainOff | %m7
  ef,-.\sustainOn <bf' df g>\sustainOff e,->( |
  f-.-4) <af f'>-. af,-. |
  bf-.\sustainOn <g' ef'> <g ef'>\sustainOff



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
