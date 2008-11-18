(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-context//books/book[./content ftcontains "web site components" with
thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
relationship "NT" at most 2 levels]