<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/wsdl/abstractParticipants.wsdl"/>
      <rootElement name="EmailAddress" namespace="http://xmlns.qualogy.com/marQtplaats"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/wsdl/abstractLookupParticipantEmail.wsdl"/>
      <rootElement name="EmailAddress" namespace="http://xmlns.qualogy.com/marQtplaats"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [SUN NOV 10 16:38:25 CET 2013]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xqcm="http://xmlns.qualogy.com/marQtplaats"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:tns="urn:medParticipants"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns0="urn:abstractLookupParticipantEmail"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xqcm tns soap12 xsd soap mime ns0 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <xqcm:EmailAddress>
      <xsl:value-of select="/xqcm:EmailAddress"/>
    </xqcm:EmailAddress>
  </xsl:template>
</xsl:stylesheet>
