{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.CreateListener
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a listener for the specified Application Load Balancer, Network Load Balancer. or Gateway Load Balancer.
--
-- For more information, see the following:
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html Listeners for your Application Load Balancers> 
--
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html Listeners for your Network Load Balancers> 
--
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-listeners.html Listeners for your Gateway Load Balancers> 
--
--
-- This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.
module Network.AWS.ELBv2.CreateListener
    (
    -- * Creating a request
      CreateListener (..)
    , mkCreateListener
    -- ** Request lenses
    , clLoadBalancerArn
    , clDefaultActions
    , clAlpnPolicy
    , clCertificates
    , clPort
    , clProtocol
    , clSslPolicy
    , clTags

    -- * Destructuring the response
    , CreateListenerResponse (..)
    , mkCreateListenerResponse
    -- ** Response lenses
    , clrrsListeners
    , clrrsResponseStatus
    ) where

import qualified Network.AWS.ELBv2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateListener' smart constructor.
data CreateListener = CreateListener'
  { loadBalancerArn :: Types.LoadBalancerArn
    -- ^ The Amazon Resource Name (ARN) of the load balancer.
  , defaultActions :: [Types.Action]
    -- ^ The actions for the default rule.
  , alpnPolicy :: Core.Maybe [Types.AlpnPolicyValue]
    -- ^ [TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You can specify one policy name. The following are the possible values:
--
--
--     * @HTTP1Only@ 
--
--
--     * @HTTP2Only@ 
--
--
--     * @HTTP2Optional@ 
--
--
--     * @HTTP2Preferred@ 
--
--
--     * @None@ 
--
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies ALPN policies> in the /Network Load Balancers Guide/ .
  , certificates :: Core.Maybe [Types.Certificate]
    -- ^ [HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set @CertificateArn@ to the certificate ARN but do not set @IsDefault@ .
  , port :: Core.Maybe Core.Natural
    -- ^ The port on which the load balancer is listening. You cannot specify a port for a Gateway Load Balancer.
  , protocol :: Core.Maybe Types.ProtocolEnum
    -- ^ The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
  , sslPolicy :: Core.Maybe Types.SslPolicyName
    -- ^ [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported.
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies> in the /Application Load Balancers Guide/ and <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies> in the /Network Load Balancers Guide/ .
  , tags :: Core.Maybe (Core.NonEmpty Types.Tag)
    -- ^ The tags to assign to the listener.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateListener' value with any optional fields omitted.
mkCreateListener
    :: Types.LoadBalancerArn -- ^ 'loadBalancerArn'
    -> CreateListener
mkCreateListener loadBalancerArn
  = CreateListener'{loadBalancerArn, defaultActions = Core.mempty,
                    alpnPolicy = Core.Nothing, certificates = Core.Nothing,
                    port = Core.Nothing, protocol = Core.Nothing,
                    sslPolicy = Core.Nothing, tags = Core.Nothing}

-- | The Amazon Resource Name (ARN) of the load balancer.
--
-- /Note:/ Consider using 'loadBalancerArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clLoadBalancerArn :: Lens.Lens' CreateListener Types.LoadBalancerArn
clLoadBalancerArn = Lens.field @"loadBalancerArn"
{-# INLINEABLE clLoadBalancerArn #-}
{-# DEPRECATED loadBalancerArn "Use generic-lens or generic-optics with 'loadBalancerArn' instead"  #-}

-- | The actions for the default rule.
--
-- /Note:/ Consider using 'defaultActions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clDefaultActions :: Lens.Lens' CreateListener [Types.Action]
clDefaultActions = Lens.field @"defaultActions"
{-# INLINEABLE clDefaultActions #-}
{-# DEPRECATED defaultActions "Use generic-lens or generic-optics with 'defaultActions' instead"  #-}

-- | [TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You can specify one policy name. The following are the possible values:
--
--
--     * @HTTP1Only@ 
--
--
--     * @HTTP2Only@ 
--
--
--     * @HTTP2Optional@ 
--
--
--     * @HTTP2Preferred@ 
--
--
--     * @None@ 
--
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies ALPN policies> in the /Network Load Balancers Guide/ .
--
-- /Note:/ Consider using 'alpnPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clAlpnPolicy :: Lens.Lens' CreateListener (Core.Maybe [Types.AlpnPolicyValue])
clAlpnPolicy = Lens.field @"alpnPolicy"
{-# INLINEABLE clAlpnPolicy #-}
{-# DEPRECATED alpnPolicy "Use generic-lens or generic-optics with 'alpnPolicy' instead"  #-}

-- | [HTTPS and TLS listeners] The default certificate for the listener. You must provide exactly one certificate. Set @CertificateArn@ to the certificate ARN but do not set @IsDefault@ .
--
-- /Note:/ Consider using 'certificates' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clCertificates :: Lens.Lens' CreateListener (Core.Maybe [Types.Certificate])
clCertificates = Lens.field @"certificates"
{-# INLINEABLE clCertificates #-}
{-# DEPRECATED certificates "Use generic-lens or generic-optics with 'certificates' instead"  #-}

-- | The port on which the load balancer is listening. You cannot specify a port for a Gateway Load Balancer.
--
-- /Note:/ Consider using 'port' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clPort :: Lens.Lens' CreateListener (Core.Maybe Core.Natural)
clPort = Lens.field @"port"
{-# INLINEABLE clPort #-}
{-# DEPRECATED port "Use generic-lens or generic-optics with 'port' instead"  #-}

-- | The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
--
-- /Note:/ Consider using 'protocol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clProtocol :: Lens.Lens' CreateListener (Core.Maybe Types.ProtocolEnum)
clProtocol = Lens.field @"protocol"
{-# INLINEABLE clProtocol #-}
{-# DEPRECATED protocol "Use generic-lens or generic-optics with 'protocol' instead"  #-}

-- | [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported.
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies> in the /Application Load Balancers Guide/ and <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies> in the /Network Load Balancers Guide/ .
--
-- /Note:/ Consider using 'sslPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clSslPolicy :: Lens.Lens' CreateListener (Core.Maybe Types.SslPolicyName)
clSslPolicy = Lens.field @"sslPolicy"
{-# INLINEABLE clSslPolicy #-}
{-# DEPRECATED sslPolicy "Use generic-lens or generic-optics with 'sslPolicy' instead"  #-}

-- | The tags to assign to the listener.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clTags :: Lens.Lens' CreateListener (Core.Maybe (Core.NonEmpty Types.Tag))
clTags = Lens.field @"tags"
{-# INLINEABLE clTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.ToQuery CreateListener where
        toQuery CreateListener{..}
          = Core.toQueryPair "Action" ("CreateListener" :: Core.Text) Core.<>
              Core.toQueryPair "Version" ("2015-12-01" :: Core.Text)
              Core.<> Core.toQueryPair "LoadBalancerArn" loadBalancerArn
              Core.<>
              Core.toQueryPair "DefaultActions"
                (Core.toQueryList "member" defaultActions)
              Core.<>
              Core.toQueryPair "AlpnPolicy"
                (Core.maybe Core.mempty (Core.toQueryList "member") alpnPolicy)
              Core.<>
              Core.toQueryPair "Certificates"
                (Core.maybe Core.mempty (Core.toQueryList "member") certificates)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Port") port
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "Protocol") protocol
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SslPolicy") sslPolicy
              Core.<>
              Core.toQueryPair "Tags"
                (Core.maybe Core.mempty (Core.toQueryList "member") tags)

instance Core.ToHeaders CreateListener where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest CreateListener where
        type Rs CreateListener = CreateListenerResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper "CreateListenerResult"
              (\ s h x ->
                 CreateListenerResponse' Core.<$>
                   (x Core..@? "Listeners" Core..<@> Core.parseXMLList "member")
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateListenerResponse' smart constructor.
data CreateListenerResponse = CreateListenerResponse'
  { listeners :: Core.Maybe [Types.Listener]
    -- ^ Information about the listener.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateListenerResponse' value with any optional fields omitted.
mkCreateListenerResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateListenerResponse
mkCreateListenerResponse responseStatus
  = CreateListenerResponse'{listeners = Core.Nothing, responseStatus}

-- | Information about the listener.
--
-- /Note:/ Consider using 'listeners' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clrrsListeners :: Lens.Lens' CreateListenerResponse (Core.Maybe [Types.Listener])
clrrsListeners = Lens.field @"listeners"
{-# INLINEABLE clrrsListeners #-}
{-# DEPRECATED listeners "Use generic-lens or generic-optics with 'listeners' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
clrrsResponseStatus :: Lens.Lens' CreateListenerResponse Core.Int
clrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE clrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
