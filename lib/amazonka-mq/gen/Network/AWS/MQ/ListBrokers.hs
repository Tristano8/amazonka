{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.ListBrokers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all brokers.
--
-- This operation returns paginated results.
module Network.AWS.MQ.ListBrokers
    (
    -- * Creating a request
      ListBrokers (..)
    , mkListBrokers
    -- ** Request lenses
    , lbMaxResults
    , lbNextToken

    -- * Destructuring the response
    , ListBrokersResponse (..)
    , mkListBrokersResponse
    -- ** Response lenses
    , lbrrsBrokerSummaries
    , lbrrsNextToken
    , lbrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MQ.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListBrokers' smart constructor.
data ListBrokers = ListBrokers'
  { maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListBrokers' value with any optional fields omitted.
mkListBrokers
    :: ListBrokers
mkListBrokers
  = ListBrokers'{maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbMaxResults :: Lens.Lens' ListBrokers (Core.Maybe Core.Natural)
lbMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lbMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbNextToken :: Lens.Lens' ListBrokers (Core.Maybe Core.Text)
lbNextToken = Lens.field @"nextToken"
{-# INLINEABLE lbNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListBrokers where
        toQuery ListBrokers{..}
          = Core.maybe Core.mempty (Core.toQueryPair "maxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "nextToken") nextToken

instance Core.ToHeaders ListBrokers where
        toHeaders ListBrokers{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest ListBrokers where
        type Rs ListBrokers = ListBrokersResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET, Core._rqPath = "/v1/brokers",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListBrokersResponse' Core.<$>
                   (x Core..:? "brokerSummaries") Core.<*> x Core..:? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListBrokers where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"brokerSummaries" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListBrokersResponse' smart constructor.
data ListBrokersResponse = ListBrokersResponse'
  { brokerSummaries :: Core.Maybe [Types.BrokerSummary]
    -- ^ A list of information about all brokers.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListBrokersResponse' value with any optional fields omitted.
mkListBrokersResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListBrokersResponse
mkListBrokersResponse responseStatus
  = ListBrokersResponse'{brokerSummaries = Core.Nothing,
                         nextToken = Core.Nothing, responseStatus}

-- | A list of information about all brokers.
--
-- /Note:/ Consider using 'brokerSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsBrokerSummaries :: Lens.Lens' ListBrokersResponse (Core.Maybe [Types.BrokerSummary])
lbrrsBrokerSummaries = Lens.field @"brokerSummaries"
{-# INLINEABLE lbrrsBrokerSummaries #-}
{-# DEPRECATED brokerSummaries "Use generic-lens or generic-optics with 'brokerSummaries' instead"  #-}

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsNextToken :: Lens.Lens' ListBrokersResponse (Core.Maybe Core.Text)
lbrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lbrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbrrsResponseStatus :: Lens.Lens' ListBrokersResponse Core.Int
lbrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lbrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
