(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<paragraphs>
{ for $p in $input-context/div2[head = "Match Options"]/p
where $p ftcontains ("options" ftand "matching")
return $p }
</paragraphs>(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)