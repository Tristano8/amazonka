{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.DescribeEffectiveInstanceAssociations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- All associations for the instance(s).
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeEffectiveInstanceAssociations
    (
    -- * Creating a request
      DescribeEffectiveInstanceAssociations (..)
    , mkDescribeEffectiveInstanceAssociations
    -- ** Request lenses
    , deiaInstanceId
    , deiaMaxResults
    , deiaNextToken

    -- * Destructuring the response
    , DescribeEffectiveInstanceAssociationsResponse (..)
    , mkDescribeEffectiveInstanceAssociationsResponse
    -- ** Response lenses
    , deiarrsAssociations
    , deiarrsNextToken
    , deiarrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkDescribeEffectiveInstanceAssociations' smart constructor.
data DescribeEffectiveInstanceAssociations = DescribeEffectiveInstanceAssociations'
  { instanceId :: Types.InstanceId
    -- ^ The instance ID for which you want to view all associations.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token for the next set of items to return. (You received this token from a previous call.)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEffectiveInstanceAssociations' value with any optional fields omitted.
mkDescribeEffectiveInstanceAssociations
    :: Types.InstanceId -- ^ 'instanceId'
    -> DescribeEffectiveInstanceAssociations
mkDescribeEffectiveInstanceAssociations instanceId
  = DescribeEffectiveInstanceAssociations'{instanceId,
                                           maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | The instance ID for which you want to view all associations.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiaInstanceId :: Lens.Lens' DescribeEffectiveInstanceAssociations Types.InstanceId
deiaInstanceId = Lens.field @"instanceId"
{-# INLINEABLE deiaInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiaMaxResults :: Lens.Lens' DescribeEffectiveInstanceAssociations (Core.Maybe Core.Natural)
deiaMaxResults = Lens.field @"maxResults"
{-# INLINEABLE deiaMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token for the next set of items to return. (You received this token from a previous call.)
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiaNextToken :: Lens.Lens' DescribeEffectiveInstanceAssociations (Core.Maybe Types.NextToken)
deiaNextToken = Lens.field @"nextToken"
{-# INLINEABLE deiaNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeEffectiveInstanceAssociations where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeEffectiveInstanceAssociations where
        toHeaders DescribeEffectiveInstanceAssociations{..}
          = Core.pure
              ("X-Amz-Target", "AmazonSSM.DescribeEffectiveInstanceAssociations")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeEffectiveInstanceAssociations where
        toJSON DescribeEffectiveInstanceAssociations{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("InstanceId" Core..= instanceId),
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest DescribeEffectiveInstanceAssociations
         where
        type Rs DescribeEffectiveInstanceAssociations =
             DescribeEffectiveInstanceAssociationsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeEffectiveInstanceAssociationsResponse' Core.<$>
                   (x Core..:? "Associations") Core.<*> x Core..:? "NextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeEffectiveInstanceAssociations where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"associations" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeEffectiveInstanceAssociationsResponse' smart constructor.
data DescribeEffectiveInstanceAssociationsResponse = DescribeEffectiveInstanceAssociationsResponse'
  { associations :: Core.Maybe [Types.InstanceAssociation]
    -- ^ The associations for the requested instance.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEffectiveInstanceAssociationsResponse' value with any optional fields omitted.
mkDescribeEffectiveInstanceAssociationsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeEffectiveInstanceAssociationsResponse
mkDescribeEffectiveInstanceAssociationsResponse responseStatus
  = DescribeEffectiveInstanceAssociationsResponse'{associations =
                                                     Core.Nothing,
                                                   nextToken = Core.Nothing, responseStatus}

-- | The associations for the requested instance.
--
-- /Note:/ Consider using 'associations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiarrsAssociations :: Lens.Lens' DescribeEffectiveInstanceAssociationsResponse (Core.Maybe [Types.InstanceAssociation])
deiarrsAssociations = Lens.field @"associations"
{-# INLINEABLE deiarrsAssociations #-}
{-# DEPRECATED associations "Use generic-lens or generic-optics with 'associations' instead"  #-}

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiarrsNextToken :: Lens.Lens' DescribeEffectiveInstanceAssociationsResponse (Core.Maybe Types.NextToken)
deiarrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE deiarrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deiarrsResponseStatus :: Lens.Lens' DescribeEffectiveInstanceAssociationsResponse Core.Int
deiarrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE deiarrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
