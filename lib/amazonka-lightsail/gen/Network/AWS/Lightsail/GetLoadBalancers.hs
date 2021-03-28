{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetLoadBalancers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all load balancers in an account.
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetLoadBalancers
    (
    -- * Creating a request
      GetLoadBalancers (..)
    , mkGetLoadBalancers
    -- ** Request lenses
    , glbPageToken

    -- * Destructuring the response
    , GetLoadBalancersResponse (..)
    , mkGetLoadBalancersResponse
    -- ** Response lenses
    , glbrfrsLoadBalancers
    , glbrfrsNextPageToken
    , glbrfrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetLoadBalancers' smart constructor.
newtype GetLoadBalancers = GetLoadBalancers'
  { pageToken :: Core.Maybe Core.Text
    -- ^ The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetLoadBalancers@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetLoadBalancers' value with any optional fields omitted.
mkGetLoadBalancers
    :: GetLoadBalancers
mkGetLoadBalancers = GetLoadBalancers'{pageToken = Core.Nothing}

-- | The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetLoadBalancers@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- /Note:/ Consider using 'pageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glbPageToken :: Lens.Lens' GetLoadBalancers (Core.Maybe Core.Text)
glbPageToken = Lens.field @"pageToken"
{-# INLINEABLE glbPageToken #-}
{-# DEPRECATED pageToken "Use generic-lens or generic-optics with 'pageToken' instead"  #-}

instance Core.ToQuery GetLoadBalancers where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetLoadBalancers where
        toHeaders GetLoadBalancers{..}
          = Core.pure ("X-Amz-Target", "Lightsail_20161128.GetLoadBalancers")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetLoadBalancers where
        toJSON GetLoadBalancers{..}
          = Core.object
              (Core.catMaybes [("pageToken" Core..=) Core.<$> pageToken])

instance Core.AWSRequest GetLoadBalancers where
        type Rs GetLoadBalancers = GetLoadBalancersResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetLoadBalancersResponse' Core.<$>
                   (x Core..:? "loadBalancers") Core.<*> x Core..:? "nextPageToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager GetLoadBalancers where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextPageToken") =
            Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"loadBalancers" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"pageToken" Lens..~
                   rs Lens.^. Lens.field @"nextPageToken")

-- | /See:/ 'mkGetLoadBalancersResponse' smart constructor.
data GetLoadBalancersResponse = GetLoadBalancersResponse'
  { loadBalancers :: Core.Maybe [Types.LoadBalancer]
    -- ^ An array of LoadBalancer objects describing your load balancers.
  , nextPageToken :: Core.Maybe Core.Text
    -- ^ The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to display.
-- To get the next page of results, perform another @GetLoadBalancers@ request and specify the next page token using the @pageToken@ parameter.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetLoadBalancersResponse' value with any optional fields omitted.
mkGetLoadBalancersResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetLoadBalancersResponse
mkGetLoadBalancersResponse responseStatus
  = GetLoadBalancersResponse'{loadBalancers = Core.Nothing,
                              nextPageToken = Core.Nothing, responseStatus}

-- | An array of LoadBalancer objects describing your load balancers.
--
-- /Note:/ Consider using 'loadBalancers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glbrfrsLoadBalancers :: Lens.Lens' GetLoadBalancersResponse (Core.Maybe [Types.LoadBalancer])
glbrfrsLoadBalancers = Lens.field @"loadBalancers"
{-# INLINEABLE glbrfrsLoadBalancers #-}
{-# DEPRECATED loadBalancers "Use generic-lens or generic-optics with 'loadBalancers' instead"  #-}

-- | The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to display.
-- To get the next page of results, perform another @GetLoadBalancers@ request and specify the next page token using the @pageToken@ parameter.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glbrfrsNextPageToken :: Lens.Lens' GetLoadBalancersResponse (Core.Maybe Core.Text)
glbrfrsNextPageToken = Lens.field @"nextPageToken"
{-# INLINEABLE glbrfrsNextPageToken #-}
{-# DEPRECATED nextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
glbrfrsResponseStatus :: Lens.Lens' GetLoadBalancersResponse Core.Int
glbrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE glbrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
