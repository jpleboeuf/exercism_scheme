(import (rnrs))

(define nucleotideTransTbl (make-eq-hashtable))
(eq-hashtable-set! nucleotideTransTbl #\G #\C)
(eq-hashtable-set! nucleotideTransTbl #\C #\G)
(eq-hashtable-set! nucleotideTransTbl #\T #\A)
(eq-hashtable-set! nucleotideTransTbl #\A #\U)

(define (dna->rna dna)
  (list->string 
   (map (lambda (n) (eq-hashtable-ref nucleotideTransTbl n #\?))
        (string->list dna)
        )
   )
  )

