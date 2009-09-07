(: insert-start :)
declare variable $input-context external;
(: insert-end :)


$input-context/books/book[content ftcontains "résumé.?" 
using wildcards using diacritics sensitive]