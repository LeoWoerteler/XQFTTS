(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $result at $i in
     for $book score $s in 
        $input-context/books/book[. ftcontains "usability"]
      order by $s descending
      return $book
   where $i &lt;= 2
   return &lt;book number="{$result/@number}"&gt; 
      $result/metadata/title&lt;/book&gt;