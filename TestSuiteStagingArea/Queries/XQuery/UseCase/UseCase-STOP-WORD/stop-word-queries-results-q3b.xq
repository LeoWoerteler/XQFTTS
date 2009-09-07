(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains "not been 
approved" using stop words at 
"http://bstore1.example.com/StopWordList.xml" 
except ("not")]/(metadata/title, content)