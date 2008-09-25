(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[.//publicationInfo/place/text() 
   = "Washington, D.C."]
let $intro := $book/content/introduction
where $intro ftcontains "résumés" diacritics sensitive
   ftand "drafts" ftand "correspondence"
return &lt;book number="{$book/@number}"&gt; 
           {$book/metadata/title, $intro}
           &lt;/book&gt;