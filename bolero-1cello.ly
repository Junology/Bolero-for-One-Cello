\version "2.14.2"

\header {
  title = "Boléro"
  instrument = "for One Cello and Four Players"
  composer = "Joseph-Maurice Ravel"
  arranger = "Jun Yoshida"
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4")
  top-margin = 1\cm
  bottom-margin = 1\cm
  indent = 1.0\cm
  markup-system-spacing = #'((basic-distance . 10) (padding . 7))
  system-system-spacing =
    #'((basic-distance . 7)
       (padding . 3))
  padding = 2\cm
}

global = {
  \key c \major
  \time 3/4
}

contSop = \new Voice \relative c''' {
  \set Staff.instrumentName = "通奏高音"

  \clef treble
  R2. | R2. \bar ":|"

  \mark \markup {\small "ad lib."}
  r8 \times 2/3 {g16^\markup{コマとテールピースの間を弾く} g g} g8 \times 2/3 {g16 g g} g8 g8 |
  g8 \times 2/3 { g16 g g } g8 \times 2/3 { g16 g g } \times 4/6 {g16 g g g g g} |

  \repeat "percent" 10 {
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} g8 g8 |
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} \times 4/6 {g16 g g g g g } |
  } \bar "|:"
  r8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} g8 g8 |
  g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} \times 4/6 {g16 g g g g g}
  \bar ":|"
  \mark \markup {\small "ad lib."}

  \repeat "percent" 4 {
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} g8 g8 |
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} \times 4/6 {g16 g g g g g}
  }

  \repeat "percent" 5 {
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} g8 g8 |
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} \times 4/6 {g16 g g g g g}
  }

  \repeat "percent" 5 {
    ges8 \times 2/3 {ges16 ges ges} ges8 \times 2/3 {ges16 ges ges} ges8 ges8 |
    ges8 \times 2/3 {ges16 ges ges} ges8 \times 2/3 {ges16 ges ges} \times 4/6 {ges16 ges ges ges ges ges}
  }

  \repeat "percent" 3 {
    e8 \times 2/3 {e16 e e} e8 \times 2/3 {e16 e e} e8 e8 |
    e8 \times 2/3 {e16 e e} e8 \times 2/3 {e16 e e} \times 4/6 {e16 e e e e e}
  }
  e8 \times 2/3 {e16 e e} e8 \times 2/3 {e16 e e} e8 e |
  e8 \times 2/3 {e16 e e} e8 \times 2/3 {e16 e e} \times 4/6 { g g g g g g} |
  \repeat "percent" 2 {
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} g8 g8 |
    g8 \times 2/3 {g16 g g} g8 \times 2/3 {g16 g g} \times 4/6 {g16 g g g g g}
  }
  g2.:16^\fermata |
  R2. | \bar "|."
}

One = \new Voice \relative c' {
  \set Staff.instrumentName = "One"

  \clef bass

  R2. | R2. \bar ":|"
  R2.*4 |
  c4. b16 c d c b a |
  c8 c16 a c4. c16 c |
  a g e f g2 |
  r16 f e d e f g a g4 ~ |
  g4 r16 a b a g f e f |
  e d c4 c16 d e8 f |
  d4 g2 |
  R2. |
  d'4.. c16 b a b d |
  d c b8 ~ b16 c b a c b a f ~ |
  f8 f16 f f8 a c16 a b g |
  f8 \times 2/3 { f16 f f } f8 a b16 g a f |
  d8 d16 c d4. d16 d |
  d8 f a16 f g e d8 d16 c |
  d4. d16 c d8 e16 f |
  g2 ~ g16 f e d |
  c4 r r |
  R2. \bar "|:"
  R2. | R2. \bar ":|"

  \override TextSpanner #'font-shape = #'roman
  \override TextSpanner #'(bound-details left text) = "I"
  c'4.\startTextSpan b16 c d c b a |
  c8 c16 a c4. b16 c |
  a g e f g2 |
  r16 \clef tenor f' e d e f g a g4 ~ |
  g4 r16 a b a g f e f |
  e d c4 c16 d e8 f |
  d4 g2 |
  g2. \bar "||"
  \clef "bass" d4..\stopTextSpan c16 b a b c |
  d c b8 ~ b16 c b a c b a f ~ |
  f8 f16 f f8 a c16 a b g |
  f8 f16 f f8 a b16 g a f |
  d8 d16 c d4. d16 d |
  d8 f a16 f g e d8 d16 c |
  d4. d16 d d8 e16 f |
  g2 ~ g16 f e d |
  c4 r r |
  R2. \bar "||"

  bes'4 ~ bes16 a g f bes c a g |
  bes8 a16 g bes4 a16 bes a g |
  g4 ~ g16 f e d e4 ~ |
  e r8 bes' c des |
  r8 \clef "tenor" des'4 des16. des32 des8 des |
  \times 2/3 {des8 des des} des8 c16 bes des8 c16 bes |
  des16 c bes aes g f e 8 ~ e4 ~ |
  e2 r4 |
  d4. e4. |
  d16 e f4 g b8 \bar "||"

  b4\startTextSpan ~ b16 a gis fis gis a b c |
  b4 ~ b16 c d c b a gis fis |
  gis a b8 ~ b16 c d c b a gis fis |
  gis fis e8 ~ e8. e16 d16 c d e |
  e4 e8. f16 f g f e |
  e4 e8. e16 d c d e |
  e4 e8. fis16 fis gis fis e |
  e4 e8. e16 d e d c |
  c4 \clef "bass" ees des |
  r ees des |
  r ees des |
  r ees des\stopTextSpan |
  ees2.:16^\fermata |
  c8 g16 e c g e8 c4 | \bar "|."
}

two = \new Voice \relative c {
  \set Staff.instrumentName = "Two"

  \clef bass

  r4^\markup{\center-column {pizz}} g^\markup{IV} g | r4 g g \bar ":|"

  \unfoldRepeats{ \repeat volta 22 { r4 g g } } \bar "|:"
  R2. |
  R2. \bar ":|"

  \override TextSpanner #'font-shape = #'roman
  \override TextSpanner #'(bound-details left text) = "II"
  e'4.^"arco" \startTextSpan d16 e f e f8 |
  e8 e16 f e4. r8\stopTextSpan |
  r8 g,^"III" b2 |
  r16 f'\startTextSpan e d e f e f e4 ~ |
  e r16 f g f e d e f |
  e f e4 e16 f g8 a |
  f4 b2 |
  b2.\stopTextSpan | \bar "||"

  R2.*10 | \bar "||"
  R2.*10 | \bar "||"

  \repeat unfold 3 {
    <fis, b>8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} q8 q |
    q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} \times 4/6 {q16 q q q q q} |
  }
  q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} q8 q |
  q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} \times 4/6 {q16 q q <c g'> q q} |
  r4 <g' d'> r |
  r <g d'> r |
  r <g d'> r |
  r <g d'> r |
  R2.^\fermata |
  R2. | \bar "|."
}

three = \new Voice \relative c,{
  \set Staff.instrumentName = "Three"

  \clef bass

  c4^\markup{\center-column{pizz.}} \xNote{g'^\markup{IV} g} | c,4 \xNote{g' g} \bar ":|"

  \repeat unfold 22 { c,4 \xNote{g' g} } \bar "|:"
  c,^\markup{IV} g'^\markup{IV} g |
  c,^"simile" g' g \bar ":|"

  \repeat unfold 8 { c, g' g } \bar "||"
  \repeat unfold 10 {c, g' g } \bar "||"
  \repeat unfold 10 {c, g' g } \bar "||"

  \xNotesOn
  \repeat unfold 3 {
    <fis b>8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} q8 q |
    q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} \times 4/6 {q16 q q q q q} |
  }
  q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} q8 q |
  q8 \times 2/3 {q16 q q} q8 \times 2/3 {q16 q q} \times 2/3 {q16 q q} r8 |
  \xNotesOff
  r4 r g^"arco" |
  <c, g'> r g' |
  <c, g'> r g' |
  <c, g'> r g' |
  R2.^\fermata |
  R2. | \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \contSop >>
    \new Staff << \global \One >>
    \new Staff << \global \two >>
    \new Staff << \global \three >>
  >>

  \layout {
  }
}