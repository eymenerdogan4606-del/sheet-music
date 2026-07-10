\header {
  title = "Symphony no.2"
    subtitle = "Piyano İçin Düzenleme / Çeviri"
      composer = "Eymen ERDOĞAN"
        tagline = "MuseScore Studio & LilyPond ile oluşturulmuştur."
        }

        global = {
          \key c \major
            \time 4/4
              \tempo "Andante" 4 = 80
              }

              rightHand = \relative c' {
                \global
                  % 1. Kısım / Giriş Teması
                    <e g c>4\f r8 <d f b>8 <c e a>2 |
                      <f a d>4.\> <e g c>8\! <d f b>2 |
                        e8(\p g c e d c b a) |
                          g4 <b, d g> <c e g c> r |
                            
                              % Gelişme ve Senfonik Geçişler (Piyano Uyarlaması)
                                \repeat volta 2 {
                                    c'4. d8 e( f g a) |
                                        g4. e8 c2 |
                                            d4. e8 f( e d c) |
                                                b2 <g b d>4 r |
                                                  }
                                                    
                                                      % Örnek Ölçüler ve Dokular
                                                        e'8\f d c b a g f e |
                                                          <f a d>4 <g b e> <a c f> <b d g> |
                                                            <c e g c>1\ff \bar "|."
                                                            }

                                                            leftHand = \relative c {
                                                              \global
                                                                \clef bass
                                                                  c2 a |
                                                                    d, g |
                                                                      c,1 |
                                                                        g4 g' c, r |
                                                                          
                                                                            \repeat volta 2 {
                                                                                c2 c' |
                                                                                    e, c' |
                                                                                        f, f, |
                                                                                            g g' |
                                                                                              }
                                                                                                
                                                                                                  c,1 |
                                                                                                    d2 f |
                                                                                                      c1 \bar "|."
                                                                                                      }

                                                                                                      \score {
                                                                                                        \new PianoStaff <<
                                                                                                            \set PianoStaff.instrumentName = #"Piyano"
                                                                                                                \new Staff = "right" \rightHand
                                                                                                                    \new Staff = "left" \leftHand
                                                                                                                      >>
                                                                                                                        \layout {
                                                                                                                            \context {
                                                                                                                                  \Score
                                                                                                                                        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
                                                                                                                                            }
                                                                                                                                              }
                                                                                                                                                \midi { }
                                                                                                                                                }












