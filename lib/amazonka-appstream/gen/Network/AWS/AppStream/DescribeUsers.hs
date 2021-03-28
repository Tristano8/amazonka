{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.DescribeUsers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified users in the user pool.
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeUsers
    (
    -- * Creating a request
      DescribeUsers (..)
    , mkDescribeUsers
    -- ** Request lenses
    , duAuthenticationType
    , duMaxResults
    , duNextToken

    -- * Destructuring the response
    , DescribeUsersResponse (..)
    , mkDescribeUsersResponse
    -- ** Response lenses
    , durrsNextToken
    , durrsUsers
    , durrsResponseStatus
    ) where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeUsers' smart constructor.
data DescribeUsers = DescribeUsers'
  { authenticationType :: Types.AuthenticationType
    -- ^ The authentication type for the users in the user pool to describe. You must specify USERPOOL.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum size of each page of results.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeUsers' value with any optional fields omitted.
mkDescribeUsers
    :: Types.AuthenticationType -- ^ 'authenticationType'
    -> DescribeUsers
mkDescribeUsers authenticationType
  = DescribeUsers'{authenticationType, maxResults = Core.Nothing,
                   nextToken = Core.Nothing}

-- | The authentication type for the users in the user pool to describe. You must specify USERPOOL.
--
-- /Note:/ Consider using 'authenticationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duAuthenticationType :: Lens.Lens' DescribeUsers Types.AuthenticationType
duAuthenticationType = Lens.field @"authenticationType"
{-# INLINEABLE duAuthenticationType #-}
{-# DEPRECATED authenticationType "Use generic-lens or generic-optics with 'authenticationType' instead"  #-}

-- | The maximum size of each page of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duMaxResults :: Lens.Lens' DescribeUsers (Core.Maybe Core.Int)
duMaxResults = Lens.field @"maxResults"
{-# INLINEABLE duMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duNextToken :: Lens.Lens' DescribeUsers (Core.Maybe Core.Text)
duNextToken = Lens.field @"nextToken"
{-# INLINEABLE duNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeUsers where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeUsers where
        toHeaders DescribeUsers{..}
          = Core.pure
              ("X-Amz-Target", "PhotonAdminProxyService.DescribeUsers")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeUsers where
        toJSON DescribeUsers{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("AuthenticationType" Core..= authenticationType),
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest DescribeUsers where
        type Rs DescribeUsers = DescribeUsersResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeUsersResponse' Core.<$>
                   (x Core..:? "NextToken") Core.<*> x Core..:? "Users" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeUsers where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"users" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeUsersResponse' smart constructor.
data DescribeUsersResponse = DescribeUsersResponse'
  { nextToken :: Core.Maybe Core.Text
    -- ^ The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
  , users :: Core.Maybe [Types.User]
    -- ^ Information about users in the user pool.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeUsersResponse' value with any optional fields omitted.
mkDescribeUsersResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeUsersResponse
mkDescribeUsersResponse responseStatus
  = DescribeUsersResponse'{nextToken = Core.Nothing,
                           users = Core.Nothing, responseStatus}

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
durrsNextToken :: Lens.Lens' DescribeUsersResponse (Core.Maybe Core.Text)
durrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE durrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Information about users in the user pool.
--
-- /Note:/ Consider using 'users' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
durrsUsers :: Lens.Lens' DescribeUsersResponse (Core.Maybe [Types.User])
durrsUsers = Lens.field @"users"
{-# INLINEABLE durrsUsers #-}
{-# DEPRECATED users "Use generic-lens or generic-optics with 'users' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
durrsResponseStatus :: Lens.Lens' DescribeUsersResponse Core.Int
durrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE durrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
