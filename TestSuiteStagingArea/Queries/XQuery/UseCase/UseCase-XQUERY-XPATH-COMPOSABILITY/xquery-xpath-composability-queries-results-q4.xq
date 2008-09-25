(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $book in $input-context/books/book[metadata/title ftcontains "usability"]
return &lt;book number="{$book/@number}"&gt;
           {$book/metadata/title,  
             if ($book/metadata/price &gt; 25)
             then &lt;price&gt;{concat("$", round($book/metadata/price))}&lt;/price&gt;
             else ()
           }   
       &lt;/book&gt;