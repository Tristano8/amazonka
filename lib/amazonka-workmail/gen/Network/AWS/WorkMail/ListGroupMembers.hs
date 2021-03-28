{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.ListGroupMembers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an overview of the members of a group. Users and groups can be members of a group.
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListGroupMembers
    (
    -- * Creating a request
      ListGroupMembers (..)
    , mkListGroupMembers
    -- ** Request lenses
    , lgmOrganizationId
    , lgmGroupId
    , lgmMaxResults
    , lgmNextToken

    -- * Destructuring the response
    , ListGroupMembersResponse (..)
    , mkListGroupMembersResponse
    -- ** Response lenses
    , lgmrrsMembers
    , lgmrrsNextToken
    , lgmrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WorkMail.Types as Types

-- | /See:/ 'mkListGroupMembers' smart constructor.
data ListGroupMembers = ListGroupMembers'
  { organizationId :: Types.OrganizationId
    -- ^ The identifier for the organization under which the group exists.
  , groupId :: Types.GroupId
    -- ^ The identifier for the group to which the members (users or groups) are associated.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to return in a single call.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use to retrieve the next page of results. The first call does not contain any tokens.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListGroupMembers' value with any optional fields omitted.
mkListGroupMembers
    :: Types.OrganizationId -- ^ 'organizationId'
    -> Types.GroupId -- ^ 'groupId'
    -> ListGroupMembers
mkListGroupMembers organizationId groupId
  = ListGroupMembers'{organizationId, groupId,
                      maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | The identifier for the organization under which the group exists.
--
-- /Note:/ Consider using 'organizationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmOrganizationId :: Lens.Lens' ListGroupMembers Types.OrganizationId
lgmOrganizationId = Lens.field @"organizationId"
{-# INLINEABLE lgmOrganizationId #-}
{-# DEPRECATED organizationId "Use generic-lens or generic-optics with 'organizationId' instead"  #-}

-- | The identifier for the group to which the members (users or groups) are associated.
--
-- /Note:/ Consider using 'groupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmGroupId :: Lens.Lens' ListGroupMembers Types.GroupId
lgmGroupId = Lens.field @"groupId"
{-# INLINEABLE lgmGroupId #-}
{-# DEPRECATED groupId "Use generic-lens or generic-optics with 'groupId' instead"  #-}

-- | The maximum number of results to return in a single call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmMaxResults :: Lens.Lens' ListGroupMembers (Core.Maybe Core.Natural)
lgmMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lgmMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmNextToken :: Lens.Lens' ListGroupMembers (Core.Maybe Types.NextToken)
lgmNextToken = Lens.field @"nextToken"
{-# INLINEABLE lgmNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListGroupMembers where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListGroupMembers where
        toHeaders ListGroupMembers{..}
          = Core.pure ("X-Amz-Target", "WorkMailService.ListGroupMembers")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListGroupMembers where
        toJSON ListGroupMembers{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("OrganizationId" Core..= organizationId),
                  Core.Just ("GroupId" Core..= groupId),
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest ListGroupMembers where
        type Rs ListGroupMembers = ListGroupMembersResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListGroupMembersResponse' Core.<$>
                   (x Core..:? "Members") Core.<*> x Core..:? "NextToken" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListGroupMembers where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"members" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListGroupMembersResponse' smart constructor.
data ListGroupMembersResponse = ListGroupMembersResponse'
  { members :: Core.Maybe [Types.Member]
    -- ^ The members associated to the group.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use to retrieve the next page of results. The first call does not contain any tokens.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListGroupMembersResponse' value with any optional fields omitted.
mkListGroupMembersResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListGroupMembersResponse
mkListGroupMembersResponse responseStatus
  = ListGroupMembersResponse'{members = Core.Nothing,
                              nextToken = Core.Nothing, responseStatus}

-- | The members associated to the group.
--
-- /Note:/ Consider using 'members' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmrrsMembers :: Lens.Lens' ListGroupMembersResponse (Core.Maybe [Types.Member])
lgmrrsMembers = Lens.field @"members"
{-# INLINEABLE lgmrrsMembers #-}
{-# DEPRECATED members "Use generic-lens or generic-optics with 'members' instead"  #-}

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmrrsNextToken :: Lens.Lens' ListGroupMembersResponse (Core.Maybe Types.NextToken)
lgmrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lgmrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmrrsResponseStatus :: Lens.Lens' ListGroupMembersResponse Core.Int
lgmrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lgmrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
