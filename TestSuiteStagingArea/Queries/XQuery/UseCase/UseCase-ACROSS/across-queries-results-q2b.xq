(: insert-start :)
define variable $input-context external
(: insert-end :)

$input-context/books/book[count(./content/part/introduction ftcontains 
"prototypes")>0]
