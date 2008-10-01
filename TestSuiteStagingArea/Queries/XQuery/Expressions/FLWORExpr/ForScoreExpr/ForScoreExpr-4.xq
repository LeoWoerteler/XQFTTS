(: ForScoreExpr-4: Basic syntax: with as clause and position variable :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $t as xs:string at $i score $s 
in $input-context//metadata/title[. ftcontains "Usability"]
return $t
