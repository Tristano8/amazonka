{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.SearchSkillGroups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches skill groups and lists the ones that meet a set of filter and sort criteria.
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchSkillGroups
    (
    -- * Creating a request
      SearchSkillGroups (..)
    , mkSearchSkillGroups
    -- ** Request lenses
    , ssgFilters
    , ssgMaxResults
    , ssgNextToken
    , ssgSortCriteria

    -- * Destructuring the response
    , SearchSkillGroupsResponse (..)
    , mkSearchSkillGroupsResponse
    -- ** Response lenses
    , ssgrrsNextToken
    , ssgrrsSkillGroups
    , ssgrrsTotalCount
    , ssgrrsResponseStatus
    ) where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkSearchSkillGroups' smart constructor.
data SearchSkillGroups = SearchSkillGroups'
  { filters :: Core.Maybe [Types.Filter]
    -- ^ The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName. 
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. 
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
  , sortCriteria :: Core.Maybe [Types.Sort]
    -- ^ The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SearchSkillGroups' value with any optional fields omitted.
mkSearchSkillGroups
    :: SearchSkillGroups
mkSearchSkillGroups
  = SearchSkillGroups'{filters = Core.Nothing,
                       maxResults = Core.Nothing, nextToken = Core.Nothing,
                       sortCriteria = Core.Nothing}

-- | The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName. 
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgFilters :: Lens.Lens' SearchSkillGroups (Core.Maybe [Types.Filter])
ssgFilters = Lens.field @"filters"
{-# INLINEABLE ssgFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. 
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgMaxResults :: Lens.Lens' SearchSkillGroups (Core.Maybe Core.Natural)
ssgMaxResults = Lens.field @"maxResults"
{-# INLINEABLE ssgMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgNextToken :: Lens.Lens' SearchSkillGroups (Core.Maybe Types.NextToken)
ssgNextToken = Lens.field @"nextToken"
{-# INLINEABLE ssgNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName. 
--
-- /Note:/ Consider using 'sortCriteria' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgSortCriteria :: Lens.Lens' SearchSkillGroups (Core.Maybe [Types.Sort])
ssgSortCriteria = Lens.field @"sortCriteria"
{-# INLINEABLE ssgSortCriteria #-}
{-# DEPRECATED sortCriteria "Use generic-lens or generic-optics with 'sortCriteria' instead"  #-}

instance Core.ToQuery SearchSkillGroups where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders SearchSkillGroups where
        toHeaders SearchSkillGroups{..}
          = Core.pure ("X-Amz-Target", "AlexaForBusiness.SearchSkillGroups")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON SearchSkillGroups where
        toJSON SearchSkillGroups{..}
          = Core.object
              (Core.catMaybes
                 [("Filters" Core..=) Core.<$> filters,
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken,
                  ("SortCriteria" Core..=) Core.<$> sortCriteria])

instance Core.AWSRequest SearchSkillGroups where
        type Rs SearchSkillGroups = SearchSkillGroupsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 SearchSkillGroupsResponse' Core.<$>
                   (x Core..:? "NextToken") Core.<*> x Core..:? "SkillGroups" Core.<*>
                     x Core..:? "TotalCount"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager SearchSkillGroups where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"skillGroups" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkSearchSkillGroupsResponse' smart constructor.
data SearchSkillGroupsResponse = SearchSkillGroupsResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ The token returned to indicate that there is more data available.
  , skillGroups :: Core.Maybe [Types.SkillGroupData]
    -- ^ The skill groups that meet the filter criteria, in sort order.
  , totalCount :: Core.Maybe Core.Int
    -- ^ The total number of skill groups returned.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SearchSkillGroupsResponse' value with any optional fields omitted.
mkSearchSkillGroupsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> SearchSkillGroupsResponse
mkSearchSkillGroupsResponse responseStatus
  = SearchSkillGroupsResponse'{nextToken = Core.Nothing,
                               skillGroups = Core.Nothing, totalCount = Core.Nothing,
                               responseStatus}

-- | The token returned to indicate that there is more data available.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgrrsNextToken :: Lens.Lens' SearchSkillGroupsResponse (Core.Maybe Types.NextToken)
ssgrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ssgrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The skill groups that meet the filter criteria, in sort order.
--
-- /Note:/ Consider using 'skillGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgrrsSkillGroups :: Lens.Lens' SearchSkillGroupsResponse (Core.Maybe [Types.SkillGroupData])
ssgrrsSkillGroups = Lens.field @"skillGroups"
{-# INLINEABLE ssgrrsSkillGroups #-}
{-# DEPRECATED skillGroups "Use generic-lens or generic-optics with 'skillGroups' instead"  #-}

-- | The total number of skill groups returned.
--
-- /Note:/ Consider using 'totalCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgrrsTotalCount :: Lens.Lens' SearchSkillGroupsResponse (Core.Maybe Core.Int)
ssgrrsTotalCount = Lens.field @"totalCount"
{-# INLINEABLE ssgrrsTotalCount #-}
{-# DEPRECATED totalCount "Use generic-lens or generic-optics with 'totalCount' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssgrrsResponseStatus :: Lens.Lens' SearchSkillGroupsResponse Core.Int
ssgrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ssgrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
