\language "english"

\header {
  title = "Grande Valse Brillante"
  composer = "Frédéric Chopin"
  opus = "Op. 18"
  piece = "No. 1"
}

\markup \italic \small "à Mademoiselle Laura Harsford"

upper = \relative c'' {
  \clef treble
  \key ef \major
  \time 3/4
  \tempo "Vivo"

  bf2-^-1\f bf8-.-3[ bf-.-2] | %m1
  bf2-^-1 bf8-.[ bf-.] |
  bf4-^ bf8-.[ bf-.] bf4-^ |
  bf8-.[ bf-.] bf4-^ bf8-.[ bf-.] \bar ".|:"
  bf4-.-1-\parenthesize \f d8-2\<( ef <d f>4 |
  bf-.) ef8-2( f <ef g>4 |
  bf4-.) f'8-2( g <f af>4\!) | %m7
  <df g bf>2-5\sf <df g bf>8-4-. <df g bf>-. |
  <<
    {
      bf'4->-4\p( c8 bf af4-3-.) |
      af-4->\>( bf8 af g4)-. |
      g-4->( af8 g f4-.) |
      f-4->( g8 f ef4-.)\! |
    }
   \\
    {
      <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 |
    }
  >>
  bf-.-1\f d8-2( ef <d f>4 |
  bf4-.)\< ef8-2( f <ef g>4 |
  bf4-.) f'8-2( g <f af>4) | 
  <df g bf>4.\sf <g bf>8-4( df <g bf>) |
  <<
    {
      \mergeDifferentlyHeadedOn
      df2 c4
    }
    \\
    {
      df8-1->( bf'-4 c bf <c, af'>4-.-3) |
    }
  >>
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
  ef,-.\sustainOn <bf' df g>-.\sustainOff e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-.\sustainOn <g' ef'> <g ef'>\sustainOff |
  bf,-.\sustainOn <f' d'> <bf d>\sustainOff |
  <<
    {
      r4 <bf ef> <bf ef> |
    }
    \\
    {
      ef,2. |
    }
  >>
  bf4-.\sustainOn <bf' f' af> <bf f' af>\sustainOff |
  ef,-. <bf' ef g> <bf ef g> |
  bf,4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <ef, bf' ef> r r |


}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {}
}
