(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
where $book ftcontains "mouse"
return $book

