require 'savon'

class OpcXml
  def initialize(endpoint: nil)
    @client = Savon.client(endpoint: endpoint, namespace: 'http://opcfoundation.org/webservices/XMLDA/1.0/', strip_namespaces: true)
  end

  def browse
    browse_str = %{
      <?xml verion="1.0" encoding="UTF-8" ?>
      <soapenv:Envelope
        xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <soapenv:Body>
          <Browse ReturnValuesOnReply="true" SubscriptionPingRate="30000" xmlns="http://opcfoundation.org/webservices/XMLDA/1.0/">
            <Options LocaleID="en" ReturnDiagnosticInfo="false"
            ReturnErroText="false"  ReturnItemName="true"
            ReturnItemPath="true" ReturnItemTime="false" />
          </Browse>
        </soapenv:Body>
      </soapenv:Envelope>
    }
    @client.call(:authenticate, xml: browse_str)    
  end
end
