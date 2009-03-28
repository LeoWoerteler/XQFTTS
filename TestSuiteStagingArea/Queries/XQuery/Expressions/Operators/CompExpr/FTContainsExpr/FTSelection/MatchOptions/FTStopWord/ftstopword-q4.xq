(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context/books/book[.//content ftcontains "supports some users of" with stop words at 
"http://bstore1.example.com/StopWordList1.xml" union "http://bstore1.example.com/StopWordList2.xml"]