<?xml version="1.0"?> 
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xqts="http://www.w3.org/2005/02/query-test-XQTSCatalog"
   version="1.0">
   
   <xsl:output
      method="xml"
      indent="no"
      />
   
   <xsl:param name="additionalCatalog"/>
   
   <xsl:variable name="addCatDoc" select="document($additionalCatalog)"/>
   
   <xsl:variable name="source" select="/"/>
   
   <xsl:key name='byname' match='xqts:test-group' use='@name'/>
   
   
   
   <!-- Generate the w3 template -->
   
   <xsl:template match="/">
      <xsl:apply-templates/>         
   </xsl:template>
   
   <xsl:template match="@*|node()" mode="simple">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="simple"/>
      </xsl:copy>
   </xsl:template>   
   
   <xsl:template match="@*|node()">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>   
   
   <xsl:template match="xqts:test-group">
      <xsl:variable name="groupName" select="@name"/>
      <xsl:variable name="featureOwner" select="@featureOwner"/>
      
      <!-- copy attributes -->
      
      <xsl:copy>
         <xsl:apply-templates select="@*[name(.) != 'featureOwner']"/>
         
         <xsl:for-each select="$addCatDoc">
            <xsl:variable name="shadowGroup" select="key('byname', $groupName)" />
            <xsl:if test="$featureOwner or $shadowGroup/@featureOwner">
               <xsl:attribute name="featureOwner">
                  <xsl:choose>
                     <xsl:when test="not($shadowGroup/@featureOwner)">
                        <xsl:value-of select="$featureOwner"/>
                     </xsl:when>
                     <xsl:when test="not($featureOwner)">
                        <xsl:value-of select="$shadowGroup/@featureOwner"/>
                     </xsl:when>
                     <xsl:when test="contains($featureOwner, $shadowGroup/@featureOwner)">
                        <xsl:value-of select="$featureOwner"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:value-of select="concat($featureOwner, ' and ', $shadowGroup/@featureOwner)"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:attribute>
            </xsl:if>
         </xsl:for-each>
         
         <!-- copy existing GroupInfo -->
         
         <xsl:apply-templates select="xqts:GroupInfo"/>
         
         <!-- copy existing test cases -->
         
         <xsl:apply-templates select="xqts:test-case"/>
         
         <!-- copy new test cases -->
         
         <xsl:for-each select="$addCatDoc">
            <xsl:variable name="shadowGroup" select="key('byname', $groupName)" />
            <xsl:for-each select="$shadowGroup">
               <xsl:for-each select="xqts:test-case">
                  <xsl:copy>
                     <xsl:apply-templates select="@*|node()"/>
                  </xsl:copy>
               </xsl:for-each>
            </xsl:for-each>
         </xsl:for-each>
         
         <!-- copy existing test groups -->
         
         <xsl:apply-templates select="xqts:test-group"/>
         
         <!-- copy new test groups -->
         
         <xsl:for-each select="$addCatDoc">
            <xsl:variable name="shadowGroup" select="key('byname', $groupName)" />
            <xsl:for-each select="$shadowGroup">
               <xsl:for-each select="xqts:test-group">
                  <xsl:variable name="innerGroupName" select="@name"/>
                  <xsl:if test="not($source//xqts:test-group[@name=$innerGroupName])">
                     <xsl:copy>
                        <xsl:apply-templates select="@*|node()" mode="simple"/>
                     </xsl:copy>
                  </xsl:if>
               </xsl:for-each>
            </xsl:for-each>
         </xsl:for-each>
         
      </xsl:copy>
      
   </xsl:template>   
   
</xsl:stylesheet>
