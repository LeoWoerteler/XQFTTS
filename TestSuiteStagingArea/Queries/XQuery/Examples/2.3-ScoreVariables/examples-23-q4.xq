(: 2.3 Scoring: Example 4. Exact order depend on scoring. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $b score $score1 in $input-context//book[title contains text "software"]
    order by $score1 descending
return
    for $p score $score2 in $b/para[. contains text "usability"]
       order by $score2 descending
    return $p
