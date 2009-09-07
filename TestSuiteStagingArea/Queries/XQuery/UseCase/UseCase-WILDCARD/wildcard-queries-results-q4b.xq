(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains "us.+ testing"
using wildcards]/concat(@number, ", ", metadata/title)