{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.FilterLogEvents
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.
--
-- By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events) or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call. This operation can return empty results while there are more log events available through the token.
-- The returned log events are sorted by event timestamp, the timestamp when the event was ingested by CloudWatch Logs, and the ID of the @PutLogEvents@ request.
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchLogs.FilterLogEvents
    (
    -- * Creating a request
      FilterLogEvents (..)
    , mkFilterLogEvents
    -- ** Request lenses
    , fleLogGroupName
    , fleEndTime
    , fleFilterPattern
    , fleInterleaved
    , fleLimit
    , fleLogStreamNamePrefix
    , fleLogStreamNames
    , fleNextToken
    , fleStartTime

    -- * Destructuring the response
    , FilterLogEventsResponse (..)
    , mkFilterLogEventsResponse
    -- ** Response lenses
    , flerrsEvents
    , flerrsNextToken
    , flerrsSearchedLogStreams
    , flerrsResponseStatus
    ) where

import qualified Network.AWS.CloudWatchLogs.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkFilterLogEvents' smart constructor.
data FilterLogEvents = FilterLogEvents'
  { logGroupName :: Types.LogGroupName
    -- ^ The name of the log group to search.
  , endTime :: Core.Maybe Core.Natural
    -- ^ The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.
  , filterPattern :: Core.Maybe Types.FilterPattern
    -- ^ The filter pattern to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html Filter and Pattern Syntax> .
--
-- If not provided, all the events are matched.
  , interleaved :: Core.Maybe Core.Bool
    -- ^ If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.
--
-- __Important:__ Starting on June 17, 2019, this parameter is ignored and the value is assumed to be true. The response from this operation always interleaves events from multiple log streams within a log group.
  , limit :: Core.Maybe Core.Natural
    -- ^ The maximum number of events to return. The default is 10,000 events.
  , logStreamNamePrefix :: Core.Maybe Types.LogStreamNamePrefix
    -- ^ Filters the results to include only events from log streams that have names starting with this prefix.
--
-- If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , but the value for @logStreamNamePrefix@ does not match any log stream names specified in @logStreamNames@ , the action returns an @InvalidParameterException@ error.
  , logStreamNames :: Core.Maybe (Core.NonEmpty Types.LogStreamName)
    -- ^ Filters the results to only logs from the log streams in this list.
--
-- If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , the action returns an @InvalidParameterException@ error.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token for the next set of events to return. (You received this token from a previous call.)
  , startTime :: Core.Maybe Core.Natural
    -- ^ The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not returned.
--
-- If you omit @startTime@ and @endTime@ the most recent log events are retrieved, to up 1 MB or 10,000 log events.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'FilterLogEvents' value with any optional fields omitted.
mkFilterLogEvents
    :: Types.LogGroupName -- ^ 'logGroupName'
    -> FilterLogEvents
mkFilterLogEvents logGroupName
  = FilterLogEvents'{logGroupName, endTime = Core.Nothing,
                     filterPattern = Core.Nothing, interleaved = Core.Nothing,
                     limit = Core.Nothing, logStreamNamePrefix = Core.Nothing,
                     logStreamNames = Core.Nothing, nextToken = Core.Nothing,
                     startTime = Core.Nothing}

