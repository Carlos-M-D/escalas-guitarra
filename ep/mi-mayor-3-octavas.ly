% Cuarto curso EE. PP.
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
  { \omit Staff.BarLine \key e \major
e fs-2 gs-4 a-0  b-2\6 cs-4 ds-1\4
e-2 fs-4 gs-1\3 a-2 b-4 cs-1\3 ds-3
e-1 fs-3 gs-1\2 a-2 b-4 cs-1\1 ds-3 e-4
  \revert Staff.BarLine.stencil \bar "|." }
}
