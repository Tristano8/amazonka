{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListProjects
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about projects.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListProjects
    (
    -- * Creating a request
      ListProjects (..)
    , mkListProjects
    -- ** Request lenses
    , lpArn
    , lpNextToken

    -- * Destructuring the response
    , ListProjectsResponse (..)
    , mkListProjectsResponse
    -- ** Response lenses
    , lprrsNextToken
    , lprrsProjects
    , lprrsResponseStatus
    ) where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents a request to the list projects operation.
--
-- /See:/ 'mkListProjects' smart constructor.
data ListProjects = ListProjects'
  { arn :: Core.Maybe Types.Arn
    -- ^ Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListProjects' value with any optional fields omitted.
mkListProjects
    :: ListProjects
mkListProjects
  = ListProjects'{arn = Core.Nothing, nextToken = Core.Nothing}

-- | Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpArn :: Lens.Lens' ListProjects (Core.Maybe Types.Arn)
lpArn = Lens.field @"arn"
{-# INLINEABLE lpArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpNextToken :: Lens.Lens' ListProjects (Core.Maybe Types.PaginationToken)
lpNextToken = Lens.field @"nextToken"
{-# INLINEABLE lpNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListProjects where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListProjects where
        toHeaders ListProjects{..}
          = Core.pure ("X-Amz-Target", "DeviceFarm_20150623.ListProjects")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListProjects where
        toJSON ListProjects{..}
          = Core.object
              (Core.catMaybes
                 [("arn" Core..=) Core.<$> arn,
                  ("nextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest ListProjects where
        type Rs ListProjects = ListProjectsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListProjectsResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "projects" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListProjects where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"projects" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | Represents the result of a list projects request.
--
-- /See:/ 'mkListProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse'
  { nextToken :: Core.Maybe Types.PaginationToken
    -- ^ If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
  , projects :: Core.Maybe [Types.Project]
    -- ^ Information about the projects.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListProjectsResponse' value with any optional fields omitted.
mkListProjectsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListProjectsResponse
mkListProjectsResponse responseStatus
  = ListProjectsResponse'{nextToken = Core.Nothing,
                          projects = Core.Nothing, responseStatus}

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lprrsNextToken :: Lens.Lens' ListProjectsResponse (Core.Maybe Types.PaginationToken)
lprrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lprrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Information about the projects.
--
-- /Note:/ Consider using 'projects' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lprrsProjects :: Lens.Lens' ListProjectsResponse (Core.Maybe [Types.Project])
lprrsProjects = Lens.field @"projects"
{-# INLINEABLE lprrsProjects #-}
{-# DEPRECATED projects "Use generic-lens or generic-optics with 'projects' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lprrsResponseStatus :: Lens.Lens' ListProjectsResponse Core.Int
lprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
