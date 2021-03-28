{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.DescribeEventTypes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeEventTypes
    (
    -- * Creating a request
      DescribeEventTypes (..)
    , mkDescribeEventTypes
    -- ** Request lenses
    , detFilter
    , detLocale
    , detMaxResults
    , detNextToken

    -- * Destructuring the response
    , DescribeEventTypesResponse (..)
    , mkDescribeEventTypesResponse
    -- ** Response lenses
    , detrrsEventTypes
    , detrrsNextToken
    , detrrsResponseStatus
    ) where

import qualified Network.AWS.AWSHealth.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeEventTypes' smart constructor.
data DescribeEventTypes = DescribeEventTypes'
  { filter :: Core.Maybe Types.EventTypeFilter
    -- ^ Values to narrow the results returned.
  , locale :: Core.Maybe Types.Locale
    -- ^ The locale (language) to return information in. English (en) is the default and the only supported value at this time.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of items to return in one batch, between 10 and 100, inclusive.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEventTypes' value with any optional fields omitted.
mkDescribeEventTypes
    :: DescribeEventTypes
mkDescribeEventTypes
  = DescribeEventTypes'{filter = Core.Nothing, locale = Core.Nothing,
                        maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | Values to narrow the results returned.
--
-- /Note:/ Consider using 'filter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detFilter :: Lens.Lens' DescribeEventTypes (Core.Maybe Types.EventTypeFilter)
detFilter = Lens.field @"filter"
{-# INLINEABLE detFilter #-}
{-# DEPRECATED filter "Use generic-lens or generic-optics with 'filter' instead"  #-}

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- /Note:/ Consider using 'locale' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detLocale :: Lens.Lens' DescribeEventTypes (Core.Maybe Types.Locale)
detLocale = Lens.field @"locale"
{-# INLINEABLE detLocale #-}
{-# DEPRECATED locale "Use generic-lens or generic-optics with 'locale' instead"  #-}

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detMaxResults :: Lens.Lens' DescribeEventTypes (Core.Maybe Core.Natural)
detMaxResults = Lens.field @"maxResults"
{-# INLINEABLE detMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detNextToken :: Lens.Lens' DescribeEventTypes (Core.Maybe Types.NextToken)
detNextToken = Lens.field @"nextToken"
{-# INLINEABLE detNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeEventTypes where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeEventTypes where
        toHeaders DescribeEventTypes{..}
          = Core.pure
              ("X-Amz-Target", "AWSHealth_20160804.DescribeEventTypes")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeEventTypes where
        toJSON DescribeEventTypes{..}
          = Core.object
              (Core.catMaybes
                 [("filter" Core..=) Core.<$> filter,
                  ("locale" Core..=) Core.<$> locale,
                  ("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest DescribeEventTypes where
        type Rs DescribeEventTypes = DescribeEventTypesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeEventTypesResponse' Core.<$>
                   (x Core..:? "eventTypes") Core.<*> x Core..:? "nextToken" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeEventTypes where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"eventTypes" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeEventTypesResponse' smart constructor.
data DescribeEventTypesResponse = DescribeEventTypesResponse'
  { eventTypes :: Core.Maybe [Types.EventType]
    -- ^ A list of event types that match the filter criteria. Event types have a category (@issue@ , @accountNotification@ , or @scheduledChange@ ), a service (for example, @EC2@ , @RDS@ , @DATAPIPELINE@ , @BILLING@ ), and a code (in the format @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ ).
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEventTypesResponse' value with any optional fields omitted.
mkDescribeEventTypesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeEventTypesResponse
mkDescribeEventTypesResponse responseStatus
  = DescribeEventTypesResponse'{eventTypes = Core.Nothing,
                                nextToken = Core.Nothing, responseStatus}

-- | A list of event types that match the filter criteria. Event types have a category (@issue@ , @accountNotification@ , or @scheduledChange@ ), a service (for example, @EC2@ , @RDS@ , @DATAPIPELINE@ , @BILLING@ ), and a code (in the format @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ ).
--
-- /Note:/ Consider using 'eventTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detrrsEventTypes :: Lens.Lens' DescribeEventTypesResponse (Core.Maybe [Types.EventType])
detrrsEventTypes = Lens.field @"eventTypes"
{-# INLINEABLE detrrsEventTypes #-}
{-# DEPRECATED eventTypes "Use generic-lens or generic-optics with 'eventTypes' instead"  #-}

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detrrsNextToken :: Lens.Lens' DescribeEventTypesResponse (Core.Maybe Types.NextToken)
detrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE detrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
detrrsResponseStatus :: Lens.Lens' DescribeEventTypesResponse Core.Int
detrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE detrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
