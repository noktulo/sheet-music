\version "2.26"
\language "english"

\header {
  title = "Grande Valse Brillante"
  composer = "Frédéric Chopin"
  opus = "Op. 18"
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
    bf4-.-1-\parenthesize \f d8-2( ef <d f>4\< |
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
        cf,8->( af'-4 bf af g4-.-3) |
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
  f-3\>(_[ ef c-1 af-4 ef-2 e-1)\!] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->_(\( g f) } ef af-2 c4-4-.\) | 
  f-5(\p ef8 df g,4-.) |
  bf-4( af8 ef c4-.) |
  ef8-.-3\< ef-.-2 ef-.-1 ef-.-3 ef-. ef-.\! |
  f-3\>^( ef c-1 af-4 ef-2 e-1)\! |
  f-.-3 f-.-2 f-.-1 f-. f-. f-. |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-. f-. f-. |
  \tuplet 3/2 { f-2_(\( g f) } ef\< af c4-3-.\)\! |
  f-5\p( ef8 df\! g,4-.) |
  % Moving articulations under slur
  \override Fingering.avoid-slur = #'inside
  \override Script.avoid-slur = #'inside
  \override TextScript.avoid-slur = #'ignore  
  \override TextScript.extra-offset = #'(0 . -3.2)
  \set fingeringOrientations = #'(top left) 
  af2-4( \shape #'((0 . 0.5) (0 . 2.5) (1 . 2.5) (0 . 0.5)) ( <c,-2>4->\trill^\markup {\fontsize #-3 \natural}  |
  bf-1\f) d8-2( ef <d f>4\< |
  \revert Fingering.avoid-slur
  \revert Script.avoid-slur
  \revert TextScript.avoid-slur
  \revert TextScript.extra-offset
  \set fingeringOrientations = #'(top bottom) 
  bf4) ef8-2( f <ef g>4 |
  bf4) f'8-2( g <f af>4)\! |
  <df g bf>2-5\sf <df g bf>8-.-4 <df g bf>8-. |
  <<
    { bf'4->-4\>( c8 bf af4-.-3) |
      af4-4->( bf8 af g4-.-3) |
      g-4->( af8 g f4-.) |
      f-4->( g8 f ef4-.)\! | }
    \\
    { <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 | }
  >>
  bf8-1\<\p( d-2 ef e-4 <d f>4)\! |
  bf8-1\<( d-2 ef! f <ef g>4)\! |
  bf8-1\<( e-2 f g <f af>4)\! |
  <df g bf>4.-4\sf <g bf>8( df <g bf>) |
  <<
    { \mergeDifferentlyHeadedOn
      \stemDown
      df->-1\>( bf'-4 c bf af4-.-3) |
      cf,8->( af'-4 bf af g4-.-3) |
      bf,8->( g'-4 af g f4-3\! |  
      ef-.)  ef8-.-4\p ef-.-3 ef-.-2 ef-.-1 |
    }
    \\
    {
      \stemUp df2 \stemDown c4 |
      \stemUp cf2 \stemDown bf4 |
      \stemUp bf2 \stemDown af4 |
      g
    }
  >>
  ef'8-3-.\<^\markup { \italic "leggiermente" } ef-.-2 ef-.-1 ef-.-3 ef-. ef-.\! |
  f-3\>(_[ ef c-1 af-4 ef-2 e-1)\!] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  \tuplet 3/2 { f-2(\( g f) } ef\< af-2 c4-4-.\)\! |
  f-5(\p ef8 df g,4-.) |
  bf-4( af8 ef c4-.) |
  ef8-.-3\< ef-. ef-. ef-.-3 ef-. ef-.\! |
  f-3\>( ef c-1 af-4 ef-2 e-1)\! |
  f-.-3 f-. f-. f-.-3 f-. f-. |
  ef-2\<( af-4 c-1 ef af e-1\!) |
  f-.-3 f-. f-. f-.-3 f-. f-. |
  \tuplet 3/2 { f-2->(\( g f) } ef\< af-2 c4-4\)\! |
  f-5\>( ef8 df\! g,4 |
  af2) af,4-1 |
  \key df \major
  \repeat volta 2 {
    <ef' gf>2-4-5(\mf <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
    <gf' bf>2-2-5( <e g>4-1-4 |
    <f af>-.-2-3) af,8-3-. af-2-. af4-1-^ |
    <ef' gf>2-4-5( <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
    <bf gf'>-2-5\>( <af f'>-1-5 <gf ef'>-1-4\! | 
    <f df'>-1-3-.) af8-3-. af-2-. af4-1-^ |
    <ef' gf>2-4-5( <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-. af4-^ |
    <gf' bf>2-3-5( <e g>4-1-4 |
    <f af>-.-2-3) af,8-3-. af-. af4->( |
    af')
    <<
      { \stemDown
        bf,8-1( af'-5) \stemUp gf4-4-^\(~ |
        gf4. gf8-5 f4-4-^~ |
        f4. f8-5 ef4-4 |
      }
      \\
      {
        \stemUp 
        bf4 \stemDown ef~ |
        ef af, df~ |
        df gf, gf |
      }
    >>
  }
  \alternative { {
    <<
      { df'-3\sf\) }
      \\ 
      { \once\stemUp f, }
    >>
    af8-3-. af-2-. af4-1-^
  } {
    <<
      { df\repeatTie\sf }
      \\
      { \once\stemUp f, }
    >>
    r <f f'>-.\ff
    
    
  } }
  \slashedGrace f'8( <ef) g,>4-^-!-3 g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-!-^ \slashedGrace f'8( <ef) g,>4-! g,-! |
  af8-2(\p c-1 ef af c4) |
  \tuplet 3/2 { af8-3->(\( bf af) } f d ef4-3\) |
  \slashedGrace f8-4( <ef^3) g,>4-!\f g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-! \slashedGrace f'8( <ef) g,>4-! g,-! |
  \override Fingering.avoid-slur = #'inside
  \tupletDown \tuplet 3/2 { ef8-2(^\(\p\< f ef) } \tupletNeutral d-1 ef c'-5 bf-3 |
  af-2\prall g af bf c-1 df!-2\)\! |
  \revert Fingering.avoid-slur
  \slashedGrace f8-4( <ef^3) g,>4-^-!\ff g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-!-^ \slashedGrace f'8( <ef) g,>4-! g,-! |
  af8-2(\p c-1 ef af c4) |
  \tuplet 3/2 { af8-3(\>\( bf af)\! } f d ef4-3-!\) |
  \slashedGrace f8-4( <ef^3) g,>4-!\f g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-! \slashedGrace f'8( <ef) g,>4-! g,-! |
  \once\override TextSpanner.bound-details.left.text = \markup {"Poco rit."}
  \once\override TextSpanner.extra-offset = #'(0 . 1) 
  \override Fingering.avoid-slur = #'inside
  \stemDown af8-2\prall(\<\startTextSpan g_\markup {\italic "dolce"} af bf c-1 df |
  ef[ f-1 gf! g bf8.-5 af16])\!\stopTextSpan \stemNeutral |
  \revert Fingering.avoid-slur
  \set fingeringOrientations = #'(left)
  <ef-4 gf-5>2->(\mf^\markup {\italic "a tempo"} <b d>4-1-3 | % need to figure out tie direction for fingering
   
  <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
  <gf' bf>2->-3-5( <e g>4-1-4 |
  <f af>-.-2-3) af,8-3-. af-. af4-^ |
  <ef' gf>2->-4-5( <b d>4-1-3 |
  <c ef>-.) af8-.-3\< af-. af4-^\! |
  <bf gf'>-2-5\>( <af f'>-1-5 <gf ef'>-1-4\! | 
  <f df'>-3-.) af8-3-. af-2-. af4-1-^ |
  <ef' gf>2-4-5( <b d>4-1-3 |
  <c ef>-.) af8-.-3 af af4-^ |
  <gf' bf>2->-3-5( <e g>4-1-4 |
  <f af>-.-2-3) af,8-3-. af-. af4->( | 
  af')
  <<
    {
      \stemDown bf,8^1( af'^5) \stemUp gf4-4-^~\( |
      gf4. gf8-5 f4-4-^~ |
      f4. f8-5 ef4-4 |
      df\)
    }
    \\
    {
      \stemUp bf \stemDown ef~ |
      ef af, df~ |
      df gf, gf |
      f
    }
  >>
  df8-3-. df-2-. df4-1 |
  \repeat volta 2 {
    <f-2 af-4>\tweak extra-offset #'(0 . 1)^\markup {\bold "Con anima"}  r
    \set fingeringOrientations = #'(top bottom)
    <f-1 af-3>( |
    \grace af16-2 \grace bf-4 <f af^3>4-.) r8 <ef^1 gf^3>(\< <f af>4 |
    <gf bf>-.)\! r <bf^1 df^3> |
    <bf^2 gf'^5>2.->( |
    <af^1 f'^4>4-!) r8\p ef'-.-3 <ef^4 gf,^1>4->( |
    <f^5 af,^2>-!) r8 ef-3-. <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-4 <ef^5 gf,^1>4->( |
    <c^4 e,^1>-!) r8 df-3-. <df^2 f,^1>4->( |
    <f^4 af^5>-!)\f 
    
    
    
    
    
    
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
  d,4-. <bf' f' af> <bf f' af> |
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
  af,\sustainOn <d af' b> <d af' b>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <df' ef g> <df ef g>\sustainOff |
  af <c ef af> <c ef af> |
  \clef bass af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d af' b> <d af' b>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <df' ef g> <df ef g>\sustainOff |
  <<
    { r <c af'>_( <f af>) |}
    \\
    { af,2. |}
  >>
  \clef bass <bf, bf'>4-! <bf' f' af> <bf f' af> |
  ef,-! <bf' ef g> <bf ef g> |
  d,-! <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-.^\> e,-5(\! |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    { r <bf ef> <bf ef> |}
    \\
    { ef,2. |}
  >>
  d4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d>~ |
  <ef, bf' ef> r <ef g df'> |
  af,\sustainOn <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c>\sustainOff |
  af,\sustainOn <d a' bf> <d a' bf>\sustainOff |
  af\sustainOn <ef' af c> <ef af c>\sustainOff |
  d\sustainOn <af' b f'> <af b f'>\sustainOff |
  ef\sustainOn \clef treble <c' ef af> <c ef af>\sustainOff |
  \clef bass ef,\sustainOn \clef treble <df' ef g> <df ef g>\sustainOff |
  <<
    { r <c ef af> <c ef af> | }
    \\
    { af2. }
  >>
  \clef bass af,4\sustainOn <ef' af c> <ef af c> |
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
  af,-.\sustainOn <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>)\sustainOff | 
  df,-.\sustainOn <f_5 df'_2>( <af_4 f'_1>) |
  df,-. <f df'>( <af f'>)\sustainOff | 
  af,-.\sustainOn <ef' c'-2>( <af gf'>-1-3) |
  af,-. <ef' c'>( <af gf'>)\sustainOff |
  <<
    { r af( c) |
      <df, df'>_.\sustainOn \stemDown <f df'-2>4( <af f'>)\sustainOff }
    \\
    { df,2. }
  >>
  af4-.\sustainOn <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>)\sustainOff |
  df,,-.\sustainOn <f' df'>( <af f'>) |
  df,-. <f df'>( <af f'>)\sustainOff |
  gf,-. <gf' d'>-5-2_( <bf ef>-3-1) |
  af,-. <f' c'>-5-2_( <af df!>-3-1) |
  af, <ef' af c> <ef af c> |
  <df gf df'> r r |
  <df gf df'> r <df gf df'> |
  <ef bf' df>-! r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  af,\sustainOn <ef' af c> <ef af c>\sustainOff |
  af, 
  <<
    { <af' b>4( <af c>-!) }
    \\
    { d,8-5( f-3) ef4-4 }
  >>
  <ef bf'! df!>-!_5  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  ef, <g' df'> <ef df'> |
  af, <af' c> <ef c'> |
  <ef bf'! df!>-!  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  af,\sustainOn <ef' af c> <ef af c>\sustainOff |
  af, 
  <<
    { <af' b>4( \once\override Script.avoid-slur = #'outside <af c>-!) }
    \\
    { d,8-5( f-3) ef4-4 }
  >>
  <ef bf'! df!>-!  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-!( |
  <af c>)\sustainOn r r\sustainOff 
  R2. | 
  af,4-.\sustainOn <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>)\sustainOff |
  df,,-.\sustainOn <f' df'-2>( <af f'>)-4-1 |
  df,-. <f df'>( <af f'>)\sustainOff | 
  af,4-.\sustainOn <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>)\sustainOff |
  <<
    { r af( c |
      <df, df'>_.)\sustainOn \stemDown <f df'^2>4( <af f'>)\sustainOff }
    \\
    { df,2. }
  >>
  af4-.\sustainOn <ef' c'^2>( <af^3 gf'^1>) | 
  af,4-. <ef' c'>( <af gf'>)\sustainOff | 
  df,,-.\sustainOn <f' df'^2>( <af f'>) |
  df,-. <f df'>( <af f'>)\sustainOff |
  gf,-. <gf'_5 d'_2>( <bf_3 ef_1>) |
  af,-. <f'_5 c'_2>( <af_3 df!_1>) |
  af,-. <ef' af c> <ef af c> |
  <df af' df> r r |
  df,-.\sustainOn <df' af' cf> <df af' cf> |
  df,-. <df' af' cf> <df af' cf>\sustainOff |
  gf,-.\sustainOn <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>_(^\parenthesize \>\sustainOff <ef bf'>\!) |
  af,-.\sustainOn <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c>\sustainOff | 
  <<
    {
      r <af df> <af df> |
    }
    \\
    {
      df,2. |
    }
  >>
  df4-.\sustainOn \clef treble <df' af' cf> <df af' cf> |
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


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
