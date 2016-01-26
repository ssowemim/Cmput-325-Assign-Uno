;ASSIGNMENT ONE
;NAME: SONOLA SOWEMIMO
;CLASS: CMPUT 325
;ID: 1293430

;QUESTION ONE
; The function returns T if argument X is a member of the argument list Y and NIL otherwise. This should
; also test for lists being members of lists. Both the argument X and the list Y may be NIL or lists containing NIL.
;	Examples: 
;	(xmember '1 '(1)) --> T
;	(xmember '1 '( (1) 2 3)) --> NIL
;	(xmember '(1) '((1) 2 3)) --> NIL
;	(xmember nil nil) --> NIL

	(defun xmember (X Y)
		(cond
			((null Y) nil)
			((equal X (car Y)) T)
			(t(xmember X (cdr Y)))
		)
	)

;QUESTION TWO
;Need documentation about each function
	(defun flatten (X)
		(cond 
			((null X) nil)
			((atom (car x))
					(append
					(list (car x))
					(flatten (cdr x)))
			)
			(t(append 
				(flatten (car x)) 
				(flatten (cdr x)))
			)
		)
	)

;QUESTION THREE
;Need documentation about each function
	(defun mix (L1 L2)
		(cond
			((null L2) L1)
			((null L1) L2)
			(t(append 
				(list (car L1) (car L2)) 
				(mix (cdr L1) (cdr L2))
				)
			)
		)
	)

;QUESTION FOUR
;Need documentation about each function
	(defun split (L)
		(cond 
			((null L) '(nil nil))
			((null (cdr L)) 
				(cons 
					(cons 
						(car L)
						(car (split (cddr L)))
					)
					(list (cdr L))
				)
			)
			(t(cons 
				(cons 
					(car L)
					(car (split (cddr L)))
				)
				(list 
					(cons
						(car (cdr L)
							(car (cdr (split (cddr L))))
						)
					)
				)
			)
		)

	)

;QUESTION FIVE
;Need documentation about each function


;QUESTION SIX
;Need documentation about each function
	(defun subsetsum (L S)
		(cond 
			((null L) nil)
			((> (car L) S)
				(subsetsum (cdr L) S)
			)
			((= (car L) S)
				;cons (car L) ()))
				(cons (car L))
			)
			((< (car L) S)
				(if (null (subsetsum (cdr L) (- s (car L))))
					(subsetsum (cdr L) S)
					(cons (car L) (subsetsum (cdr L) (- S (car L))))
				)

			)
		)
	)