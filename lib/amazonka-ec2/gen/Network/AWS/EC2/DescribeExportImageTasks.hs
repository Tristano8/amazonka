{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeExportImageTasks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified export image tasks or all of your export image tasks.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeExportImageTasks
    (
    -- * Creating a request
      DescribeExportImageTasks (..)
    , mkDescribeExportImageTasks
    -- ** Request lenses
    , deitDryRun
    , deitExportImageTaskIds
    , deitFilters
    , deitMaxResults
    , deitNextToken

    -- * Destructuring the response
    , DescribeExportImageTasksResponse (..)
    , mkDescribeExportImageTasksResponse
    -- ** Response lenses
    , deitrrsExportImageTasks
    , deitrrsNextToken
    , deitrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeExportImageTasks' smart constructor.
data DescribeExportImageTasks = DescribeExportImageTasks'
  { dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , exportImageTaskIds :: Core.Maybe [Types.ExportImageTaskId]
    -- ^ The IDs of the export image tasks.
  , filters :: Core.Maybe [Types.Filter]
    -- ^ Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to return in a single call.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ A token that indicates the next page of results.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeExportImageTasks' value with any optional fields omitted.
mkDescribeExportImageTasks
    :: DescribeExportImageTasks
mkDescribeExportImageTasks
  = DescribeExportImageTasks'{dryRun = Core.Nothing,
                              exportImageTaskIds = Core.Nothing, filters = Core.Nothing,
                              maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitDryRun :: Lens.Lens' DescribeExportImageTasks (Core.Maybe Core.Bool)
deitDryRun = Lens.field @"dryRun"
{-# INLINEABLE deitDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The IDs of the export image tasks.
--
-- /Note:/ Consider using 'exportImageTaskIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitExportImageTaskIds :: Lens.Lens' DescribeExportImageTasks (Core.Maybe [Types.ExportImageTaskId])
deitExportImageTaskIds = Lens.field @"exportImageTaskIds"
{-# INLINEABLE deitExportImageTaskIds #-}
{-# DEPRECATED exportImageTaskIds "Use generic-lens or generic-optics with 'exportImageTaskIds' instead"  #-}

-- | Filter tasks using the @task-state@ filter and one of the following values: @active@ , @completed@ , @deleting@ , or @deleted@ .
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitFilters :: Lens.Lens' DescribeExportImageTasks (Core.Maybe [Types.Filter])
deitFilters = Lens.field @"filters"
{-# INLINEABLE deitFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | The maximum number of results to return in a single call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitMaxResults :: Lens.Lens' DescribeExportImageTasks (Core.Maybe Core.Natural)
deitMaxResults = Lens.field @"maxResults"
{-# INLINEABLE deitMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | A token that indicates the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitNextToken :: Lens.Lens' DescribeExportImageTasks (Core.Maybe Types.NextToken)
deitNextToken = Lens.field @"nextToken"
{-# INLINEABLE deitNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeExportImageTasks where
        toQuery DescribeExportImageTasks{..}
          = Core.toQueryPair "Action"
              ("DescribeExportImageTasks" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "ExportImageTaskId")
                exportImageTaskIds
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Filter") filters
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders DescribeExportImageTasks where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeExportImageTasks where
        type Rs DescribeExportImageTasks = DescribeExportImageTasksResponse
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
                 DescribeExportImageTasksResponse' Core.<$>
                   (x Core..@? "exportImageTaskSet" Core..<@>
                      Core.parseXMLList "item")
                     Core.<*> x Core..@? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeExportImageTasks where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"exportImageTasks" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeExportImageTasksResponse' smart constructor.
data DescribeExportImageTasksResponse = DescribeExportImageTasksResponse'
  { exportImageTasks :: Core.Maybe [Types.ExportImageTask]
    -- ^ Information about the export image tasks.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use to get the next page of results. This value is @null@ when there are no more results to return.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeExportImageTasksResponse' value with any optional fields omitted.
mkDescribeExportImageTasksResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeExportImageTasksResponse
mkDescribeExportImageTasksResponse responseStatus
  = DescribeExportImageTasksResponse'{exportImageTasks =
                                        Core.Nothing,
                                      nextToken = Core.Nothing, responseStatus}

-- | Information about the export image tasks.
--
-- /Note:/ Consider using 'exportImageTasks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitrrsExportImageTasks :: Lens.Lens' DescribeExportImageTasksResponse (Core.Maybe [Types.ExportImageTask])
deitrrsExportImageTasks = Lens.field @"exportImageTasks"
{-# INLINEABLE deitrrsExportImageTasks #-}
{-# DEPRECATED exportImageTasks "Use generic-lens or generic-optics with 'exportImageTasks' instead"  #-}

-- | The token to use to get the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitrrsNextToken :: Lens.Lens' DescribeExportImageTasksResponse (Core.Maybe Types.NextToken)
deitrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE deitrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deitrrsResponseStatus :: Lens.Lens' DescribeExportImageTasksResponse Core.Int
deitrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE deitrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
