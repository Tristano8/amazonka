{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.AssociateSubnetCidrBlock
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.
module Network.AWS.EC2.AssociateSubnetCidrBlock
    (
    -- * Creating a request
      AssociateSubnetCidrBlock (..)
    , mkAssociateSubnetCidrBlock
    -- ** Request lenses
    , ascbIpv6CidrBlock
    , ascbSubnetId

    -- * Destructuring the response
    , AssociateSubnetCidrBlockResponse (..)
    , mkAssociateSubnetCidrBlockResponse
    -- ** Response lenses
    , ascbrrsIpv6CidrBlockAssociation
    , ascbrrsSubnetId
    , ascbrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAssociateSubnetCidrBlock' smart constructor.
data AssociateSubnetCidrBlock = AssociateSubnetCidrBlock'
  { ipv6CidrBlock :: Core.Text
    -- ^ The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.
  , subnetId :: Types.SubnetId
    -- ^ The ID of your subnet.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateSubnetCidrBlock' value with any optional fields omitted.
mkAssociateSubnetCidrBlock
    :: Core.Text -- ^ 'ipv6CidrBlock'
    -> Types.SubnetId -- ^ 'subnetId'
    -> AssociateSubnetCidrBlock
mkAssociateSubnetCidrBlock ipv6CidrBlock subnetId
  = AssociateSubnetCidrBlock'{ipv6CidrBlock, subnetId}

-- | The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.
--
-- /Note:/ Consider using 'ipv6CidrBlock' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascbIpv6CidrBlock :: Lens.Lens' AssociateSubnetCidrBlock Core.Text
ascbIpv6CidrBlock = Lens.field @"ipv6CidrBlock"
{-# INLINEABLE ascbIpv6CidrBlock #-}
{-# DEPRECATED ipv6CidrBlock "Use generic-lens or generic-optics with 'ipv6CidrBlock' instead"  #-}

-- | The ID of your subnet.
--
-- /Note:/ Consider using 'subnetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascbSubnetId :: Lens.Lens' AssociateSubnetCidrBlock Types.SubnetId
ascbSubnetId = Lens.field @"subnetId"
{-# INLINEABLE ascbSubnetId #-}
{-# DEPRECATED subnetId "Use generic-lens or generic-optics with 'subnetId' instead"  #-}

instance Core.ToQuery AssociateSubnetCidrBlock where
        toQuery AssociateSubnetCidrBlock{..}
          = Core.toQueryPair "Action"
              ("AssociateSubnetCidrBlock" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.toQueryPair "Ipv6CidrBlock" ipv6CidrBlock
              Core.<> Core.toQueryPair "SubnetId" subnetId

instance Core.ToHeaders AssociateSubnetCidrBlock where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest AssociateSubnetCidrBlock where
        type Rs AssociateSubnetCidrBlock = AssociateSubnetCidrBlockResponse
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
          = Response.receiveXML
              (\ s h x ->
                 AssociateSubnetCidrBlockResponse' Core.<$>
                   (x Core..@? "ipv6CidrBlockAssociation") Core.<*>
                     x Core..@? "subnetId"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkAssociateSubnetCidrBlockResponse' smart constructor.
data AssociateSubnetCidrBlockResponse = AssociateSubnetCidrBlockResponse'
  { ipv6CidrBlockAssociation :: Core.Maybe Types.SubnetIpv6CidrBlockAssociation
    -- ^ Information about the IPv6 CIDR block association.
  , subnetId :: Core.Maybe Core.Text
    -- ^ The ID of the subnet.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AssociateSubnetCidrBlockResponse' value with any optional fields omitted.
mkAssociateSubnetCidrBlockResponse
    :: Core.Int -- ^ 'responseStatus'
    -> AssociateSubnetCidrBlockResponse
mkAssociateSubnetCidrBlockResponse responseStatus
  = AssociateSubnetCidrBlockResponse'{ipv6CidrBlockAssociation =
                                        Core.Nothing,
                                      subnetId = Core.Nothing, responseStatus}

-- | Information about the IPv6 CIDR block association.
--
-- /Note:/ Consider using 'ipv6CidrBlockAssociation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascbrrsIpv6CidrBlockAssociation :: Lens.Lens' AssociateSubnetCidrBlockResponse (Core.Maybe Types.SubnetIpv6CidrBlockAssociation)
ascbrrsIpv6CidrBlockAssociation = Lens.field @"ipv6CidrBlockAssociation"
{-# INLINEABLE ascbrrsIpv6CidrBlockAssociation #-}
{-# DEPRECATED ipv6CidrBlockAssociation "Use generic-lens or generic-optics with 'ipv6CidrBlockAssociation' instead"  #-}

-- | The ID of the subnet.
--
-- /Note:/ Consider using 'subnetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascbrrsSubnetId :: Lens.Lens' AssociateSubnetCidrBlockResponse (Core.Maybe Core.Text)
ascbrrsSubnetId = Lens.field @"subnetId"
{-# INLINEABLE ascbrrsSubnetId #-}
{-# DEPRECATED subnetId "Use generic-lens or generic-optics with 'subnetId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ascbrrsResponseStatus :: Lens.Lens' AssociateSubnetCidrBlockResponse Core.Int
ascbrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ascbrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
