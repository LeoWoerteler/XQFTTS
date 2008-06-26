(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book 
let $cont := $book//content[. ftcontains 
   (("résumés" diacritics sensitive) ftor "drafts" 
   ftor "correspondence") not in "book drafts"]
where count($cont)>0
return $book



