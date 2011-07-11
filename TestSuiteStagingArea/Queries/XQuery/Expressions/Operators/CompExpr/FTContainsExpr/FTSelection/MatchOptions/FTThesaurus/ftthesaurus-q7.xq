(: This query violates the 'exactly' syntax of FTLiteralRange. :)

for $i in 1 return
    "Tennent's Correspondence Principle" contains text "letters" 
        using thesaurus at "http://bstore1.example.com/UsabilityThesaurus.xml"
        relationship "BT" exactly $i levels
