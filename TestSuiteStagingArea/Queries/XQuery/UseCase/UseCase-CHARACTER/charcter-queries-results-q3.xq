(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book[. ftcontains "AIDS" uppercase]   
where count($book) >0  
return $book




