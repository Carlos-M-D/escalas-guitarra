% Cuarto curso EE. PP.
% Tercer curso EE. PP.
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
    \remove "Bar_number_engraver"
    \omit TimeSignature
    \omit Stem
    % or:
    %\remove "Time_signature_engraver"
  } \relative
  { \omit Staff.BarLine \key ef \major
  ef f g af bf c d
  ef f g af bf c d ef
  \revert Staff.BarLine.stencil \bar "|." }
}
