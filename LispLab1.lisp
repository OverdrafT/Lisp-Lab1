(defun make-my-list ()
  (cons 'a
        (list 7
              nil
              (list 'b 'c))))

;; Пункт 1
(set 'my-list (make-my-list))

;; Пункт 2
(car my-list)
;; Результат: A

;; Пункт 3
(cdr my-list)

;; Пункт 4
(third my-list)

;; Пункт 5
(car (last my-list))

;; Пункт 6
(atom (car my-list))
(listp (fourth my-list))

;; Пункт 7
(numberp (second my-list))
(null (third my-list))
(consp (fourth my-list))

;; Пункт 8
(append my-list (fourth my-list))

;; Оголошення функції для побудови списку за варіантом 2
(defun make-variant-list ()
  (let ((sub1 (list 'a 2 1)))
    (list sub1 'b (cdr sub1) 'c)))

(set 'make-variant-list (make-variant-list))
