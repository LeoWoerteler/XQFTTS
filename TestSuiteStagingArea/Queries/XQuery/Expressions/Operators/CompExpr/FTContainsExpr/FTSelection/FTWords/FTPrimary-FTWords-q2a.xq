(: 3.2 FTPrimary ::= FTWordsValue FTAnyAllOption?    :)
(:     FTAnyAllOption ::= ( "any" "word"? | ...      :)
(:   Test to ensure that the syntax is recognized    :)
(:   Test assumes $input-context identifies FT spec  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<paragraphs>
{ for $p in $input-context//div2[id="ftwords"]/p
where $p ftcontains "FTAnyAllOption literal" any word
return $p }
</paragraphs>(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)