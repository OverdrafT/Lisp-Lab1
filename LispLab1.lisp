;; Визначення функції для створення списку (усього 9 елементів разом із підсписками)
(defun make-my-list ()
  (cons 'a
        (list 7
              nil
              (list 'b 'c))))

;; Пункт 1: Зберігаємо створений список у змінну my-list
(set 'my-list (make-my-list))

;; Пункт 2: Отримання голови списку
(car my-list)
;; Результат: A

;; Пункт 3: Отримання хвоста списку
(cdr my-list)
;; Результат: (7 NIL (B C))

;; Пункт 4: Отримання третього елемента списку
(third my-list)
;; Результат: NIL

;; Пункт 5: Отримання останнього елемента списку
(car (last my-list))
;; Результат: (B C)

;; Пункт 6: Використання предикатів ATOM та LISTP
(atom (car my-list))
;; Результат: T
(listp (fourth my-list))
;; Результат: T

;; Пункт 7: Інші предикати (CONSP, NUMBERP, NULL)
(numberp (second my-list))
;; Результат: T
(null (third my-list))
;; Результат: T
(consp (fourth my-list))
;; Результат: T

;; Пункт 8: Об'єднання створеного списку з його непустим підсписком за допомогою APPEND
(append my-list (fourth my-list))
;; Результат: (A 7 NIL (B C) B C)

;; Оголошення функції для побудови списку за варіантом 2
(defun make-variant-list ()
  (let ((sub1 (list 'a 2 1)))
    (list (car sub1) 'b (cdr sub1) 'c)))

(make-variant-list)