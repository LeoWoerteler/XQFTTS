(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[(for $i score $s in .[. ftcontains "usability"]
return $s) &gt; 0.1]/metadata/title