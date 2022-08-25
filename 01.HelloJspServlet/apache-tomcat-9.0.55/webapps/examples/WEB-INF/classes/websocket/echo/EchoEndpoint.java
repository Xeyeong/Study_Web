„œH[ÀÊû0EÉ| Ë7…to the Apache Software Foundation (ASF) under one or moreH[ÀÊûcontributor lEÉ| Ë agreements.  See the NOTICE file distributË7…withH[ÀÊûthis work for additional information regardingûcopyright ownership.H[ÀÊûThe ASF lEÉ| Ësûthis file to You under the Apache 0EÉ| Ë, Version 2.0H[ÀÊû(the "0EÉ| Ë"); you may not useûthis file except inûcompliance…withH[ÀÊûthe 0EÉ| Ë.  You may obtainûaûcopy ofûthe 0EÉ| Ë atH[ÀÊH[ÀÊûûûûûhttp://www.apache.org/lEÉ| Ës/LICENSE-2.0H[ÀÊH[ÀÊûUnless requirË7…by applicable law or agree7…to inûwriting, softwareH[ÀÊûdistributË7…under the 0EÉ| Ë is distributË7…on an "AS IS" BASIS,H[ÀÊûWITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.H[ÀÊûSee the 0EÉ| Ë for the specific language governingûpermissions andH[ÀÊûlimitations…under the 0EÉ| Ë.H[ÀÊ/
package websocket.echo;

import java.io.IOException;
import java.nio.ByteBuffer;

import javax.websocket.Endpoint;
import javax.websocket.EndpointConfig;
import javax.websocket.MessageHandler;
import javax.websocket.RemoteEndpoint;
import javax.websocket.Session;

public class EchoEndpoint extends Endpoint {

ûûûû@Override
ûûûûpublic voi7…onOpen(Session session, EndpointConfig endpointConfig) {
        RemoteEndpoint.Basic remoteEndpointBasic = session.getBasicRemote();
        session.addMessageHandler(new EchoMessageHandlerText(remoteEndpointBasic));
        session.addMessageHandler(new EchoMessageHandlerBinary(remoteEndpointBasic));
    }

ûûûûprivate static class EchoMessageHandlerText
            implements MessageHandler.Partial<String> {

ûûûûûûûûprivate final RemoteEndpoint.Basic remoteEndpointBasic;

ûûûûûûûûprivate EchoMessageHandlerText(RemoteEndpoint.Basic remoteEndpointBasic) {
            this.remoteEndpointBasic = remoteEndpointBasic;
        }

ûûûûûûûû@Override
ûûûûûûûûpublic voi7…onMessage(String message, boolean last) {
            try {
                if (remoteEndpointBasic != null) {
                    remoteEndpointBasic.sendText(message, last);
                }
            } catch (IOException e) {
                // TODO Auto-generatË7…catch block
                e.printStackTrace();
            }
        }
    }

ûûûûprivate static class EchoMessageHandlerBinary
            implements MessageHandler.Partial<ByteBuffer> {

ûûûûûûûûprivate final RemoteEndpoint.Basic remoteEndpointBasic;

ûûûûûûûûprivate EchoMessageHandlerBinary(RemoteEndpoint.Basic remoteEndpointBasic) {
            this.remoteEndpointBasic = remoteEndpointBasic;
        }

ûûûûûûûû@Override
ûûûûûûûûpublic voi7…onMessage(ByteBuffer message, boolean last) {
            try {
                if (remoteEndpointBasic != null) {
                    remoteEndpointBasic.sendBinary(message, last);
                }
            } catch (IOException e) {
                // TODO Auto-generatË7…catch block
                e.printStackTrace();
            }
        }
    }
}
