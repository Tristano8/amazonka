{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.GetHostedZone
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified hosted zone including the four name servers assigned to the hosted zone.
module Network.AWS.Route53.GetHostedZone
    (
    -- * Creating a request
      GetHostedZone (..)
    , mkGetHostedZone
    -- ** Request lenses
    , ghzId

    -- * Destructuring the response
    , GetHostedZoneResponse (..)
    , mkGetHostedZoneResponse
    -- ** Response lenses
    , ghzrrsHostedZone
    , ghzrrsDelegationSet
    , ghzrrsVPCs
    , ghzrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53.Types as Types

-- | A request to get information about a specified hosted zone. 
--
-- /See:/ 'mkGetHostedZone' smart constructor.
newtype GetHostedZone = GetHostedZone'
  { id :: Types.ResourceId
    -- ^ The ID of the hosted zone that you want to get information about.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetHostedZone' value with any optional fields omitted.
mkGetHostedZone
    :: Types.ResourceId -- ^ 'id'
    -> GetHostedZone
mkGetHostedZone id = GetHostedZone'{id}

-- | The ID of the hosted zone that you want to get information about.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghzId :: Lens.Lens' GetHostedZone Types.ResourceId
ghzId = Lens.field @"id"
{-# INLINEABLE ghzId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

instance Core.ToQuery GetHostedZone where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetHostedZone where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest GetHostedZone where
        type Rs GetHostedZone = GetHostedZoneResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath = "/2013-04-01/hostedzone/" Core.<> Core.toText id,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 GetHostedZoneResponse' Core.<$>
                   (x Core..@ "HostedZone") Core.<*> x Core..@? "DelegationSet"
                     Core.<*> x Core..@? "VPCs" Core..<@> Core.parseXMLNonEmpty "VPC"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | A complex type that contain the response to a @GetHostedZone@ request.
--
-- /See:/ 'mkGetHostedZoneResponse' smart constructor.
data GetHostedZoneResponse = GetHostedZoneResponse'
  { hostedZone :: Types.HostedZone
    -- ^ A complex type that contains general information about the specified hosted zone.
  , delegationSet :: Core.Maybe Types.DelegationSet
    -- ^ A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.
  , vPCs :: Core.Maybe (Core.NonEmpty Types.VPC)
    -- ^ A complex type that contains information about the VPCs that are associated with the specified hosted zone.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetHostedZoneResponse' value with any optional fields omitted.
mkGetHostedZoneResponse
    :: Types.HostedZone -- ^ 'hostedZone'
    -> Core.Int -- ^ 'responseStatus'
    -> GetHostedZoneResponse
mkGetHostedZoneResponse hostedZone responseStatus
  = GetHostedZoneResponse'{hostedZone, delegationSet = Core.Nothing,
                           vPCs = Core.Nothing, responseStatus}

-- | A complex type that contains general information about the specified hosted zone.
--
-- /Note:/ Consider using 'hostedZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghzrrsHostedZone :: Lens.Lens' GetHostedZoneResponse Types.HostedZone
ghzrrsHostedZone = Lens.field @"hostedZone"
{-# INLINEABLE ghzrrsHostedZone #-}
{-# DEPRECATED hostedZone "Use generic-lens or generic-optics with 'hostedZone' instead"  #-}

-- | A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.
--
-- /Note:/ Consider using 'delegationSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghzrrsDelegationSet :: Lens.Lens' GetHostedZoneResponse (Core.Maybe Types.DelegationSet)
ghzrrsDelegationSet = Lens.field @"delegationSet"
{-# INLINEABLE ghzrrsDelegationSet #-}
{-# DEPRECATED delegationSet "Use generic-lens or generic-optics with 'delegationSet' instead"  #-}

-- | A complex type that contains information about the VPCs that are associated with the specified hosted zone.
--
-- /Note:/ Consider using 'vPCs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghzrrsVPCs :: Lens.Lens' GetHostedZoneResponse (Core.Maybe (Core.NonEmpty Types.VPC))
ghzrrsVPCs = Lens.field @"vPCs"
{-# INLINEABLE ghzrrsVPCs #-}
{-# DEPRECATED vPCs "Use generic-lens or generic-optics with 'vPCs' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghzrrsResponseStatus :: Lens.Lens' GetHostedZoneResponse Core.Int
ghzrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ghzrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
