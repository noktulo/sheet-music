\version "2.22.2"
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
  bf8-.[ bf-.] bf4-^ bf8-.[ bf-.] |
  \repeat volta 2 {
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
        \stemDown
        df8->-1\>( bf'-4 c bf af4-.-3) |
        cf,8-> af'-4 bf af g4-.-3 |
        bf,8->( g'-4 af g f4-.\!) |
      }
      \\
      {
        \stemUp df2 \stemDown c4  | 
        \stemUp cf2 \stemDown bf4 |
        \stemUp bf2 \stemDown af4 |
      }
    >>
    }
  \alternative {
    { <g ef'>4-! bf8-3-. bf-2-. bf-1-. bf-2-. | }
    { <g ef'>4-! ef'8-4-. ef-3-. ef-2-. ef-1-. | }
  }
  ef-3-.\p\<^\markup { \italic "leggiermente" } ef-.-2 ef-.-1 ef-.-3 ef-. ef-.\! |
  f-4\>(_[ ef-3 c-1 af-4 ef-2 e-1)\!] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->(\( g f) } ef\< af c4-3\)\! |
  f-5\>( ef8 df\! g,4-.) |
  bf-4\>( af8 ef\! c4-.) |
  ef8-.-3\< ef-.-1 ef-.-1 ef-.-3 ef-.-2 ef-.-1\! |
  f-4\>( ef-3 c-1 af-4 ef-2 e-1)\! |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->(\( g f) } ef\< af c4-3\)\! |
  f-5\>( ef8 df\! g,4-.) |
  af2-5->\<( \pitchedTrill c,4->\!^\markup {\finger "1 3 2"}\trill^\markup {\tiny \natural}  |
  bf-1-!\f) d8-2( ef <d f>4 |
  bf4-!) ef8-2( f <ef g>4 |
  bf4-!) f'8-2( g <f af>4) |
  <df g bf>2-^-5\sf <df g bf>8-.-4 <df g bf>8-. |
  <<
    { bf'4->( c8 bf af4-.) |
      af4-4->\>( bf8 af g4-.) |
      g-4->( af8 g f4-.) |
      f-4->( g8 f ef4-.)\! | }
    \\
    { <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 | }
  >>
  bf8-1\<( d-2 ef e <d f>4)\! |
  bf8-1\<( d-2 ef f <ef g>4)\! |
  bf8-1\<( e-2 f g <f af>4-5)\! |
  <df g bf>4.-^-4\sf <g bf>8( df-> <g bf>) |
  <<
    { \mergeDifferentlyHeadedOn
      \stemDown
      df->-1( bf'-4 c bf af4-.\>) |
      cf,8->-1( af'-4 bf af g4-.) |
      bf,8->( g'-4 af g f4-3\! |  
      ef-.-2)  ef8-.-4\p ef-.-3 ef-.-2 ef-.-1 |
    }
    \\
    {
      \stemUp df2 \stemDown c4 |
      \stemUp cf2 \stemDown bf4 |
      \stemUp bf2 \stemDown af4 |
      g
    }
  >>
  ef'8-3-.\p\<^\markup { \italic "leggiermente" } ef-.-2 ef-.-1 ef-.-3 ef-. ef-.\! |
  f-4\>(_[ ef-3 c-1 af-4 ef-2 e-1)\!] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->(\( g f) } ef\< af c4-3\)\! |
  f-5\>( ef8 df\! g,4-.) |
  bf-4\>( af8 ef\! c4-.) |
  ef8-.-3\< ef-.-1 ef-.-1 ef-.-3 ef-.-2 ef-.-1\! |
  f-4\>( ef-3 c-1 af-4 ef-2 e-1)\! |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->(\( g f) } ef\< af c4-3\)\! |
  f-5\>( ef8 df\! g,4 |
  af2) af,4 |
  \key df \major
  \repeat volta 2 {
    <ef' gf>2->-4-5(\mf <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-.-2 af4-1 |
    
    
    
  }
  
  
  


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
  <<
    { r <g ef'>( <g df'>) | }
    \\
    { ef2 ef4 | }
  >>
  af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d a' bf> <d a' bf>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  af <c ef af> <c ef af> |
  \clef bass af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d af' b> <d af' b>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <df' ef g> <df ef g>\sustainOff |
  <<
    { r <c af'>( <f af>) |}
    \\
    { af,2. |}
  >>
  \clef bass <bf, bf'>4-! <bf' f' af> <bf f' af> |
  ef,-! <bf' ef g> <bf ef g> |
  d,-! <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-.^\> e,(\! |
  f-.) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    { r <bf ef> <bf ef> |}
    \\
    { ef,2. |}
  >>
  bf4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,( |
  f-.) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d>~ |
  <ef, bf' ef> r <ef g df'> |
  af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d a' bf> <d a' bf>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  af <c ef af> <c ef af> |
  \clef bass af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d af' b> <d af' b>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  <<
    { r <af c ef> <af c ef> |
      r <bf df ef> <bf ef df> | }
    \\
    { ef,2. |
      ef2. | }
  >>
  af,4( <ef' c'>) r |
  \key df \major
  af,-.\sustainOn <ef' c'>-2-5( <af gf'>-1-3) |
  af,-. <ef' c'>( <af gf'>)\sustainOff | 
  
  
  
  
  
  
  
  


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
