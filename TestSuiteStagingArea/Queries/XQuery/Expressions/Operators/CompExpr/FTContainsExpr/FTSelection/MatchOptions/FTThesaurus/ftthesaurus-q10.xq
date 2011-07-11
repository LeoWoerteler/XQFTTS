(: This query violates the 'from to' syntax of FTLiteralRange. :)

for $i in 1, $j in 3 return
    "Blame the users." contains text "people"
        using thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
        relationship "NT" from $i to $j levels
