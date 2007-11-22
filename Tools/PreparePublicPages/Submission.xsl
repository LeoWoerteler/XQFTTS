<?xml version="1.0"?> 

<!--                                                                         -->
<!-- Generate a report for one or more XQTS result reports                   -->
<!--                                                                         -->
<!-- Author: Andrew Eisenberg                                                -->
<!--                                                                         -->
<!-- History:                                                                -->
<!--                                                                         -->
<!--   2005-06-29    Initial release                                         -->
<!--                                                                         -->


<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="1.0"
   xmlns:xqts="http://www.w3.org/2005/02/query-test-XQTSCatalog">
   
   <xsl:strip-space elements="*"/>
   
   <xsl:output
      method="xml"
      indent="yes"
      />
   
   
   
   
   
   
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- /                                                                    -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   
   <xsl:template match="/">
      <xsl:apply-templates/>      
   </xsl:template>
      
   
   
   
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- xqts:test-case                                                       -->
   <!--                                                                      -->
   <!-- Generate nothing.                                                    -->
   <!--                                                                      -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   
   <xsl:template match="xqts:test-case">
   </xsl:template>
   
   
   
   
   
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- copy all elements                                                    -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   
   <xsl:template match="*">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   
   
   
   
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- copy all attributes                                                  -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   
   <xsl:template match="@*">
      <xsl:copy>
      </xsl:copy>
   </xsl:template>
   
   
   

   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   <!-- copy all processing instructions                                     -->
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
   
   <xsl:template match="processing-instruction()">
      <xsl:copy-of select="."/>
   </xsl:template>



</xsl:stylesheet>

