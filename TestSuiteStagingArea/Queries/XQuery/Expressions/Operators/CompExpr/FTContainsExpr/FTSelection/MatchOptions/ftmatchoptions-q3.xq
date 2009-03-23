(: Note to maintainers: This query has an intentional syntax error. Do not "fix" it. :)
(: "with stemming without stemming" causes FTST0019 :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $book in $input-context/books/book
let $cont := $book//content
where $cont ftcontains "test" with stemming without stemming
return $book
