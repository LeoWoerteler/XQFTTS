(: 3.2 Search Tokens and Phrases: Example #5 :)

(: insert-start :)
(: insert-end :)

for $book in /books/book[.//author ftcontains "Marigold"] 
let score $score := $book/title/@shortTitle ftcontains "Web Site Usability" 
where $score > 0.8 
order by $score descending
return data($book/@number)(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)