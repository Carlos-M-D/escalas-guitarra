% Tercer curso EE. PP.
\version "2.23.8"
\language "english"
\paper {
page-breaking = #ly:one-page-breaking
% line-width = 4\in %experiment with amount
ragged-right = ##f
indent = 0
}
\header {
  tagline = ""  % removed
}
\layout {
    #(layout-set-staff-size 40)
    \context {
    \Score
    \omit BarNumber}
    }
\score{
  \new Staff
  \with {
    \remove "Bar_number_engraver"
    \omit TimeSignature
    \omit Stem
    % or:
    %\remove "Time_signature_engraver"
  } \relative
  { \omit Staff.BarLine \key bf \major
bf-2\6 c-4 d-1\5 ef-2 f-4 g-1\4 a-3
bf-4 c-1\3 d-3 ef-4 f-2\2 g-4 a-1\1 bf-2
  \revert Staff.BarLine.stencil \bar "|." }
}
