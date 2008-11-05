(: 3 Full-Text Selections: Test cardinality selections  :)
(:    FTTimes ::= "occurs" FTRange "times"              :)
(:   	FTRange ::= ... | ("at most" AdditiveExpr) | ...  :)
(: Presumes that $input-context is the FT spec itself   :)
(: Written by Jim on 2008-11-04                         :)

(: insert-start :)
declare variable $input-context external;
declare variable $occurences := 1;
(: insert-end :)

<paragraphs>
{ for $p in $input-context/div2[@id="fttimes"]//p
where $p ftcontains "cardinality" occurs at most $occurrences+$occurrences times 
return $p }
</paragraphs>(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)