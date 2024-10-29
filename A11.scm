(define scores '())  ; Initialize an empty list to store scores

(define (add-score name guesses)
  (set! scores (cons (list name guesses) scores)))

(define (play-again?)
  (display "Play again? (Enter 'q' to quit, any other key to continue): ")
  (let ((continue (read-line)))
    (not (equal? continue "q"))))

(define (play-game)
  (let ((target (+ (random 99) 1))  ; Random target between 1 and 100
        (attempt 1))
    (play-guess target attempt)))

(define (play-guess target attempt)
  (display "Guess a number from 1 to 100:\n")
  (let ((guess (read)))
    (cond
      ((< guess target)
       (display "Higher...Enter guess ")
       (play-guess target (+ attempt 1)))
      ((> guess target)
       (display "Lower...Enter guess ")
       (play-guess target (+ attempt 1)))
      (else
       (display (string-append "Correct! " (number->string attempt) " guesses... Please enter your name:"))
       (let ((name (read-line)))
         (display (string-append "Good game, " name))
         (add-score name attempt))))))

(define (game-loop)
  (if (play-again?)
      (begin
        (play-game)
        (game-loop))
      (begin
        (display "Final scores:\n")
        (display scores))))

; Start the game loop
 (game-loop)
;
