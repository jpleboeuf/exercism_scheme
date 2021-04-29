(import (rnrs))

(define (div? a b)
  (zero? (modulo a b))
  )

(define (!div? a b)
  (not (div? a b))
  )

(define (leap-year? year)
  (and
   (div? year 4)
   (or
    (!div? year 100)
    (div? year 400)
    )
   )
  )

