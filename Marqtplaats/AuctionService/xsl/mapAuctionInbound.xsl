<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/wsdl/abstractAuction.wsdl"/>
      <rootElement name="AuctionRegistrationRequest" namespace="http://xmlns.qualogy.com/marQtplaats"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../AuctionService.wsdl"/>
      <rootElement name="AuctionCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/AuctionService"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [FRI NOV 08 21:20:55 CET 2013]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xqcm="http://xmlns.qualogy.com/marQtplaats"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:tns="urn:abstractAuction"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/AuctionService"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Marqtplaats/AuctionService/AuctionService"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xqcm soap12 soap mime tns xsd plt wsdl top ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <top:AuctionCollection>
      <top:Auction>
        <top:description>
          <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:Description"/>
        </top:description>
        <xsl:if test="/xqcm:AuctionRegistrationRequest/xqcm:StartingPrice">
          <top:startingPrice>
            <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:StartingPrice"/>
          </top:startingPrice>
        </xsl:if>
        <xsl:if test="/xqcm:AuctionRegistrationRequest/xqcm:MinimumIncrement">
          <top:minIncrement>
            <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:MinimumIncrement"/>
          </top:minIncrement>
        </xsl:if>
        <xsl:if test="/xqcm:AuctionRegistrationRequest/xqcm:InformPrice">
          <top:informPrice>
            <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:InformPrice"/>
          </top:informPrice>
        </xsl:if>
        <top:status>
          <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:AuctionStatus"/>
        </top:status>
        <top:startdate>
          <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:StartDate"/>
        </top:startdate>
        <xsl:if test="/xqcm:AuctionRegistrationRequest/xqcm:EndDate">
          <top:enddate>
            <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:EndDate"/>
          </top:enddate>
        </xsl:if>
        <top:seller>
          <xsl:value-of select="/xqcm:AuctionRegistrationRequest/xqcm:Seller"/>
        </top:seller>
      </top:Auction>
    </top:AuctionCollection>
  </xsl:template>
</xsl:stylesheet>
