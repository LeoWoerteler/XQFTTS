(: insert-start :)
declare variable $input-context external;
(: insert-end :)


for $result at $i in
     for $book score $s in 
        $input-context/books/book[. ftcontains "usability"]
      order by $s descending
      return $book
   where $i <= 2
   return <book number="{$result/@number}"> 
      {$result/metadata/title}</book>