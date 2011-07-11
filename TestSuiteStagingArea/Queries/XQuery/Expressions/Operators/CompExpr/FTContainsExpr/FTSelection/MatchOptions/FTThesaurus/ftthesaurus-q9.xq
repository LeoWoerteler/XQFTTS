(: This query violates the 'at most' syntax of FTLiteralRange. :)

for $i in 2 return
    "celestial navigation" contains text "web site components"
        using thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
        relationship "NT" at most $i levels
