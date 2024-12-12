% Cuarto curso EE. EE.
\version "2.25.20"
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
    \omit TimeSignature
    \omit Stem
    % or:
    %\remove "Time_signature_engraver"
  }\relative
  { \omit Staff.BarLine
c'-2\5 d-4 e-1\4 f-2 g-4 a-1\3 b-3 c-1 d-3 e-1\2 f-2 g-4 a-1\1 b-3 c-4 \revert Staff.BarLine.stencil \bar "|." }
}
