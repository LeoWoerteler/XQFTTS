(: 3 Full-Text Selections: Test invalid weight value (not numeric value) :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

<paragraphs>
{ for $p score $sc in $input-context/div[@id="id-minimal-conformance"]//p
where $p ftcontains "everything" weight "abcd"
order by $sc
return $p }
</paragraphs>(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)