(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains "resume.?" 
using wildcards using diacritics insensitive]