-- | The name of the log group to search.
--
-- /Note:/ Consider using 'logGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleLogGroupName :: Lens.Lens' FilterLogEvents Types.LogGroupName
fleLogGroupName = Lens.field @"logGroupName"
{-# INLINEABLE fleLogGroupName #-}
{-# DEPRECATED logGroupName "Use generic-lens or generic-optics with 'logGroupName' instead"  #-}

-- | The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleEndTime :: Lens.Lens' FilterLogEvents (Core.Maybe Core.Natural)
fleEndTime = Lens.field @"endTime"
{-# INLINEABLE fleEndTime #-}
{-# DEPRECATED endTime "Use generic-lens or generic-optics with 'endTime' instead"  #-}

-- | The filter pattern to use. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html Filter and Pattern Syntax> .
--
-- If not provided, all the events are matched.
--
-- /Note:/ Consider using 'filterPattern' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleFilterPattern :: Lens.Lens' FilterLogEvents (Core.Maybe Types.FilterPattern)
fleFilterPattern = Lens.field @"filterPattern"
{-# INLINEABLE fleFilterPattern #-}
{-# DEPRECATED filterPattern "Use generic-lens or generic-optics with 'filterPattern' instead"  #-}

-- | If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.
--
-- __Important:__ Starting on June 17, 2019, this parameter is ignored and the value is assumed to be true. The response from this operation always interleaves events from multiple log streams within a log group.
--
-- /Note:/ Consider using 'interleaved' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleInterleaved :: Lens.Lens' FilterLogEvents (Core.Maybe Core.Bool)
fleInterleaved = Lens.field @"interleaved"
{-# INLINEABLE fleInterleaved #-}
{-# DEPRECATED interleaved "Use generic-lens or generic-optics with 'interleaved' instead"  #-}

-- | The maximum number of events to return. The default is 10,000 events.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleLimit :: Lens.Lens' FilterLogEvents (Core.Maybe Core.Natural)
fleLimit = Lens.field @"limit"
{-# INLINEABLE fleLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

-- | Filters the results to include only events from log streams that have names starting with this prefix.
--
-- If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , but the value for @logStreamNamePrefix@ does not match any log stream names specified in @logStreamNames@ , the action returns an @InvalidParameterException@ error.
--
-- /Note:/ Consider using 'logStreamNamePrefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleLogStreamNamePrefix :: Lens.Lens' FilterLogEvents (Core.Maybe Types.LogStreamNamePrefix)
fleLogStreamNamePrefix = Lens.field @"logStreamNamePrefix"
{-# INLINEABLE fleLogStreamNamePrefix #-}
{-# DEPRECATED logStreamNamePrefix "Use generic-lens or generic-optics with 'logStreamNamePrefix' instead"  #-}

-- | Filters the results to only logs from the log streams in this list.
--
-- If you specify a value for both @logStreamNamePrefix@ and @logStreamNames@ , the action returns an @InvalidParameterException@ error.
--
-- /Note:/ Consider using 'logStreamNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleLogStreamNames :: Lens.Lens' FilterLogEvents (Core.Maybe (Core.NonEmpty Types.LogStreamName))
fleLogStreamNames = Lens.field @"logStreamNames"
{-# INLINEABLE fleLogStreamNames #-}
{-# DEPRECATED logStreamNames "Use generic-lens or generic-optics with 'logStreamNames' instead"  #-}

-- | The token for the next set of events to return. (You received this token from a previous call.)
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleNextToken :: Lens.Lens' FilterLogEvents (Core.Maybe Types.NextToken)
fleNextToken = Lens.field @"nextToken"
{-# INLINEABLE fleNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not returned.
--
-- If you omit @startTime@ and @endTime@ the most recent log events are retrieved, to up 1 MB or 10,000 log events.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fleStartTime :: Lens.Lens' FilterLogEvents (Core.Maybe Core.Natural)
fleStartTime = Lens.field @"startTime"
{-# INLINEABLE fleStartTime #-}
{-# DEPRECATED startTime "Use generic-lens or generic-optics with 'startTime' instead"  #-}

instance Core.ToQuery FilterLogEvents where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders FilterLogEvents where
        toHeaders FilterLogEvents{..}
          = Core.pure ("X-Amz-Target", "Logs_20140328.FilterLogEvents")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON FilterLogEvents where
        toJSON FilterLogEvents{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("logGroupName" Core..= logGroupName),
                  ("endTime" Core..=) Core.<$> endTime,
                  ("filterPattern" Core..=) Core.<$> filterPattern,
                  ("interleaved" Core..=) Core.<$> interleaved,
                  ("limit" Core..=) Core.<$> limit,
                  ("logStreamNamePrefix" Core..=) Core.<$> logStreamNamePrefix,
                  ("logStreamNames" Core..=) Core.<$> logStreamNames,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("startTime" Core..=) Core.<$> startTime])

instance Core.AWSRequest FilterLogEvents where
        type Rs FilterLogEvents = FilterLogEventsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 FilterLogEventsResponse' Core.<$>
                   (x Core..:? "events") Core.<*> x Core..:? "nextToken" Core.<*>
                     x Core..:? "searchedLogStreams"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager FilterLogEvents where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkFilterLogEventsResponse' smart constructor.
data FilterLogEventsResponse = FilterLogEventsResponse'
  { events :: Core.Maybe [Types.FilteredLogEvent]
    -- ^ The matched events.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use when requesting the next set of items. The token expires after 24 hours.
  , searchedLogStreams :: Core.Maybe [Types.SearchedLogStream]
    -- ^ __IMPORTANT__ Starting on May 15, 2020, this parameter will be deprecated. This parameter will be an empty list after the deprecation occurs.
--
-- Indicates which log streams have been searched and whether each has been searched completely.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'FilterLogEventsResponse' value with any optional fields omitted.
mkFilterLogEventsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> FilterLogEventsResponse
mkFilterLogEventsResponse responseStatus
  = FilterLogEventsResponse'{events = Core.Nothing,
                             nextToken = Core.Nothing, searchedLogStreams = Core.Nothing,
                             responseStatus}

-- | The matched events.
--
-- /Note:/ Consider using 'events' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
flerrsEvents :: Lens.Lens' FilterLogEventsResponse (Core.Maybe [Types.FilteredLogEvent])
flerrsEvents = Lens.field @"events"
{-# INLINEABLE flerrsEvents #-}
{-# DEPRECATED events "Use generic-lens or generic-optics with 'events' instead"  #-}

-- | The token to use when requesting the next set of items. The token expires after 24 hours.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
flerrsNextToken :: Lens.Lens' FilterLogEventsResponse (Core.Maybe Types.NextToken)
flerrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE flerrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | __IMPORTANT__ Starting on May 15, 2020, this parameter will be deprecated. This parameter will be an empty list after the deprecation occurs.
--
-- Indicates which log streams have been searched and whether each has been searched completely.
--
-- /Note:/ Consider using 'searchedLogStreams' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
flerrsSearchedLogStreams :: Lens.Lens' FilterLogEventsResponse (Core.Maybe [Types.SearchedLogStream])
flerrsSearchedLogStreams = Lens.field @"searchedLogStreams"
{-# INLINEABLE flerrsSearchedLogStreams #-}
{-# DEPRECATED searchedLogStreams "Use generic-lens or generic-optics with 'searchedLogStreams' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
flerrsResponseStatus :: Lens.Lens' FilterLogEventsResponse Core.Int
flerrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE flerrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
