\version "2.26"
\language "english"

\header {
  title = "Grande Valse Brillante"
  composer = "Frédéric Chopin"
  opus = "Op. 18"
}

\markup \italic \small "à Mademoiselle Laura Harsford"


% Functions to extend slurs at alternatives

extendLV =
#(define-music-function (further) (number?)
#{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(- 0.2 (/ further 2))
  \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

extendRT =
#(define-music-function (further) (number?)
#{
  \once \override RepeatTie.X-extent = #'(0 . 0)
  \once \override RepeatTie.details.note-head-gap = #(- 0.2 (/ further 2))
  \once \override RepeatTie.extra-offset = #(cons (/ further -2) 0)
#})


% Style grace note fingerings

startAcciaccaturaMusic = {
  <>( 
  \override Fingering.font-size = #-6  
  \override Flag.stroke-style = "grace"
}
stopAcciaccaturaMusic = {
  \revert Fingering.font-size
  \revert Flag.stroke-style
  <>)
} 

startGraceMusic = {
  \override Fingering.font-size = #-6  
}
stopGraceMusic = {
  \revert Fingering.font-size
} 
 

global = {
  \key ef \major
  \time 3/4 
}



upper = \relative c'' {
  \global
  \clef treble
  
  \override Parentheses.font-size = #+1   
   
  \override TextSpanner.dash-fraction = 0.3
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #-0.2


  bf2-^-1 bf8-.-3[ bf-.-2] | %m1
  bf2-^-1 bf8-.[ bf-.] |
  bf4-^ bf8-.[ bf-.] bf4-^ |
  bf8-.[ bf-.] bf4-^ bf8-.[ bf-.] |
  \repeat volta 2 {
    bf4-.-1 d8-2( ef <d f>4 |
    bf-.) ef8-2( f <ef g>4 |
    bf4-.) f'8-2( g <f af>4) | %m7
    <df g bf>2-5 <df g bf>8-4-. <df g bf>-. |
    <<
      {
        bf'4->-4( c8 bf af4-3-.) |
        af-4->( bf8 af g4)-. |
        g-4->( af8 g f4-.) |
        f-4->( g8 f ef4-.) |
      }
    \\
      {
        <df g>2 c4 |
        cf2 bf4 |
        bf2 af4 |
        af2 g4 |
      }
    >>
    bf-.-1 d8-2( ef <d f>4 |
    bf4-.) ef8-2( f <ef g>4 |
    bf4-.) f'8-2( g <f af>4) | 
    <df g bf>4. <g bf>8-4( df <g bf>) |
    <<
      {
        \mergeDifferentlyHeadedOn
        \stemDown
        df8->-1( bf'-4 c bf af4-.-3) |
        cf,8->( af'-4 bf af g4-.-3) |
        bf,8->( g'-4 af g f4-.) |
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
  f-5\p( ef8 df\! g,4-.) | \break 
  % Moving articulations under slur
  \override Fingering.avoid-slur = #'inside
  \override Script.avoid-slur = #'inside
  \override TextScript.avoid-slur = #'ignore  
  \override TextScript.extra-offset = #'(0 . -3)
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
  \override TextSpanner.bound-details.left.text = \markup {"poco rit."}
  \once\override TextSpanner.extra-offset = #'(0 . 0.5) 
  \override Fingering.avoid-slur = #'inside
  \stemDown af8-2\prall(\<\startTextSpan g_\markup {\italic "dolce"} af bf c-1 df |
  ef[ f-1 gf! g bf8.-5 af16])\!\stopTextSpan \stemNeutral |
  \revert Fingering.avoid-slur
  \set fingeringOrientations = #'(left)
  \once\override TextScript.extra-offset = #'(0 . 1.3) 
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
    <f-2 af-4>\tweak extra-offset #'(0 . 1)^\markup {\italic "con anima"}  r
    \set fingeringOrientations = #'(top bottom)
    <f-1 af-3>( |
    \grace af16-2 \grace bf-4 <f af^3>4-.) r8 <ef^1 gf^3>(\< <f af>4 |
    <gf bf>-.)\! r <bf^1 df^3> |
    <bf^2 gf'^5>2.->( |
    <af^1 f'^4>4-!) r8\p ef'-.-3 <ef^4 gf,^1>4->( |
    <f^5 af,^2>-!) r8 ef-3-. <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-4 <ef^5 gf,^1>4->( |
    <c^4 e,^1>-!) r8 df-3-. <df^2 f,^1>4->( |
    <f^4 af^5>-!)\f r8 <f^2 af^4>-. <f^1 af^3>4->( |
    \grace af16-2 \grace bf-4 <f af^3>4-!) r8 <ef^1 gf^3>(\< <f af>4 |
    <gf bf>-!) r <bf^1 df^3>-.\! |
    \set fingeringOrientations = #'(top left bottom) 
    <bf-2 gf'-5>2.->( |
    <af-1 f'-4>4-!) r8\p ef'-.-3 <ef-4 gf,-1>4->( |
    <f-5 af,-2>-!) r8 ef-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-3 <ef-4 gf,>4->( |
  }
  \alternative {
    {
      <df^2 f,>) r df,,_1 |
    }
    {
      \extendRT #2 
      \once \override NoteColumn.X-offset = #'2
      \once \override NoteHead.extra-spacing-width = #'(0 . 2)
      <df''^2\repeatTie f,> r f,-3\p |
    }
  }
  \repeat volta 2 {
    \acciaccatura f8-2 gf4-.-^\p \acciaccatura gf8 e4-.-1 \acciaccatura e8 f4-.-2 |
    \acciaccatura f8-2 gf4-.-^ \acciaccatura gf8 e4-.-1 \acciaccatura e8 f4-.-2 |
    \acciaccatura f8-1 df'4-4-.-^\> \acciaccatura df8-3 c4-.-2 \acciaccatura c8-3 b4-.-2 |
    \acciaccatura cf8-3 bf!4-.-2 \acciaccatura bf8 a4-. \acciaccatura bff8 af4-. |
    \acciaccatura af8 g4-. \acciaccatura aff8 gf4-. \acciaccatura gf8 f4-. |
    \acciaccatura f8 e4-. \acciaccatura ff8 ef4-. \acciaccatura ef8-3 c4-.-1\! |
    \acciaccatura c8-2 df4-.\p \acciaccatura df8 a4-.-1 \acciaccatura a8-2 bf4-.-3 |
    \acciaccatura bf8-2 df4-.-3\< \acciaccatura df8-2 ef4-. \acciaccatura ef8 e4-. |
    \acciaccatura e8-2 gf!4-.-^-4 \acciaccatura gf8-3 e!4-.-1 \acciaccatura e8-2 f4-.-3 |
    \acciaccatura f8-2 gf4-.-3 \acciaccatura gf8 e4-. \acciaccatura e8 f4-.\! |
    \acciaccatura f8 f'4-.-^\( \acciaccatura f8 df4-.-3 \acciaccatura df8-3 bf4-.-2 |
    \acciaccatura bf8-3 gf4-.-1 \acciaccatura gf8-4 ef4-.-2 \acciaccatura ef8-2 c4-.-1\) |
    \override TextSpanner.bound-details.left.text = \markup {"crescendo "}
    \acciaccatura gf'8-3 f4-.-2 \acciaccatura f8-3 e4-.-2 \acciaccatura ff8 ef4-. |
    \acciaccatura ef8_\startTextSpan d4-. \acciaccatura eff8 df4-. \acciaccatura df8 c4-. |
    \acciaccatura c8 cf4-. \acciaccatura cf8 bf4-. \acciaccatura bf8 a4-. |
    \acciaccatura bff8 af4-. \acciaccatura af8 g4-. \acciaccatura aff8 gf4-.\stopTextSpan |
    <f af>4^^-\tweak extra-offset #'(0 . -1.25) \f r8 <f^2 af^4>8  <f^1 af^3>4->\( | 
    \grace af16-2 \grace bf-4 <f af^3>4^!\) r8 <ef^1 gf^3>\(\< <f af>4 |
    <gf bf>-!\) r <bf^1 df^3>-.\! |
    <bf-2 gf'-2>2.->( |
    <af-1 f'-4>4-!) r8\mf ef'-.-3 <ef^4 gf,^1>4->( |
    <f af,>-!) r8 ef-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-4 <ef^5 gf,^1>4->( |
    <c^4 e,^1>-!) r8 df-.-3 <df^2 f,^1>4->( |
    <f^4 af^5>-!\f) r8 <f^2 af^4>-. <f^1 af^3>4( |
    \grace af16-2 \grace bf-4 <f af^3>4-!) r8 <ef^1 gf^3>(\< <f af>4 | 
    <gf bf>-!) r <bf-1 df-3>-.\! |
    <bf-2 gf'-5>2.->( |
    <af-1 f'-4>4-!) r8\mf ef'8-.-3 <ef-4 gf,-1>4->( |
    <gf-5 af,-2>-!) r8 ef8-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-3 <ef^4 gf,>4->( |
  }
   
  \alternative {
    {
      <df f,>-!) r 
      \extendLV #2
      \once \override NoteHead.extra-spacing-width = #'(0 . 3)
      f,\laissezVibrer |
    }
    {
      \extendRT #2
      \once \override NoteColumn.X-offset = #'2
      \once \override NoteHead.extra-spacing-width = #'(0 . 2)
      <df'\repeatTie f,>-! r df,8-3\p df-2 |
    }
  } 
  \override Fingering.avoid-slur = #'inside
  df-1(-\tweak extra-offset #'(0 . -1) _\markup {\italic "dolce"} ef-3 df-2\< c df d\! |
  f2-5\> ef4\!) |
  af,8-1_( bf-3 af-2 g\< af a\! |
  bf4-4\> gf8-.-2)\! bf-3(\<[ cf-1 c-2] |
  df\prall[ c-1 df-2 bf')] af-4( gf\! |
  f2-1 ef4-3)\! |
  \revert Fingering.avoid-slur


}

lower = \relative c {
  \global
  \clef bass

  R1*3/4 | %m1
  R1*3/4 |
  R1*3/4 |
  R1*3/4 |
  bf4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-.  <bf' f' af> <bf f' af> | 
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    {
      r4 <bf ef> <bf ef> |
    }
    \\
    {
      ef,2. |
    }
  >>
  bf4-. <bf' f' af> <bf f' af> |
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
  af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  af <c ef af> <c ef af> |
  \clef bass af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
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
  af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d! af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  <<
    { r <c ef af> <c ef af> | }
    \\
    { af2. }
  >>
  \clef bass af,4 <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  <<
    { r <af c ef> <af c ef> |
      r <bf df ef> <bf ef df> | }
    \\
    { ef,2. |
      ef2. | }
  >>
  af,4( <ef' c'>) r |
  \key df \major
  af,-. <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>) | 
  df,-. <f_5 df'_2>( <af_4 f'_1>) |
  df,-. <f df'>( <af f'>) | 
  af,-. <ef' c'-2>( <af gf'>-1-3) |
  af,-. <ef' c'>( <af gf'>) |
  <<
    { r af( c) |
      <df, df'>_. \stemDown <f df'-2>4( <af f'>) }
    \\
    { df,2. }
  >>
  af4-. <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>) |
  df,,-. <f' df'>( <af f'>) |
  df,-. <f df'>( <af f'>) |
  gf,-. <gf' d'>-5-2_( <bf ef>-3-1) |
  af,-. <f' c'>-5-2_( <af df!>-3-1) |
  af, <ef' af c> <ef af c> |
  <df af' df> r r |
  <df af' df> r <df af' df> |
  <ef bf' df>-! r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  af, <ef' af c> <ef af c> |
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
  af, <ef' af c> <ef af c> |
  af, 
  <<
    { <af' b>4( \once\override Script.avoid-slur = #'outside <af c>-!) }
    \\
    { d,8-5( f-3) ef4-4 }
  >>
  <ef bf'! df!>-!  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-!( |
  <af c>) r r 
  R2. | 
  af,4-. <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>) |
  df,,-. <f' df'-2>( <af f'>)-4-1 |
  df,-. <f df'>( <af f'>) | 
  af,4-. <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>) |
  <<
    { r af( c |
      <df, df'>_.) \stemDown <f df'^2>4( <af f'>) }
    \\
    { df,2. }
  >>
  af4-. <ef' c'^2>( <af^3 gf'^1>) | 
  af,4-. <ef' c'>( <af gf'>) | 
  df,,-. <f' df'^2>( <af f'>) |
  df,-. <f df'>( <af f'>) |
  gf,-. <gf'_5 d'_2>( <bf_3 ef_1>) |
  af,-. <f'_5 c'_2>( <af_3 df!_1>) |
  af,-. <ef' af c> <ef af c> |
  <df af' df> r r |
  df,-. <df' af' cf> <df af' cf> |
  df,-. <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>_(^\parenthesize \> <ef bf'>\!) |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> | 
  <<
    {
      r <af df> <af df> |
    }
    \\
    {
      df,2. |
    }
  >>
  df4-. \clef treble <df' af' cf> <df af' cf> |
  \clef bass df,-. \clef treble <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>(^\parenthesize \> <ef bf'>)\! |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  <df af' df> r r |
  \once \override NoteColumn.X-offset = #'2
  \once \override NoteHead.extra-spacing-width = #'(0 . 2)
  <df af' df> r r \clef bass |
  bf,-. <f' df'> <f df'> |
  a,-. <f' c' ef> <f c' ef> |
  bf,-. <f' bf df> <f bf df> |
  ef-. <bf' c gf'> <bf c gf'> |
  f-. <bf df f> <bf df f> |
  f-. <a ef' f> <a ef' f> |
  bf,-. <f' df'> <f df'> |
  bf,-. <f' df'> <f df'> |
  bf,-. <f' df'> <f df'> |
  a,-. <f' c' ef> <f c' ef> |
  bf,-. <f' bf df> <f bf df> |
  ef-. <bf' c gf'> <bf c gf'> |
  f-. <bf df f> <bf df f> |
  f-. <a ef' f> <a ef' f> |
  <bf df f> r r |
  R2. |
  df,,4-. <df' af' cf> <df af' cf> |
  df,-. <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>_(^\parenthesize \> <ef bf'>)\! |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c>|
  <<
    {
      r <af df> <af df> |
    }
    \\
    {
      df,2. |
    }
  >>
  df4-. \clef treble <df' af' cf> <df af' cf> |
  \clef bass df,-. \clef treble <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d' bf'>(^\parenthesize \> <ef bf'>)\! |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  <df af' df>-! r r |
  \once \override NoteColumn.X-offset = #'2
  \once \override NoteHead.extra-spacing-width = #'(0 . 2)
  <df af' df>-! r r | \clef bass 
  <<
    {
      r <gf, df'> <gf df'> |
    }
    \\
    {
      bf,2. |
    }
  >>
  cf4 <gf' af ef'> <gf af ef'> |
  <<
    {
      r <f cf'> <f cf'> |
    }
    \\
    {
      df2. |
    }
  >>
  af,4 <df' bf'> <df bf'> |
  <<
    {
      r <gf df'> <gf df'> |
    }
    \\
    {
      bf,2. |
    }
  >>
  cf4 <gf' af ef'> <gf af ef'> |
  

}

dynamics = {
  \global
  \override Parentheses.font-size = #+1
  s4\f s s |
  s2.*3 |
  s4\parenthesize \f s s\< |
  s2.|
  s4 s s\! |
  s\sf s s |
  s\p s s |
  s\> s s |
  s2. |
  s4 s s\! |
  s\f s s |
  s\< s s |
  s s s\! |
  s\sf s s |
  s\> s s |
  s2. |
  s4 s s\! |
  
}
  

pedal = {
  \global 
  \set Staff.pedalSustainStyle = #'bracket
  
  s2.*4 |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s\sustainOff s |
  s2. |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  s2.*8 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*17 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*3 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s s s |
  s4\sustainOn s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2.*7 |
  s4\sustainOn s s\sustainOff |
  s2.*7 |
  s4\sustainOn s s\sustainOff |
  s2.*3 |
  s4\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2.*4 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s\sustainOff s |
  s4\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s s s |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s2.*10 |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*4 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s s s |
  s\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff 
  
  
  
  
  
  
  
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
    \new Dynamics = "pedal" \pedal
  >>
  
  \layout {}
}

\score {
  <<
    \new Staff << \dynamics \upper \pedal >>
    \new Staff << \dynamics \lower \pedal >>
  >>

  \midi {
    \context { \Staff \accepts Dynamics }
    \context { \Staff \consists "Dynamic_performer" }
    \tempo 4 = 180
  }
}
