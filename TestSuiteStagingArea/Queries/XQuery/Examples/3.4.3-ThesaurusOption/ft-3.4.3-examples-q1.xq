(: insert-start :)
declare variable $input-context external;
(: insert-end :)

$input-contex//book/content ftcontains "duties" with
thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
relationship "UF"
