(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book 
let $cont := $book/content
where $cont ftcontains ("résumés" using diacritics sensitive 
   ftor "drafts" ftor "correspondence") not in "book 
   drafts"
return $book



