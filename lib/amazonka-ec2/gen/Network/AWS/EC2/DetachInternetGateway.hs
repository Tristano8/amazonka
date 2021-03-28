{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DetachInternetGateway
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.
module Network.AWS.EC2.DetachInternetGateway
    (
    -- * Creating a request
      DetachInternetGateway (..)
    , mkDetachInternetGateway
    -- ** Request lenses
    , digInternetGatewayId
    , digVpcId
    , digDryRun

    -- * Destructuring the response
    , DetachInternetGatewayResponse (..)
    , mkDetachInternetGatewayResponse
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDetachInternetGateway' smart constructor.
data DetachInternetGateway = DetachInternetGateway'
  { internetGatewayId :: Types.InternetGatewayId
    -- ^ The ID of the internet gateway.
  , vpcId :: Types.VpcId
    -- ^ The ID of the VPC.
  , dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DetachInternetGateway' value with any optional fields omitted.
mkDetachInternetGateway
    :: Types.InternetGatewayId -- ^ 'internetGatewayId'
    -> Types.VpcId -- ^ 'vpcId'
    -> DetachInternetGateway
mkDetachInternetGateway internetGatewayId vpcId
  = DetachInternetGateway'{internetGatewayId, vpcId,
                           dryRun = Core.Nothing}

-- | The ID of the internet gateway.
--
-- /Note:/ Consider using 'internetGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
digInternetGatewayId :: Lens.Lens' DetachInternetGateway Types.InternetGatewayId
digInternetGatewayId = Lens.field @"internetGatewayId"
{-# INLINEABLE digInternetGatewayId #-}
{-# DEPRECATED internetGatewayId "Use generic-lens or generic-optics with 'internetGatewayId' instead"  #-}

-- | The ID of the VPC.
--
-- /Note:/ Consider using 'vpcId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
digVpcId :: Lens.Lens' DetachInternetGateway Types.VpcId
digVpcId = Lens.field @"vpcId"
{-# INLINEABLE digVpcId #-}
{-# DEPRECATED vpcId "Use generic-lens or generic-optics with 'vpcId' instead"  #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
digDryRun :: Lens.Lens' DetachInternetGateway (Core.Maybe Core.Bool)
digDryRun = Lens.field @"dryRun"
{-# INLINEABLE digDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

instance Core.ToQuery DetachInternetGateway where
        toQuery DetachInternetGateway{..}
          = Core.toQueryPair "Action" ("DetachInternetGateway" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.toQueryPair "InternetGatewayId" internetGatewayId
              Core.<> Core.toQueryPair "VpcId" vpcId
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun

instance Core.ToHeaders DetachInternetGateway where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DetachInternetGateway where
        type Rs DetachInternetGateway = DetachInternetGatewayResponse
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
        parseResponse = Response.receiveNull DetachInternetGatewayResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDetachInternetGatewayResponse' smart constructor.
data DetachInternetGatewayResponse = DetachInternetGatewayResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DetachInternetGatewayResponse' value with any optional fields omitted.
mkDetachInternetGatewayResponse
    :: DetachInternetGatewayResponse
mkDetachInternetGatewayResponse = DetachInternetGatewayResponse'
