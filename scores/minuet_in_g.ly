\version "2.14.2"

#(set-default-paper-size "letter")

barAtreble = \relative c'' { \clef treble \key g \major \time 3/4
  b4   d8 b g a | b4  g'8 fis e d | c4  e8 c a b | c4  a'8 g fis e
}
barAbass = \relative c' { \clef bass \key g \major \time 3/4
  g8 a b  g b c | d c b   a   c b | a b c  a c d | e d c   b d   c
}

barBtreble = \relative c'' {
  d8 e fis e   g fis | e d cis  b ais cis | b cis d  cis e d   | c b a  g fis a
}
barBbass = \relative c' {
  b4   d8  cis b ais | b4  cis8 d e   cis | d4    b8 a   g fis | g4  a8 b c   a
}

barCtreble = \relative c'' {
  g4   b8 g e fis | g4  e'8 dis fis e | a,4   c8 a   fis g | a4    fis'8 e   dis cis
}
barCbass = \relative c' {
  b8 a g  e g a   | b a c   b   a   g | fis g a  fis a   b | cis b dis   cis b   ais
}

barDtreble = \relative c'' {
  b8 b'8 a g fis16 g a8 | g fis e b a16 b c8 | b8 g16 a b a g8 fis g8
}
barDbass = \relative c' {
  b4 cis dis | e g, fis | g b, dis
}

barDtrebleAltA = \relative c' {
  e2.
}
barDbassAltA = \relative c {
  e4 b'8 g e fis
}

barDtrebleAltB = \relative c' {
  e4 r2
}
barDbassAltB = \relative c {
  e4 e'8 b g a
}

sectionAtreble = \repeat volta 2 {\barAtreble \barBtreble \barCtreble \barDtreble}
                 \alternative { {\barDtrebleAltA} {\barDtrebleAltB} }
sectionAbass =   \repeat volta 2 {\barAbass   \barBbass   \barCbass   \barDbass}
                 \alternative { {\barDbassAltA} {\barDbassAltB} }

barEtreble = \relative c'' {
  cis4 e cis | ais fis'8 e d cis | b4 d b | gis e'8 d cis b
}
barEbass = \relative c' {
  ais8 b cis b ais gis | fis gis ais4 b | gis8 a b a gis fis | e fis gis4 a
}

barFtreble = \relative c'' {
  a8 b cis a g a | fis g a fis e fis | d e fis g a b | c b d c b a
}
barFbass = \relative c' {
  cis8 b a fis e fis | a g fis d cis d | c'4 a c | a fis d
}

barGtreble = \relative c'' {
  b4 d b | g g'8 fis e d | c4 e c | a a'8 g fis e
}
barGbass = \relative c' {
  g8 a b c d c | b a b d c b | a b c d e d | c b c e d c
}

barHtreble = \relative c'' {
  d8 b' a g fis16 g a8
}
barHbass = \relative c' {
  b4 c d
}

barHtrebleAltA = \relative c''' {
  g8 fis e d cis16 d e8 | fis d16 e fis e d8 cis d | b2.
}
barHbassAltA = \relative c' {
  e8 fis g fis g e | d4 fis, ais | b fis'8 d b cis
}

barHtrebleAltB = \relative c''' {
  g8 fis e d cis16 d e8 | d b16 c d c b8 a b | g2.
}
barHbassAltB = \relative c' {
  e8 d cis b a4 | b d, fis | g4 g,2
}

sectionBtreble = \repeat volta 2 {\barEtreble \barFtreble \barGtreble \barHtreble}
                 \alternative { {\barHtrebleAltA} {\barHtrebleAltB} }
sectionBbass = \repeat volta 2 {\barEbass \barFbass \barGbass \barHbass}
               \alternative { {\barHbassAltA} {\barHbassAltB} }


\score {
  \new PianoStaff <<
    \context Staff = "upper" {
      #(set-accidental-style 'modern-cautionary)
      { \sectionAtreble \sectionBtreble}
    }
    \context Staff = "lower" {
      #(set-accidental-style 'modern-cautionary)
      { \sectionAbass \sectionBbass}
    }
  >>
}
