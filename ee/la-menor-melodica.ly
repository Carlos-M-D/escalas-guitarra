% Segundo curso EE. EE.
\version "2.25.20"
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
  }\relative
  { \omit Staff.BarLine
a b c d e fis gis a g! f! e d c b a  \revert Staff.BarLine.stencil \bar "|." }
}
