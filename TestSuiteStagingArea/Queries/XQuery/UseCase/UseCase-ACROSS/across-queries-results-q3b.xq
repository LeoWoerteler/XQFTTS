(: insert-start :)
define variable $input-context external
(: insert-end :)

$input-context/books/book[count(./content ftcontains "tests")>0]
