(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book
let score $s := ($book/metadata/title ftcontains 
   "usability" or $book/content ftcontains "usability") 
where $s &gt; 0  
order by $s descending 
return &lt;book number="{$book/@number}"&gt; 
          {$book/metadata/title},  &lt;score&gt;{$s}&lt;/score&gt; 
       &lt;/book&gt;