(: insert-start :)
declare variable $input-context external;
(: nsert-end :)


for $book in $input-context/books/book
let $cont := $book//content[. ftcontains 
   (("usable" with stemming) ftand "testing" phrase) 
   ftor (("use" with stemming) ftand "testing" phrase)]
where count($cont)>0
return ($book/@number, $book/metadata/title/text(), $cont)
