<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../AuctionBidDBService.wsdl"/>
      <rootElement name="AuctionBidsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/AuctionBidDBService"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/wsdl/abstractAuctionBids.wsdl"/>
      <rootElement name="CurrentHighestBid" namespace="http://xmlns.qualogy.com/marQtplaats"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [SUN NOV 10 13:49:56 CET 2013]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/AuctionBidDBService"
                xmlns:xqcm="http://xmlns.qualogy.com/marQtplaats"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Marqtplaats/AuctionBidService/AuctionBidDBService"
                xmlns:ns0="urn:abstractAuctionBids"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl top plt wsdl tns xsd xqcm soap12 soap mime ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <xqcm:CurrentHighestBid>
      <xsl:if test="/top:AuctionBidsCollection/top:AuctionBids/top:price">
        <xqcm:Bid>
          <xsl:value-of select="/top:AuctionBidsCollection/top:AuctionBids/top:price"/>
        </xqcm:Bid>
      </xsl:if>
      <xsl:if test="/top:AuctionBidsCollection/top:AuctionBids/top:buyer">
        <xqcm:BidderNickname>
          <xsl:value-of select="/top:AuctionBidsCollection/top:AuctionBids/top:buyer"/>
        </xqcm:BidderNickname>
      </xsl:if>
    </xqcm:CurrentHighestBid>
  </xsl:template>
</xsl:stylesheet>
