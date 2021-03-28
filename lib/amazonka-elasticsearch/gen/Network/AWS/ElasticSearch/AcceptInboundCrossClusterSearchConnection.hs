{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.AcceptInboundCrossClusterSearchConnection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the destination domain owner to accept an inbound cross-cluster search connection request.
module Network.AWS.ElasticSearch.AcceptInboundCrossClusterSearchConnection
    (
    -- * Creating a request
      AcceptInboundCrossClusterSearchConnection (..)
    , mkAcceptInboundCrossClusterSearchConnection
    -- ** Request lenses
    , aiccscCrossClusterSearchConnectionId

    -- * Destructuring the response
    , AcceptInboundCrossClusterSearchConnectionResponse (..)
    , mkAcceptInboundCrossClusterSearchConnectionResponse
    -- ** Response lenses
    , aiccscrrsCrossClusterSearchConnection
    , aiccscrrsResponseStatus
    ) where

import qualified Network.AWS.ElasticSearch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @'AcceptInboundCrossClusterSearchConnection' @ operation.
--
-- /See:/ 'mkAcceptInboundCrossClusterSearchConnection' smart constructor.
newtype AcceptInboundCrossClusterSearchConnection = AcceptInboundCrossClusterSearchConnection'
  { crossClusterSearchConnectionId :: Types.CrossClusterSearchConnectionId
    -- ^ The id of the inbound connection that you want to accept.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'AcceptInboundCrossClusterSearchConnection' value with any optional fields omitted.
mkAcceptInboundCrossClusterSearchConnection
    :: Types.CrossClusterSearchConnectionId -- ^ 'crossClusterSearchConnectionId'
    -> AcceptInboundCrossClusterSearchConnection
mkAcceptInboundCrossClusterSearchConnection
  crossClusterSearchConnectionId
  = AcceptInboundCrossClusterSearchConnection'{crossClusterSearchConnectionId}

-- | The id of the inbound connection that you want to accept.
--
-- /Note:/ Consider using 'crossClusterSearchConnectionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiccscCrossClusterSearchConnectionId :: Lens.Lens' AcceptInboundCrossClusterSearchConnection Types.CrossClusterSearchConnectionId
aiccscCrossClusterSearchConnectionId = Lens.field @"crossClusterSearchConnectionId"
{-# INLINEABLE aiccscCrossClusterSearchConnectionId #-}
{-# DEPRECATED crossClusterSearchConnectionId "Use generic-lens or generic-optics with 'crossClusterSearchConnectionId' instead"  #-}

instance Core.ToQuery AcceptInboundCrossClusterSearchConnection
         where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders AcceptInboundCrossClusterSearchConnection
         where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON AcceptInboundCrossClusterSearchConnection
         where
        toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest AcceptInboundCrossClusterSearchConnection
         where
        type Rs AcceptInboundCrossClusterSearchConnection =
             AcceptInboundCrossClusterSearchConnectionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath =
                           "/2015-01-01/es/ccs/inboundConnection/" Core.<>
                             Core.toText crossClusterSearchConnectionId
                             Core.<> "/accept",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 AcceptInboundCrossClusterSearchConnectionResponse' Core.<$>
                   (x Core..:? "CrossClusterSearchConnection") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | The result of a @'AcceptInboundCrossClusterSearchConnection' @ operation. Contains details of accepted inbound connection.
--
-- /See:/ 'mkAcceptInboundCrossClusterSearchConnectionResponse' smart constructor.
data AcceptInboundCrossClusterSearchConnectionResponse = AcceptInboundCrossClusterSearchConnectionResponse'
  { crossClusterSearchConnection :: Core.Maybe Types.InboundCrossClusterSearchConnection
    -- ^ Specifies the @'InboundCrossClusterSearchConnection' @ of accepted inbound connection. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AcceptInboundCrossClusterSearchConnectionResponse' value with any optional fields omitted.
mkAcceptInboundCrossClusterSearchConnectionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> AcceptInboundCrossClusterSearchConnectionResponse
mkAcceptInboundCrossClusterSearchConnectionResponse responseStatus
  = AcceptInboundCrossClusterSearchConnectionResponse'{crossClusterSearchConnection
                                                         = Core.Nothing,
                                                       responseStatus}

-- | Specifies the @'InboundCrossClusterSearchConnection' @ of accepted inbound connection. 
--
-- /Note:/ Consider using 'crossClusterSearchConnection' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiccscrrsCrossClusterSearchConnection :: Lens.Lens' AcceptInboundCrossClusterSearchConnectionResponse (Core.Maybe Types.InboundCrossClusterSearchConnection)
aiccscrrsCrossClusterSearchConnection = Lens.field @"crossClusterSearchConnection"
{-# INLINEABLE aiccscrrsCrossClusterSearchConnection #-}
{-# DEPRECATED crossClusterSearchConnection "Use generic-lens or generic-optics with 'crossClusterSearchConnection' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aiccscrrsResponseStatus :: Lens.Lens' AcceptInboundCrossClusterSearchConnectionResponse Core.Int
aiccscrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE aiccscrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
