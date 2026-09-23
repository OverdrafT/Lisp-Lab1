<p align="center"><b>МОНУ НТУУ КПІ ім. Ігоря Сікорського ФПСПМ СПіСКС</b></p>
<p align="center">
<b>Звіт з лабораторної роботи 1</b><br/>
"Обробка списків з використанням базових функцій"<br/>
з дисципліни "Вступ до функціонального програмування"
</p>
<p align="right"><b>Студент</b>: Щербатюк Євген Олександрович КВ-33</p>
<p align="right"><b>Рік</b>: 2026</p>

## Загальне завдання

1. Створіть список з п'яти елементів, використовуючи функції LIST і CONS . Форма
   створення списку має бути одна — використання SET чи SETQ (або інших
   допоміжних форм) для збереження проміжних значень не допускається. Загальна
   кількість елементів (включно з підсписками та їх елементами) не має
   перевищувати 10-12 шт. (дуже великий список робити не потрібно). Збережіть
   створений список у якусь змінну з SET або SETQ . Список має містити (напряму
   або у підсписках):
   хоча б один символ
   хоча б одне число
   хоча б один не пустий підсписок
   хоча б один пустий підсписок
2. Отримайте голову списку.
3. Отримайте хвіст списку.
4. Отримайте третій елемент списку.
5. Отримайте останній елемент списку.
6. Використайте предикати ATOM та LISTP на різних елементах списку (по 2-3
   приклади для кожної функції).
7. Використайте на елементах списку 2-3 інших предикати з розглянутих у розділі 4
   навчального посібника.
8. Об'єднайте створений список з одним із його непустих підсписків. Для цього
   використайте функцію APPEND.

```lisp
(defun make-my-list ()
  (cons 'a
        (list 7
              nil
              (list 'b 'c))))

;; Пункт 1
(set 'my-list (make-my-list))

;; Пункт 2
CL-USER> (car my-list)
A

;; Пункт 3
CL-USER> (cdr my-list)
(7 NIL (B C))

;; Пункт 4
CL-USER> (third my-list)
NIL

;; Пункт 5
CL-USER> (car (last my-list))
(B C)

;; Пункт 6
CL-USER> (atom (car my-list))
T
CL-USER> (atom (fourth my-list))
NIL
CL-USER> (listp (fourth my-list))
T
CL-USER> (listp (car my-list))
NIL

;; Пункт 7
CL-USER> (numberp (second my-list))
T
CL-USER> (numberp (car my-list))
NIL
CL-USER> (null (third my-list))
T
CL-USER> (consp (fourth my-list))
T

;; Пункт 8
CL-USER> (append my-list (fourth my-list))
(A 7 NIL (B C) B C)

```

## Варіант 2

<p align="center">
<img src="/img/Var2.jpg">
</p>

```lisp
(defun make-variant-list ()
  (let ((sub1 (list 'a 2 1)))
    (list (car sub1) 'b (cdr sub1) 'c)))

(set 'make-variant-list (make-variant-list))

CL-USER> make-variant-list
(A B (2 1) C)
```
