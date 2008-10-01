(: ForScoreExpr-2: Basic syntax: with as clause :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $t as xs:string score $s
in $input-context//metadata/title[. ftcontains "Usability"]
return $t
