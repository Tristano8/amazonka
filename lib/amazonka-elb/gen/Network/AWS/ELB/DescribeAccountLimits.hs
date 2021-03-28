{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.DescribeAccountLimits
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current Elastic Load Balancing resource limits for your AWS account.
--
-- For more information, see <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html Limits for Your Classic Load Balancer> in the /Classic Load Balancers Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.ELB.DescribeAccountLimits
    (
    -- * Creating a request
      DescribeAccountLimits (..)
    , mkDescribeAccountLimits
    -- ** Request lenses
    , dalMarker
    , dalPageSize

    -- * Destructuring the response
    , DescribeAccountLimitsResponse (..)
    , mkDescribeAccountLimitsResponse
    -- ** Response lenses
    , dalrrsLimits
    , dalrrsNextMarker
    , dalrrsResponseStatus
    ) where

import qualified Network.AWS.ELB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeAccountLimits' smart constructor.
data DescribeAccountLimits = DescribeAccountLimits'
  { marker :: Core.Maybe Types.Marker
    -- ^ The marker for the next set of results. (You received this marker from a previous call.)
  , pageSize :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to return with this call.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeAccountLimits' value with any optional fields omitted.
mkDescribeAccountLimits
    :: DescribeAccountLimits
mkDescribeAccountLimits
  = DescribeAccountLimits'{marker = Core.Nothing,
                           pageSize = Core.Nothing}

-- | The marker for the next set of results. (You received this marker from a previous call.)
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dalMarker :: Lens.Lens' DescribeAccountLimits (Core.Maybe Types.Marker)
dalMarker = Lens.field @"marker"
{-# INLINEABLE dalMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The maximum number of results to return with this call.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dalPageSize :: Lens.Lens' DescribeAccountLimits (Core.Maybe Core.Natural)
dalPageSize = Lens.field @"pageSize"
{-# INLINEABLE dalPageSize #-}
{-# DEPRECATED pageSize "Use generic-lens or generic-optics with 'pageSize' instead"  #-}

instance Core.ToQuery DescribeAccountLimits where
        toQuery DescribeAccountLimits{..}
          = Core.toQueryPair "Action" ("DescribeAccountLimits" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2012-06-01" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Marker") marker
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "PageSize") pageSize

instance Core.ToHeaders DescribeAccountLimits where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeAccountLimits where
        type Rs DescribeAccountLimits = DescribeAccountLimitsResponse
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
          = Response.receiveXMLWrapper "DescribeAccountLimitsResult"
              (\ s h x ->
                 DescribeAccountLimitsResponse' Core.<$>
                   (x Core..@? "Limits" Core..<@> Core.parseXMLList "member") Core.<*>
                     x Core..@? "NextMarker"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeAccountLimits where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"limits" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"nextMarker")

-- | /See:/ 'mkDescribeAccountLimitsResponse' smart constructor.
data DescribeAccountLimitsResponse = DescribeAccountLimitsResponse'
  { limits :: Core.Maybe [Types.Limit]
    -- ^ Information about the limits.
  , nextMarker :: Core.Maybe Types.NextMarker
    -- ^ The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeAccountLimitsResponse' value with any optional fields omitted.
mkDescribeAccountLimitsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeAccountLimitsResponse
mkDescribeAccountLimitsResponse responseStatus
  = DescribeAccountLimitsResponse'{limits = Core.Nothing,
                                   nextMarker = Core.Nothing, responseStatus}

-- | Information about the limits.
--
-- /Note:/ Consider using 'limits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dalrrsLimits :: Lens.Lens' DescribeAccountLimitsResponse (Core.Maybe [Types.Limit])
dalrrsLimits = Lens.field @"limits"
{-# INLINEABLE dalrrsLimits #-}
{-# DEPRECATED limits "Use generic-lens or generic-optics with 'limits' instead"  #-}

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dalrrsNextMarker :: Lens.Lens' DescribeAccountLimitsResponse (Core.Maybe Types.NextMarker)
dalrrsNextMarker = Lens.field @"nextMarker"
{-# INLINEABLE dalrrsNextMarker #-}
{-# DEPRECATED nextMarker "Use generic-lens or generic-optics with 'nextMarker' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dalrrsResponseStatus :: Lens.Lens' DescribeAccountLimitsResponse Core.Int
dalrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dalrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
