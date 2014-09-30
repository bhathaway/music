\version "2.14.2"

% Turns out this is just for printing. I looked at my sheet music and it seems
% like A4 is a standard size.
#(set-default-paper-size "letter")

on = \sustainOn
off = \sustainOff 

%  ----------- 
% | Measure 1 |
%  ----------- 
barAtreble = \relative c''' {
  \times 2/3 {c8( c, c'} \times 2/3 {b d, b'} <ees, c'>4-|) <c g'>-|
}
barAbass = \relative c' {
  << {ees4 aes g-|} \\ {c,2 r4} >> <c ees>-|
}
barApedal = {
  s2\on s\off
}

barBtreble = \relative c''' {
  \times 2/3 {g8( g, g'} \times 2/3 {fis a, fis'} <b, g'>4-|) <b d>-|
}
barBbass = \relative c' {
  << {b4 c d-|} \\ {g,2 r4} >> <g g'>-|
}
barBpedal = \barApedal

barCtreble = \relative c''' {
  \times 2/3 {c8( c, c'} \times 2/3 {b d, b'} <ees, c'>4-|) <c g'>-|
}
barCbass = \relative c' {
  << {ees4 aes g-|} \\ {c,2 r4}>> <c ees>-|
}
barCpedal = \barApedal

barDEtreble = \relative c''' {
  \times 2/3 {g8( g, g'} \times 2/3 {fis a, fis'} \times 2/3 {f b, f'}
  \times 2/3 {ees c ees}

  \times 2/3 {des aes des} \times 2/3 {c a c} \times 2/3 {b f b}
  <ees, c'>4-|)
}
barDEbass = \relative c' {
  << {b4 c d ees f ees d c-|} \\ {g1 f4 fis g c,-| }>>
}
barDEpedal = {
  s4.\on s8\off s8\on s\off s\on s\off s\on s\off s\on s\off s4\on s\off
}

%  -----------
% | Measure 9 |
%  -----------
% These bars are deliberately seven beats and not eight, because
% the next section starts mid-measure.
barFGtreble = \relative c''' {
  \times 2/3 {g8( g, g'} \times 2/3 {fis a, fis'} \times 2/3 {f b, f'}
  \times 2/3 {ees c ees}

  \times 2/3 {des aes des} \times 2/3 {c a c} \times 2/3 {b) g b}
}
barFGbass = \relative c' {
  << {b4 c d ees f ees } \\ {g,1 f4 fis <g d'>} >>
}
barFGpedal = {
  s4.\on s8\off s8\on s\off s\on s\off s\on s\off s\on s\off s\on s
}

% Following from above, this is actually 2 measures starting mid-measure.
barHtreble = \relative c' {
  <<
    { d'4(^\markup{\italic L.H.} g b) r d,( g b) r }
  \\
    { \times 2/3 {g,8 b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b}
    }
  >>
}
barHbass = \relative c' {
  r4 r2 <g d'>4 r r2 <f aes>4
}
barHpedal = {
  s4 s1 s2 s4\off\on
}

barItreble = \relative c' {
  <<
    { d'4( g b c aes f g) r }
  \\
    { \times 2/3 {g,8 b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b f b} \times 2/3 {f b f}
      \times 2/3 {b f b} \times 2/3 {f b f}
      \times 2/3 {b g b}
    }
  >>
}
barIbass = \relative c' {
  r4 r1 r2 <g d'>4
}
barIpedal = {
  s4 s2 s4 s4\off\on s2 s4\off\on
}

barHHtreble = \relative c' {
  <<
    { d'4( g b) r d,( g b) r }
  \\
    { \times 2/3 {g,8 b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b g b}
    }
  >>
}
barHHbass = \relative c' {
  r4 r1 r2 <f aes>4
}
barHHpedal = {
  s4 s1 s2 s4\off\on
}


% Five beats, gets us back on track.
barJtreble = \relative c' {
  <<
    { d'4( g b ees d) }
  \\
    { \times 2/3 {g,,8 b g}
      \times 2/3 {b g b} \times 2/3 {g b g}
      \times 2/3 {b f b} \times 2/3 {f b f}
    }
  >>
}
barJbass = \relative c' {
  r4 r1
}
barJpedal = {
  s4 s2 s2\off\on
}

%  ------------
% | Measure 18 |
%  ------------
barKtreble = \relative c'' {
  \times 2/3 {<c ees>8 g <c ees>} \times 2/3 {g <c ees> g}
  \times 2/3 {<c ees>8 g <c ees>} \times 2/3 {g <c ees> g}
  \times 2/3 {<c d>8 a <c d>} \times 2/3 {a <c d> a}
  \times 2/3 {<c d>8 a <c d>} \times 2/3 {a <c d> a}
  \times 2/3 {<d aes>8 f, <d' aes>} \times 2/3 {f, <d' aes> f,}
  \times 2/3 {<d' aes>8 f, <d' aes>} \times 2/3 {f, <d' aes> f,}
}
barKbass = \relative c' { \clef bass
  c4( bes8 aes g4 aes8 g fis4 d'2-> fis,4 f d'2 c8 b)
}
barKpedal = {
  s4\off\on s8 s8\off s4\on s8 s8\off
  s2\on s8\off s\on s4
  s2\off\on s8\off s\on s4
}

barLtreble = \relative c'' {
  \times 2/3 {<c g>8 ees, <c' g>} \times 2/3 {ees, <c' g> ees,}
  \times 2/3 {<c' f,>8 d, <c' f,>} \times 2/3 {d, <c' f,> d,}
  \times 2/3 {<b' g>8 f <b g>} \times 2/3 {f <b g> f}
  \times 2/3 {<c' g>8 ees, <c' g>} \times 2/3 {ees, <c' g> ees,}
}
barLbass = \relative c {
  ees4( f8 g aes4 bes8 aes g4 a8 b c2)
}
barLpedal = {
  s4.\off\on s8\off s4.\on s8\off
  s4.\on s8\off s2\on
}

%  ------------
% | Measure 23 |
%  ------------
barMtreble = \relative c'' {
  ees4( d8 c d4 ees8 d ees4 g f2)
}
barMbass = \relative c' { \clef treble
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {bes ees aes} \times 2/3 {ees bes ees}
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {d ees bes'} \times 2/3 {ees, d ees}
}
barMpedal = {
  s2\off\on s2\off\on s2\off\on s2\off\on
}

barNtreble = \relative c''' {
  aes4( g8 f ees4 d c d ees2) ~ ees4( d8 c bes4 c8 bes c'4 bes f2)
}
barNbass = \relative c' {
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {c ees aes} \times 2/3 {bes, ees aes}
  \times 2/3 {aes, ees' aes} \times 2/3 {bes, ees aes}
  \times 2/3 {ees, bes' ees} \times 2/3 {g ees bes}
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {d ees aes} \times 2/3 {ees d ees}
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {d ees bes'} \times 2/3 {ees, d ees}
}
barNpedal = {
  s2\off\on s2\off\on s4\off\on s4\off\on s4\off\on s4\off\on
  s2\off\on s2\off\on s2\off\on s2\off\on
}

%  ------------
% | Measure 29 |
%  ------------
barOtreble = \relative c''' {
  aes4( g8 f ees4 d c d ees2)
}
barObass = \relative c' {
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {c ees aes} \times 2/3 {bes, ees aes}
  \times 2/3 {aes, ees' aes} \times 2/3 {bes, ees aes}
  \times 2/3 {c, ees aes} \times 2/3 {c, ees aes} 
}
barOpedal = {
  s2\off\on s\off\on s4\off\on s\off\on s\off\on s\off\on
}

% One extra beat here. No choice
barPtreble = \relative c'' {
  <<
    { c4( d ees2 ~ ees2. des4 \key f \minor c) }
  \\
    { s1 s \times 2/3 { s8 f, aes}}
  >>
}
barPbass = \relative c' {
  \times 2/3 {aes8 ees' aes} \times 2/3 {bes, ees aes}
  \times 2/3 {c, ees aes} \times 2/3 {c, ees aes} 
  \times 2/3 {c,-> ees aes} \times 2/3 {c, e aes}
  \times 2/3 {c, e aes} \times 2/3 {c, e aes}
}
barPpedal = {
  s2\off\on s4\off\on s2\off\on s\off\on s4\off\on
}

barQtreble = \relative c' {
  \times 2/3 {c8 f aes}
  \times 2/3 {c, e bes'} \times 2/3 {c, e bes'}
  \times 2/3 {c, f aes} \times 2/3 {c, f aes}
  \times 2/3 {c, f aes} \times 2/3 {c, f aes}
  \times 2/3 {c, g' bes} \times 2/3 {e, g bes}
  \times 2/3 {e, g bes} \times 2/3 {e, g bes}
}
barQbass = \relative c' { \clef bass \key f \minor
  c4( bes8 aes g4 aes8 g f4 aes2 f4 e-. c'2-> aes8 g)
}
barQpedal = {
  s2\off\on s4\off\on s\off
  s1\on s4\off s2\on s4\off
}

barRtreble = \relative c'' {
  \times 2/3 {aes8 c f} \times 2/3 {aes, c f}
  \times 2/3 {g, des' f} \times 2/3 {g, bes f'}
  \times 2/3 {bes, c e} \times 2/3 {bes c e}
  \times 2/3 {bes c e} \times 2/3 {aes, c f}
}
barRbass = \relative c {
  f4( g8 aes bes4 c8 des c4 aes'8 g g4 f)
}
barRpedal = {
  s4.\on s8\off s4.\on s8\off
  s4.\on s8\off s4\on s\off\on
}

%  ------------
% | Measure 38 |
%  ------------
barStreble = \relative c''' {
  aes4( g8 f g4 aes8 g c4. bes8 f2)
}
barSbass = \relative c' { \clef treble
  \times 2/3 {f8 aes des} \times 2/3 {aes f aes}
  \times 2/3 {ees aes des} \times 2/3 {aes ees aes}
  \times 2/3 {f aes des} \times 2/3 {aes f aes}
  \times 2/3 {g aes ees'} \times 2/3 {aes, g aes}
}
barSpedal = {
  s2\off\on s\off\on s\off\on s\off\on
}

barTtreble = \relative c''' {
  aes4( g8 f g4. aes8 ees1)
}
barTbass = \relative c' {
  \times 2/3 {f8 aes des} \times 2/3 {aes f aes}
  \times 2/3 {ees aes des} \times 2/3 {aes ees aes}
  \times 2/3 {ees aes c} \times 2/3 {aes ees aes}
  \times 2/3 {des, aes' c} \times 2/3 {c, aes' c}
}
barTpedal = {
  s2\off\on s\off\on s\off\on s4\off\on s\off\on
}

barUtreble = \relative c''' {
  aes8( g f ees f ees d ees f4 aes4 g2)
  c8( bes aes g aes g f ees)
}
barUbass = \relative c' {
  \times 2/3 {bes8 des ees} \times 2/3 {aes ees des} 
  \times 2/3 {bes8 des ees} \times 2/3 {g ees des} 
  \times 2/3 {bes8 des ees} \times 2/3 {c' ees, des} 
  \times 2/3 {bes8 des ees} \times 2/3 {des' ees, des} 
  \times 2/3 {bes8 des ees} \times 2/3 {bes' ees, des} 
  \times 2/3 {bes8 des ees} \times 2/3 {aes ees des} 
}
barUpedal = {
  s2\off\on s\off\on s\off\on s\off\on s\off\on s\off\on
}

%  ------------
% | Measure 45 |
%  ------------
barVtreble = \relative c''' {
  \times 2/3 {ees8( des, ees'} \times 2/3 {ees, des' f,}
  \times 2/3 {c' g bes} \times 2/3 {aes aes' aes,}
  \times 2/3 {ees' des, ees'} \times 2/3 {ees, des' f,}
  \times 2/3 {c' g bes} aes4->)
  \times 2/3 {ees'8( des, ees'} \times 2/3 {ees, des' f,}
  \times 2/3 {c' g bes} \times 2/3 {aes aes' aes,}
  \times 2/3 {ees' des, ees'} \times 2/3 {ees, des' f,}
  \times 2/3 {c' g bes} aes4->)
}
barVbass = \relative c' {
  \times 2/3 {aes8 ees' g} \times 2/3 {des' g, ees}
  \times 2/3 {aes, ees' aes} \times 2/3 {c aes ees}
  \times 2/3 {aes, ees' g} \times 2/3 {des' g, ees}
  \times 2/3 {aes, ees' aes} \times 2/3 {c aes ees}
  \times 2/3 {aes, ees' g} \times 2/3 {des' g, ees}
  \times 2/3 {aes, ees' aes} \times 2/3 {c aes ees}
  \times 2/3 {aes, ees' g} \times 2/3 {des' g, ees}
  \times 2/3 {aes, ees' aes~} <aes c>4
}
barVpedal = {
  s2\off\on s\off\on s2.\off\on s4\off\on
  s2\off\on s\off\on s2.\off\on s4\off
}

%  ------------
% | Measure 49 |
%  ------------
barWtreble = \relative c'' {
  <<
    {f4( e f-|)}
  \\
    {\times 2/3 {aes,8 f aes} \times 2/3 {bes g bes} aes4-|}
  >>
  <aes c>-|
}
barWbass = \relative c' { \clef bass
  <<
    {c4 des c-|}
  \\
    {f,2~ f4-|}
  >>
  <f f'>-|
}
barWpedal = {
  s2\on s\off
}

barXtreble = \relative c'' {
  <<
    {c4( b c-|)}
  \\
    {\times 2/3 {e,8 c e} \times 2/3 {f d f} e4-|}
  >>
  <g e>-|
}
barXbass = \relative c' {
  <<
    {g4 aes g-|}
  \\
    {c,2~ c4-|}
  >>
  <c c'>-|
}
barXpedal = {
  s2\on s\off
}

%TODO: Find a workaround. I should be able to put a '-|' after the end of the
% slur, but doing so with the current software causes the slur to be HUGE.
barYtreble = \relative c'' {
  <<
    { c4( b bes aes ges f e f) }
  \\
    {
      \times 2/3 {e8 c e} \times 2/3 {f d f}
      \times 2/3 {e c e} \times 2/3 {f c f}
      \times 2/3 {des ges, des'} \times 2/3 {d aes d}
      \times 2/3 {bes g bes} <c aes>4-|
    }
  >>
}
barYbass = \relative c' {
  <<
    {g4 aes g f bes, b c~ c-|}
  \\
    {c2. f4 r2 r4 f,4-|}
  >>
}
barYpedal = {
  s4\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off\on s\off
}

barZtreble = \relative c'' {
  <<
    {c4( b c-|)}
  \\
    {\times 2/3 {e,8 c e} \times 2/3 {f des? f} e4-|}
  >>
  <g e>-|
}
barZbass = \relative c' {
  <<
    {g4 aes g-|}
  \\
    {c,2~ c4-|}
  >>
  <c c'>-|
}
barZpedal = {
  s2\on s\off
}

%  ------------
% | Measure 56 |
%  ------------
barAAtreble = \relative c'' {
  <<
    { f4( e ees des ces bes \times 2/3 {<a f>8) c, <a' f>} }
  \\
    {
      \times 2/3 {a8 f a} \times 2/3 {bes g bes}
      \times 2/3 {a f a} \times 2/3 {bes f bes}
      \times 2/3 {ges ces, ges'} \times 2/3 {g des g}
      s4
    }
  >>
}
barAAbass = \relative c' {
  <<
    {c4 des c bes ees, e f}
  \\
    {f2. bes4 s2.}
  >>
}
barAApedal = {
  s4\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off\on
}

barABtreble = \relative c' {
  <<
    { c'4(^\markup{\italic L.H.} f a) r c,( f a) r }
  \\
    { \times 2/3 {c,,8 <f a> c}
      \times 2/3 {<f a> c <f a>} \times 2/3 {c <f a> c}
      \times 2/3 {a' f a} \times 2/3 {f a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a f a}
    }
  >>
}
barABbass = \relative c {
  r4 r2 f4 r r2 <ges bes, ees,>4
}
barABpedal = {
  s4 s2 s2\off\on s2 s4
}

barACtreble = \relative c' {
  <<
    { c'4( f a bes ges ees des) r }
  \\
    {
      \times 2/3 {f,8 a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a ees a} \times 2/3 {ees a ees}
      \times 2/3 {a ees a} \times 2/3 {ees a ees}
      \times 2/3 {a f a}
    }
  >>
}
barACbass = \relative c {
  r4 r1 r2 <f c'>4
}
barACpedal = {
  s4 s2 s8 s\off\on s4 s2 s4\off\on
}

barADtreble = \relative c' {
  <<
    { c'4( f a) r c,( f a) r }
  \\
    { 
      \times 2/3 {f,8 a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a f a}
    }
  >>
}
barADbass = \relative c' {
  r4 r1 r2 <ges bes, ees,>4
}
barADpedal = {
  s4 s1 s2 s4\off\on
}

barAEtreble = \relative c' {
  <<
    { c'4( f a des c) }
  \\
    {
      \times 2/3 {f,,8 a f}
      \times 2/3 {a f a} \times 2/3 {f a f}
      \times 2/3 {a ees a} \times 2/3 {ees f, ees'}
    }
  >> 
}
barAEbass = \relative c {
  r4 r1
}
barAEpedal = {
  s4 s2 s8 s8\off\on s4
}

%  ------------
% | Measure 65 |
%  ------------
barAFtreble = \relative c'' {
  c8( bes a g a g f g a4 des c2)
}
barAFbass = \relative c {
  \times 2/3 {bes8 f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {des' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {bes g f}
  \times 2/3 {bes, f' g} \times 2/3 {a g f}
}
barAFpedal = {
  s2\off\on s\off\on s\off s\on
}

barAGtreble = \relative c'' {
  f8( f, g a bes des c des c4 bes2 a4 a4 \grace {bes8[ a]} g2 f4)
}
barAGbass = \relative c {
  \times 2/3 {bes8 f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {des' g, f}
  \times 2/3 {ees, bes' ees} \times 2/3 {g des' ees}
  \times 2/3 {des g, ees} \times 2/3 {bes ees, ees'}
  \times 2/3 {bes8 f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {des' g, f}
}
barAGpedal = {
  s2\off\on s\off\on s1\off\on s2\off\on s\off\on
}

barAHtreble = \relative c''' {
  \times 2/3 {a8( g, a'} \times 2/3 {a, g' bes,}
  \times 2/3 {f' c ees} \times 2/3 {des des' des,}
  \times 2/3 {a' g, a'} \times 2/3 {a, g' bes,}
  \times 2/3 {f' c ees} des4->)
}
barAHbass = \relative c {
  \times 2/3 {bes8 f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {ees' g, f}
  \times 2/3 {bes, f' g} \times 2/3 {ees' g, f}
}
barAHpedal = {
  s1\off\on s\off\on
}

barAItreble = \relative c''' {
  \times 2/3 {a8( g, a'} \times 2/3 {a, g' bes,}
  \times 2/3 {f' c ees} \times 2/3 {des des' des,}
  \times 2/3 {a' g, a'} \times 2/3 {a, g' bes,}
  \times 2/3 {f' c ees} des4->)
}
barAIbass = \relative c, {
  \times 2/3 {ees8 bes' g'} \times 2/3 {ees' g, bes,}
  \times 2/3 {ees, bes' g'} \times 2/3 {ees' g, bes,}
  \times 2/3 {ees, bes' g'} \times 2/3 {ees' g, bes,}
  \times 2/3 {ees, bes' g'} \times 2/3 {ees' g, bes,}
}
barAIpedal = {
  s1\off\on s\off\on
}

%  ------------
% | Measure 74 |
%  ------------
barAJtreble = \relative c''' {
  \times 2/3 {<d fis,>8 <a d,> <bes fis>} \times 2/3 {<a d,> <fis a,> <g d>}
  \times 2/3 {<fis a,> <d fis,> <ees a,>} \times 2/3 {<d fis,> <a d,> <bes g>}
  <a fis>1
}
barAJbass = \relative c, {
  \times 2/3 {d8 a' d} \times 2/3 {a' d a'}
  \times 2/3 {d, a d,} \times 2/3 {a d, cis'}
  \times 2/3 {d a' d} \times 2/3 {d, a' d}
  \times 2/3 {d, a' d} \times 2/3 {d, a' d}
}
barAJpedal = {
  s2\off\on s\off\on s1\off\on
}

barAKtreble = \relative c''' {
  <<
    { g4( fis2 g4) }
  \\
    {
      \times 2/3 {bes,8 g bes} \times 2/3 {c a c}
      \times 2/3 {a c a} \times 2/3 {bes g bes}
    }
  >>
}
barAKbass = \relative c {
  <<
    { d'4 ees2 d4 }
  \\
    { g,1 }
  >>
}
barAKpedal = {
  s4\off\on s2\off\on s4\off\on
}

barALtreble = \relative c'' {
  <<
    { g4( fis2 g4) }
  \\
    {
      \times 2/3 {bes,8 g bes} \times 2/3 {c a c}
      \times 2/3 {a c a} \times 2/3 {bes g bes}
    }
  >>
}
barALbass = \relative c, {
  <<
    { d'4 ees2 d4 }
  \\
    { g,1 }
  >>
}
barALpedal = {
  s4\off\on s2\off\on s4\off\on
}

barAMtreble = \relative c'' {
  <<
    { g4( fis2 f4)\shortfermata }
  \\
    {
      \times 2/3 {bes,8 g bes} \times 2/3 {c a c}
      \times 2/3 {a c a} c4
    }
  >>
}
barAMbass = \relative c, {
  <<
    { d'4 ees2 ~ ees4 }
  \\
    { g,2. a4 \shortfermata }
  >>
}
barAMpedal = {
  s4\off\on s2\off\on s4\off
}

%  ------------
% | Measure 80 |
%  ------------
barANtreble = \relative c'' {
  d4( c8 bes bes a ees'4~ ees8 d c bes bes a ees4 
  d) c'8( bes bes a fis4~ fis8 g a bes c d4 ees8
  d bes' a g f ees d c ees d fis, a g4 a)
}
barANbass = \relative c {
  bes4 <f' d'> bes, <fis' c'> bes,4 <f' d'> bes, <fis' c'>
  g, <d' bes'> g, <ees' a> g, <d' bes'> a <d fis c'>
  bes <d g d'> c <a' ees'>
  <<
    { r4 <a c> <g bes> <c ees> }
  \\
    { d,2 r4 f}
  >>
}
barANpedal = {
  s2\on s\off\on s\off\on s\off\on
  s\off\on s8 s\off\on s4 s2\off\on s4\off s4\on
  s2\off\on s\off\on s2\off s4\on s\off
}

barAOtreble = \relative c'' {
  d4( c8 bes bes a ees'4~ ees8 d c bes bes a4 ees8
  d4) c'8( bes bes a4 fis8~ fis g a bes c d ees f
  d4) \grace {f8} ees8( d d c a4)
  r8 aes8( ges f f ees ges'4 aes8 ges f ees ges f ees des des c ees des bes2)
}
barAObass = \relative c {
  bes4 <f' d'> bes, <fis' c'> bes,4 <f' d'> bes, <fis' c'>
  g, <d' bes'> g, <ees' a> g, <d' bes'> a <f' c'>
  bes, <f' d'> bes, <fis' c'> bes, <aes' d> ees <bes' ees>
  ees, <ces' ges'> f, <bes des f>
  <<
    {r4 f'2.}
  \\
    {f,4 a <bes des> <aes d>}
  >>
}
barAOpedal = {
  s2\on s4\off s\on s2\off\on s4\off s\on
  s2\off\on s4\off s\on s4\off\on s2.\off
  s2\on s4\off s\on s\off\on s2\off s4\on
  s4\off s\on s\off s\on s\off\on s\off\on s\off\on s\off\on
}

%  ------------
% | Measure 94 |
%  ------------
barAPtreble = \relative c'' { \key ees \minor
  ees4( des8 ces ces bes aes bes ces4 des8 ces bes2) ~
  bes8 ces( bes aes g fes' ees bes des4 ces8 bes ces2->)
  r8 ces( bes aes ces4 bes~ bes8 eeses des ces eeses4 des
  ges aes,8 bes ces des eeses ges des'4 ces2 <bes ces,>4)
}
barAPbass = \relative c' { \key ees \minor
  <<
    {
      r4 <bes ees> r <ces ees> r <aes ees'> r <aes d>
      r <aes des> r <g des'> r <aes ees'>
    }
  \\
    { ges2 ges f f fes ees ees}
  >>
  eeses4 <aes ges'>
  eeses <ces' ges'> des, <bes' ges'>
  ces, <ges' eeses' ges> bes, <ges' des' ges>
  eeses, <ges' ces eeses>2 r4 r2 des,4 <aes'' des f>
}
barAPpedal = {
  s1\off s s s4 s\on s2\off\on
  s\off\on s\off\on s\off\on s\off\on s2.\off\on s4\off
  s2 s\on
}

%  -------------
% | Measure 102 |
%  -------------
barAQtreble =  {
  <<
  \relative c''' {
    ges4( f8 ees des bes' aes4~aes8 bes ces des bes4 aes8 ges~
    ges bes aes4. bes8 aes4) bes4( aes8 ges aes2)
    bes4( aes8 ges eeses2 des4 bes'2 aes4)
  }
  \\
  \relative c'' {
    bes2 ces4. ges'8 f4 ees8 des ges4 des8 bes
    \times 2/3 {ces8 des eeses} \times 2/3 {ces des eeses}
    \times 2/3 {ces des eeses} \times 2/3 {eeses fes eeses}
    des4 ces8 bes ces des eeses fes
    ges4 des8 bes aes bes ces aes bes4 des ces2
  }
  >>
}
barAQbass = \relative c {
  \times 2/3 {ges8 des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, des' f} \times 2/3 {ces' ges des}
  \times 2/3 {ges, des' f} \times 2/3 {ces' ges des}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, des' f} \times 2/3 {ces' ges des}
  \times 2/3 {ges, des' f} \times 2/3 {ces' ges des}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {eeses, ces' ges'} \times 2/3 {ces ges ces,}
  \times 2/3 {des, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ces, ces' eeses} \times 2/3 {aes eeses ces}
  \times 2/3 {des, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {des, aes' f'} \times 2/3 {des' f, aes,}
}
barAQpedal = {
  s2\off\on s4\off\on s\off s2\on s\off\on s2.\off\on s4\off
  s2\on s\off\on s\off\on s\off\on s\off\on
}

%  -------------
% | Measure 108 |
%  -------------
barARtreble = {
  <<
  \relative c''' {
    ges2( ees8 des16 ees des4~des aes' bes8 aes ges fes
    ees8 fes ges des'~ des ces16 des ces4) eeses,8( fes ges des' ces4 f,
    ges2) g4( d~ d8 c b c bes aes g f ees2 d)
  }
  \\
  \relative c'' {
    bes4 aes8 ges fes4. aes8 ces bes4 ees8 ges fes ees des
    ces8 des ees fes ees2 ces8 des eeses fes eeses4 ces
    bes2 b8 a b g c,4-> d8 ees d4 des c2 b
  }
  >>
}
barARbass = \relative c {
  \times 2/3 {ges8 des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {ges, ees' ges} \times 2/3 {ces ges ees}
  \times 2/3 {ges, ees' ges} \times 2/3 {ces ges ees}
  \times 2/3 {ges, eeses' ges} \times 2/3 {ces ges eeses}
  \times 2/3 {ges, eeses' aeses} \times 2/3 {ces aeses eeses}
  \times 2/3 {ges, des' ges} \times 2/3 {bes ges des}
  \times 2/3 {f, d' g} \times 2/3 {b g d}
  \times 2/3 {ees, c' ees} \times 2/3 {g ees c}
  \times 2/3 {f, c' f} \times 2/3 {aes f des}
  \times 2/3 {g, c g'} \times 2/3 {c, g c}
  \times 2/3 {g d' g} \times 2/3 {d g, d'}
}
barARpedal = {
  s2\off\on s4\off\on s\off s2\on s\off\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off\on s\off\on s\off\on s4\off\on s\off\on
  s2\off\on s\off\on
}

%  -------------
% | Measure 115 |
%  -------------
barAStreble = { \key c \minor
  <<
  \relative c''' {
    c4( b2 c4) g( fis2 g4) c4( b2 c4) g( fis f ees des c b c-.)
    c'4( b c g-.) g( fis g d-|) c'( b c g-|) g( fis f ees des c
    \times 2/3 {<b g>8) d, <b' g>}
  }
  \\
  \relative c'' {
    \times 2/3 {ees8 c ees} \times 2/3 {f d f}
    \times 2/3 {d f d} \times 2/3 {ees c ees}
    \times 2/3 {b g b} \times 2/3 {c a c}
    \times 2/3 {a c a} \times 2/3 {b g b}
    \times 2/3 {ees c ees} \times 2/3 {f d f}
    \times 2/3 {d f d} \times 2/3 {ees c ees}
    \times 2/3 {b g b} \times 2/3 {c a c}
    \times 2/3 {b g b} \times 2/3 {c g c}
    \times 2/3 {aes des, aes'} \times 2/3 {a d, a'}
    \times 2/3 {f d f} ees4-.
    \times 2/3 {ees'8 c ees} \times 2/3 {f d f}
    ees4 ees-.
    \times 2/3 {b8 g b} \times 2/3 {c a c}
    b4 b-|
    \times 2/3 {ees8 c ees} \times 2/3 {f d f}
    ees4-. ees-|
    \times 2/3 {b8 g b} \times 2/3 {c a c}
    \times 2/3 {b g b} \times 2/3 {c g c}
    \times 2/3 {aes des, aes'} \times 2/3 {a d, a'}
  }
  >>
}
barASbass = { \key c \minor \clef treble
  <<
  \relative c'' {
    g4 aes2 g4 d ees2 d4 g aes2 g4 d ees d c
  }
  \\
  \relative c' {
    c1 g1 c1 g2. c4
  }
  >>
  \relative c  {
    f4 fis g~ <c, g' c>
  }
  <<
  \relative c'' {
    g4 aes g c-. d, ees d g-| g aes g-. c-| d, ees d c
  }
  \\
  \relative c' {
    c2. c4-. g2. g4-| c2~ c4-. c-| g2. c4
  }
  >>
  \relative c {
    f4 fis r4
  }
}
barASpedal = {
  s4\off\on s2\off\on s4\off\on
  s4\off\on s2\off\on s4\off\on
  s4\off\on s2\off\on s4\off\on
  s4\off\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off\on s\off
  s\on s\off\on s2\off
  s4\on s\off\on s2\off
  s4\on s\off\on s2\off
  s4\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off
}

%  -------------
% | Measure 125 |
%  -------------
barATtreble = \relative c' {
  <<
  \relative c'' {
    s4 r2 <d g b>4^\markup{\italic L.H.} r4 r2 <f aes c>4 r4
    r1 r2 <d g b>4 r r1 r2 <f aes c>4
  }
  \\
  \relative c' {
    \times 2/3 {d8 <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {d, <c' aes> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {d, <c' aes> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {d, <c' aes> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<b' g> d, <b' g>} \times 2/3 {d, <b' g> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {d, <c' aes> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {d, <c' aes> d,}
    \times 2/3 {<c' aes> d, <c' aes>} \times 2/3 {f, <c' aes> f,}
  }
  >>
}
barATbass = \relative c { \clef bass
  g4( d' b') r g,( d' b') r g,( d' b' c aes b2) r4
  g,4( d' b') r g,( d' b') r f,( d' b' c d)
}
barATpedal = {
  s4\on s2. s4\off\on s1 s2 s2\off\on
  s1\off\on s2. s4\off\on s2. s4\off\on s2. s4\off
}

%  -------------
% | Measure 132 |
%  -------------
barAUtreble = \relative c'' {
  \times 2/3 {<c g>8 ees, <c' g>} \times 2/3 {ees, <c' g> ees,}
  \times 2/3 {<c' g> ees, <c' g>} \times 2/3 {ees, <c' g> ees,}
  \times 2/3 {<c' a> fis, <c' a>} \times 2/3 {fis, <c' a> fis,}
  \times 2/3 {<b g> f <b g>} \times 2/3 {f <b g> f}
  \times 2/3 {<c' g> c, <c' g>} \times 2/3 {c, <g' c> c,}
  \times 2/3 {<c' f,> d, <c' f,>} \times 2/3 {d, <c' f,> d,}
  \times 2/3 {<b' g> f <b g>} \times 2/3 {f <b g> f}
  \times 2/3 {<c' g> ees, <c' g>} \times 2/3 {ees, <c' g> ees,}
}
barAUbass = \relative c' {
  c4( bes8 aes g4 aes8 g fis4 ees' d g,) ees( f8 g aes4 bes8 aes g4 ees'8 d c2)
}
barAUpedal = {
  s2\on s4\off\on s\off\on s2\off\on s\off\on
  s\off\on s\off\on s\off\on s\off\on
}

%  -------------
% | Measure 136 |
%  -------------
barAVtreble = \relative c'' {
  ees4( d8 c d4 ees8 d ees4 g f2) aes4( g8 f ees4 d c d ees2~ ees4)
  d8( c bes4 c8 bes c'4 bes f2) aes4( g8 f ees4 d c bes c' bes c, bes ees' d)
}
barAVbass = \relative c' { \clef treble
  \times 2/3 {c8 ees aes} \times 2/3 {ees c ees}
  \times 2/3 {bes ees aes} \times 2/3 {ees bes ees}
  \times 2/3 {c ees aes} \times 2/3 {ees c ees}
  \times 2/3 {d ees bes'} \times 2/3 {ees, d ees}
  \times 2/3 {c ees aes} \times 2/3 {ees c ees}
  \times 2/3 {c ees aes} \times 2/3 {bes, ees aes}
  \times 2/3 {aes, ees' aes} \times 2/3 {bes, ees aes}
  \times 2/3 {ees, bes' ees} \times 2/3 {g ees bes}
  \clef bass
  \times 2/3 {c, aes' bes} \times 2/3 {ees bes aes}
  \times 2/3 {d, aes' bes} \times 2/3 {f' bes, aes}
  \times 2/3 {ees aes bes} \times 2/3 {g' bes, aes}
  \times 2/3 {d, aes' bes} \times 2/3 {aes' bes, aes}
  \times 2/3 {ees aes bes} \times 2/3 {bes' bes, aes}
  \times 2/3 {ees aes bes} \times 2/3 {f' bes, aes}
  \times 2/3 {ees aes bes} \times 2/3 {d bes aes}
  \times 2/3 {ees aes bes} \times 2/3 {f' bes, aes}
  \times 2/3 {ees aes bes} \times 2/3 {d bes aes}
  \times 2/3 {ees bes' f'} \times 2/3 {aes f bes,}
}
barAVpedal = {
  s2\off\on s\off\on s\off\on s\off\on
  s\off\on s4\off\on s\off\on s\off\on s\off\on s2\off\on
  s\off\on s\off\on s\off\on s\off\on
  s\off\on s\off\on s\off\on s\off\on
  s\off\on s\off\on
}

%  -------------
% | Measure 145 |
%  -------------
barAWtreble = \relative c''' {
  \times 2/3 {<ees g,>8 <bes ees,> <c g>}
  \times 2/3 {<bes ees,> <g bes,> <aes ees>}
  \times 2/3 {<g bes,> <ees g,> <f bes,>}
  \times 2/3 {<ees g,> <bes ees,> <c g>}
  \times 2/3 {<bes d,> <c aes> <bes f>}
  \times 2/3 {<f' aes,> <d bes> <ees c>}
  \times 2/3 {<d bes> <aes' c,> <f d>}
  \times 2/3 {<c' ees,> <aes f> <bes d,>}
  \times 2/3 {<ees g,>8 <bes ees,> <c g>}
  \times 2/3 {<bes ees,> <g bes,> <aes ees>}
  \times 2/3 {<g bes,> <ees g,> <f bes,>}
  \times 2/3 {<ees g,> <bes ees,> <c g>}
  \times 2/3 {<bes d,> <c aes> <bes f>}
  \times 2/3 {<f' aes,> <d bes> <ees c>}
  \times 2/3 {<d bes> <aes' c,> <f d>}
  \times 2/3 {<c' ees,> <aes f> <bes d,>}
  \times 2/3 {<g ees> <aes bes,> <g ees>}
  \times 2/3 {<ees g,> <f bes,> <ees g,>}
  \times 2/3 {<bes ees,> <c g> <bes ees,>}
  \times 2/3 {<g bes,> <aes ees> <g bes,>}
}
barAWbass = \relative c, {
  \times 2/3 {ees8 bes' ees} \times 2/3 {bes' ees bes'}
  \times 2/3 {ees, bes ees,} \times 2/3 {bes ees, bes'}
  \times 2/3 {ees, bes' aes'} \times 2/3 {bes f' aes}
  \times 2/3 {f bes, aes} \times 2/3 {bes, ees, f'}
  \times 2/3 {ees, bes' ees} \times 2/3 {bes' ees bes'}
  \times 2/3 {ees, bes ees,} \times 2/3 {bes ees, bes'}
  \times 2/3 {ees, bes' aes'} \times 2/3 {bes f' aes}
  \times 2/3 {f bes, aes} \times 2/3 {bes, ees, f'}
  \times 2/3 {ees, bes' ees} \times 2/3 {bes' ees, bes}
  \times 2/3 {ees, bes' ees} r4
}
barAWpedal = {
  s4\off\on s2.\off\on s1\off\on
  s4\off\on s2.\off\on s1\off\on
  s2\off\on s4\off\on s\off
}

%  -------------
% | Measure 150 |
%  -------------
barAXtreble = {
  <<
  \relative c''' {
    r2 <g ees bes>4^\markup{\italic L.H.} r4 r2 <g ees bes>4 r4
    r2 <aes f des>4 r4 r1 r2 <g ees bes>4 r4 r1 r2 <aes f des>4 r4 r2 r4 aes,
  }
  \\
  \relative c' {
    \times 2/3 {<ees g,>8 <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> <ees aes,> <f ces>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> <ees aes,> <f ces>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> ees <f ces>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees g,> <f bes,> <ees g,>}
    \times 2/3 {<f bes,> <ees g,> <f bes,>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> <ees aes,> <f ces>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> <ees aes,> <f ces>}
    \times 2/3 {<ees aes,> <f ces> <ees aes,>}
    \times 2/3 {<f ces> <ees aes,> <f ces>}
  }
  >>
}
barAXbass = \relative c, {
  r2 r4 ees4( bes' ees) r ees,( bes' ees) r des,( aes' f' ges aes g2) r4
  ees,( bes' ees) r ees,( bes' ees) r des,( aes' f' g) r
}
barAXpedal = {
  s1\on s s4 s2.\off\on s2 s\off s1\on s s4 s2.\off\on s4\off\on s\off\on s2\off
}

%  -------------
% | Measure 158 |
%  -------------
barAYtreble = \relative c'' {
  bes8( aes g f g f ees f g4 ces bes2) ees8( ees, f g aes aes bes ces
  bes4 aes2 g4 g \grace {aes8[ g]} f2 d4)
}
barAYbass = \relative c {
  \times 2/3 {aes8 ees' f} \times 2/3 {des' f, ees}
  \times 2/3 {aes, ees' f} \times 2/3 {ces' f, ees}
  \times 2/3 {aes, ees' f} \times 2/3 {aes f ees}
  \times 2/3 {aes, ees' f} \times 2/3 {g f ees}
  \times 2/3 {aes, ees' aes} \times 2/3 {ces aes ees}
  \times 2/3 {aes, ees' aes} \times 2/3 {ces aes ees}
  \times 2/3 {des, aes' des} \times 2/3 {f ces' des}
  \times 2/3 {ces f, des} \times 2/3 {aes des, des'}
  \times 2/3 {f, des' aes'} \times 2/3 {des aes des,}
  \times 2/3 {f, d' g} \times 2/3 {b g d}
}
barAYpedal = {
  s2\on s\off\on s\off\on s\off\on s\off\on s\off\on s s\off\on s s\off\on
}

%  -------------
% | Measure 163 |
%  -------------
barAZtreble = \relative c''' {
  \times 2/3 {<c ees,>8 <g c,> <aes ees>}
  \times 2/3 {<g c,> <ees g,> <f c>}
  \times 2/3 {<ees g,> <c ees,> <d g,>}
  \times 2/3 {<c ees,> <g c,> <aes ees>}
  \times 2/3 {<g d> <aes f> <g d>}
  \times 2/3 {<f aes,> <g d> <f aes,>}
  \times 2/3 {<ees g,> <f c> <ees g,>}
  \times 2/3 {<d fis,> <ees c> <d fis,>}
  \times 2/3 {<d f,> <ees b> <d f,>}
  \times 2/3 {<c ees,> <d g,> <c ees,>}
  \times 2/3 {<b d,> <c g> <b d,>}
  \times 2/3 {<c g> <b d,> <c g>}
}
barAZbass = \relative c {
  <ees ees,>2 <d d,>4 <c c,> <b b,> <bes bes,> <a a,> <aes aes,> <g g,>1
}
barAZpedal = {
  s2\off\on s\off\on
  s4\off\on s\off\on s\off\on s\off\on
  s4\off\on s\off\on s\off\on s\off\on
}

%  -------------
% | Measure 166 |
%  -------------
barBAtreble = {
  <<
  \relative c'' {
    r4 g( c ees) r g,( c ees) r aes,( des f ees c g2)
  }
  \\
  \relative c' {
    \times 2/3 {<c ees,>8 <d g,> <c ees,>}
    \times 2/3 {<d g,> <c ees,> <d g,>}
    \times 2/3 {<c ees,> <d g,> <c ees,>}
    \times 2/3 {<d g,> <c ees,> <d g,>}
    \times 2/3 {<c ees,> <d g,> <c ees,>}
    \times 2/3 {<d g,> <c ees,> <d g,>}
    \times 2/3 {<c ees,> <d g,> <c ees,>}
    \times 2/3 {<d g,> <c ees,> <d g,>}
    \times 2/3 {<des f,> <ees aes,> <des f,>}
    \times 2/3 {<ees aes,> <des f,> <ees aes,>}
    \times 2/3 {<des f,> <ees aes,> <des f,>}
    \times 2/3 {<ees aes,> <des f,> <ees aes,>}
    \times 2/3 {r8 ees c} \times 2/3 {ees c ees}
    \times 2/3 {b d b} \times 2/3 {d b d}
  }
  >>
}
barBAbass = \relative c {
  <g c,>4 r r2 <g c,>4 r r2 f4 r r2
  <<
  \relative c {
    \times 2/3 {ees8 g ees} \times 2/3 {g ees g}
    \times 2/3 {d g d} \times 2/3 {g d g}
  }
  \\
  \relative c {
    g2 g
  }
  >>
}
barBApedal = {
  s2\off\on s\off\on s s\off\on
  s\off\on s\off\on s\off\on s\off\on
}

barBBtreble = {
  <<
  \relative c' { \clef bass
    c4 b2 c4
  }
  \\
  \relative c {
    \times 2/3 {ees8 g ees} \times 2/3 {f g f}
    \times 2/3 {g f g} \times 2/3 {ees g ees}
  }
  >>
}
barBBbass = {
  <<
  \relative c {
    c4 d2 c4
  }
  \\
  \relative c {
    <g c,>4 <g c,>2.
  }
  >>
}
barBBpedal = {
  s2\off\on s4\off\on s4\on
}
  
barBCtreble = {
  <<
  \relative c'' { \clef treble
    c4 b2 c4
  }
  \\
  \relative c' {
    \times 2/3 {ees8 g ees} \times 2/3 {f g f}
    \times 2/3 {g f g} \times 2/3 {ees g ees}
  }
  >>
}
barBCbass = {
  <<
  \relative c' {
    c4 d2 c4
  }
  \\
  \relative c' {
    <g c,>2. <g c,>4
  }
  >>
}
barBCpedal = {
  s4 s\off\on s\off\on s\off\on
}

barBDtreble = {
  <<
  \relative c''' { \clef treble
    c4 b2 c4
  }
  \\
  \relative c'' {
    ees8 g f g f g ees g
  }
  >>
}
barBDbass = { \clef treble
  <<
  \relative c'' {
    c2. c4
  }
  \\
  \relative c'' {
    <g c,>2. <g c,>4
  }
  >>
}
barBDpedal = {
  s4 s\off\on s\off\on s\off\on
}

barBEtreble = {
  \ottava #1
  <<
  \relative c'''' {
    c1 \bar "|."
  }
  \\
  \relative c''' {
    ees4 d2 c4\fermata
  }
  >>
}
barBEbass = {
  <<
  \relative c''' {
    g4 f2 ees4\fermata
  }
  \\
  \relative c'' {
    c1
  }
  >>
}
barBEpedal = {
  s2.\off\on s4\off
}
%  -------------
% | Subsections |
%  -------------
settingOutTreble = { \clef treble \key c \minor \time 4/4
  \barAtreble \barBtreble \barCtreble \barDEtreble \barAtreble \barBtreble
  \barCtreble \barFGtreble
}
settingOutBass = { \clef treble \key c \minor \time 4/4
  \barAbass \barBbass \barCbass \barDEbass \barAbass \barBbass \barCbass
  \barFGbass
}
settingOutPedal = {
  \barApedal \barBpedal \barCpedal \barDEpedal \barApedal \barBpedal \barCpedal
  \barFGpedal
}

embarkingTreble = {
  \barHtreble \barItreble \barHHtreble \barJtreble
}
embarkingBass =  {
  \barHbass \barIbass \barHHbass \barJbass
}
embarkingPedal = {
  \barHpedal \barIpedal \barHHpedal \barJpedal
}

someResistanceTreble = {
  \barKtreble \barLtreble \barMtreble \barNtreble \barOtreble \barPtreble
  \barQtreble \barRtreble \barStreble \barTtreble \barUtreble \barVtreble
}
someResistanceBass = {
  \barKbass \barLbass \barMbass \barNbass \barObass \barPbass \barQbass
  \barRbass \barSbass \barTbass \barUbass \barVbass
}
someResistancePedal = {
  \barKpedal \barLpedal \barMpedal \barNpedal \barOpedal \barPpedal \barQpedal
  \barRpedal \barSpedal \barTpedal \barUpedal \barVpedal
}

subdominantSettingOutTreble = {
  \barWtreble \barXtreble \barWtreble \barYtreble \barWtreble \barZtreble
  \barAAtreble \barABtreble \barACtreble \barADtreble \barAEtreble \barAFtreble
  \barAGtreble \barAHtreble \barAItreble \barAJtreble
  \key bes \major
  \barAKtreble \barALtreble \barAKtreble \barAMtreble
}
subdominantSettingOutBass = {
  \barWbass \barXbass \barWbass \barYbass \barWbass \barZbass \barAAbass
  \barABbass \barACbass \barADbass \barAEbass \barAFbass \barAGbass \barAHbass
  \barAIbass \barAJbass
  \key bes \major
  \barAKbass \barALbass \barAKbass \barAMbass
}
subdominantSettingOutPedal = {
  \barWpedal \barXpedal \barWpedal \barYpedal \barWpedal \barZpedal \barAApedal
  \barABpedal \barACpedal \barADpedal \barAEpedal \barAFpedal \barAGpedal
  \barAHpedal \barAIpedal \barAJpedal \barAKpedal \barALpedal \barAKpedal
  \barAMpedal
}

storyStartTreble = {
  \barANtreble \barAOtreble \barAPtreble \barAQtreble \barARtreble
}
storyStartBass = {
  \barANbass \barAObass \barAPbass \barAQbass \barARbass
}
storyStartPedal = {
  \barANpedal \barAOpedal \barAPpedal \barAQpedal \barARpedal
}

recapTreble = {
  \barAStreble \barATtreble \barAUtreble \barAVtreble \barAWtreble \barAXtreble
  \barAYtreble
}
recapBass = {
  \barASbass \barATbass \barAUbass \barAVbass \barAWbass \barAXbass \barAYbass
}
recapPedal = {
  \barASpedal \barATpedal \barAUpedal \barAVpedal \barAWpedal \barAXpedal
  \barAYpedal
}

wrapUpTreble = {
  \barAZtreble \barBAtreble \barBAtreble \barBBtreble \barBCtreble \barBDtreble
  \barBEtreble
}
wrapUpBass = {
  \barAZbass \barBAbass \barBAbass \barBBbass \barBCbass \barBDbass \barBEbass
}
wrapUpPedal = {
  \barAZpedal \barBApedal \barBApedal \barBBpedal \barBCpedal \barBDpedal
  \barBEpedal
}

%  ----------
% | Sections |
%  ----------
sectionAtreble = {
  \settingOutTreble \embarkingTreble \someResistanceTreble 
  \subdominantSettingOutTreble
}
sectionAbass = {
  \settingOutBass \embarkingBass \someResistanceBass
  \subdominantSettingOutBass
}
sectionApedal = {
  \settingOutPedal \embarkingPedal \someResistancePedal
  \subdominantSettingOutPedal
}

sectionBtreble = { \storyStartTreble }
sectionBbass = { \storyStartBass }
sectionBpedal = { \storyStartPedal }

sectionCtreble = { \recapTreble \wrapUpTreble }
sectionCbass = { \recapBass \wrapUpBass }
sectionCpedal = { \recapPedal \wrapUpPedal }

\score {
  \new PianoStaff <<
    \context Staff = "upper" {
      #(set-accidental-style 'modern-cautionary)
      { \sectionAtreble \sectionBtreble \sectionCtreble }
    }
    \context Staff = "lower" {
      #(set-accidental-style 'modern-cautionary)
      { \sectionAbass \sectionBbass \sectionCbass }
    }
    \context Dynamics = "pedal" {
      { \sectionApedal \sectionBpedal \sectionCpedal }
    }
  >>
}
