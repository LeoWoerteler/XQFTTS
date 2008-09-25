(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let $title := $book/metadata/title
let $in := $book/content/introduction
let $pin := $book/content/part/introduction
where $title ftcontains "usability" and $in ftcontains 
   "satisfaction" and $pin ftcontains "identify 
   problems"
return &lt;book number="{$book/@number}"&gt; 
          {$title} 
          if (count($book/metadata/author) &gt; 0)
          then {$book/metadata/author, $in, $pin}
          else {$book/metadata/publicationInfo/publisher, $in, $pin}
       &lt;/book&gt;