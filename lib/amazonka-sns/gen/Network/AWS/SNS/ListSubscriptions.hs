{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.ListSubscriptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a @NextToken@ is also returned. Use the @NextToken@ parameter in a new @ListSubscriptions@ call to get further results.
--
-- This action is throttled at 30 transactions per second (TPS).
--
-- This operation returns paginated results.
module Network.AWS.SNS.ListSubscriptions
    (
    -- * Creating a request
      ListSubscriptions (..)
    , mkListSubscriptions
    -- ** Request lenses
    , lsNextToken

    -- * Destructuring the response
    , ListSubscriptionsResponse (..)
    , mkListSubscriptionsResponse
    -- ** Response lenses
    , lsrrsNextToken
    , lsrrsSubscriptions
    , lsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SNS.Types as Types

-- | Input for ListSubscriptions action.
--
-- /See:/ 'mkListSubscriptions' smart constructor.
newtype ListSubscriptions = ListSubscriptions'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ Token returned by the previous @ListSubscriptions@ request.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ListSubscriptions' value with any optional fields omitted.
mkListSubscriptions
    :: ListSubscriptions
mkListSubscriptions = ListSubscriptions'{nextToken = Core.Nothing}

-- | Token returned by the previous @ListSubscriptions@ request.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsNextToken :: Lens.Lens' ListSubscriptions (Core.Maybe Types.NextToken)
lsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListSubscriptions where
        toQuery ListSubscriptions{..}
          = Core.toQueryPair "Action" ("ListSubscriptions" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-03-31" :: Core.Text)
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders ListSubscriptions where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListSubscriptions where
        type Rs ListSubscriptions = ListSubscriptionsResponse
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
          = Response.receiveXMLWrapper "ListSubscriptionsResult"
              (\ s h x ->
                 ListSubscriptionsResponse' Core.<$>
                   (x Core..@? "NextToken") Core.<*>
                     x Core..@? "Subscriptions" Core..<@> Core.parseXMLList "member"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListSubscriptions where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"subscriptions" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | Response for ListSubscriptions action
--
-- /See:/ 'mkListSubscriptionsResponse' smart constructor.
data ListSubscriptionsResponse = ListSubscriptionsResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ Token to pass along to the next @ListSubscriptions@ request. This element is returned if there are more subscriptions to retrieve.
  , subscriptions :: Core.Maybe [Types.Subscription]
    -- ^ A list of subscriptions.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSubscriptionsResponse' value with any optional fields omitted.
mkListSubscriptionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListSubscriptionsResponse
mkListSubscriptionsResponse responseStatus
  = ListSubscriptionsResponse'{nextToken = Core.Nothing,
                               subscriptions = Core.Nothing, responseStatus}

-- | Token to pass along to the next @ListSubscriptions@ request. This element is returned if there are more subscriptions to retrieve.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsNextToken :: Lens.Lens' ListSubscriptionsResponse (Core.Maybe Types.NextToken)
lsrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lsrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of subscriptions.
--
-- /Note:/ Consider using 'subscriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsSubscriptions :: Lens.Lens' ListSubscriptionsResponse (Core.Maybe [Types.Subscription])
lsrrsSubscriptions = Lens.field @"subscriptions"
{-# INLINEABLE lsrrsSubscriptions #-}
{-# DEPRECATED subscriptions "Use generic-lens or generic-optics with 'subscriptions' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsResponseStatus :: Lens.Lens' ListSubscriptionsResponse Core.Int
lsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
