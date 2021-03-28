{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.DescribeUserHierarchyGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified hierarchy group.
module Network.AWS.Connect.DescribeUserHierarchyGroup
    (
    -- * Creating a request
      DescribeUserHierarchyGroup (..)
    , mkDescribeUserHierarchyGroup
    -- ** Request lenses
    , duhgHierarchyGroupId
    , duhgInstanceId

    -- * Destructuring the response
    , DescribeUserHierarchyGroupResponse (..)
    , mkDescribeUserHierarchyGroupResponse
    -- ** Response lenses
    , duhgrrsHierarchyGroup
    , duhgrrsResponseStatus
    ) where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeUserHierarchyGroup' smart constructor.
data DescribeUserHierarchyGroup = DescribeUserHierarchyGroup'
  { hierarchyGroupId :: Types.HierarchyGroupId
    -- ^ The identifier of the hierarchy group.
  , instanceId :: Types.InstanceId
    -- ^ The identifier of the Amazon Connect instance.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeUserHierarchyGroup' value with any optional fields omitted.
mkDescribeUserHierarchyGroup
    :: Types.HierarchyGroupId -- ^ 'hierarchyGroupId'
    -> Types.InstanceId -- ^ 'instanceId'
    -> DescribeUserHierarchyGroup
mkDescribeUserHierarchyGroup hierarchyGroupId instanceId
  = DescribeUserHierarchyGroup'{hierarchyGroupId, instanceId}

-- | The identifier of the hierarchy group.
--
-- /Note:/ Consider using 'hierarchyGroupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duhgHierarchyGroupId :: Lens.Lens' DescribeUserHierarchyGroup Types.HierarchyGroupId
duhgHierarchyGroupId = Lens.field @"hierarchyGroupId"
{-# INLINEABLE duhgHierarchyGroupId #-}
{-# DEPRECATED hierarchyGroupId "Use generic-lens or generic-optics with 'hierarchyGroupId' instead"  #-}

-- | The identifier of the Amazon Connect instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duhgInstanceId :: Lens.Lens' DescribeUserHierarchyGroup Types.InstanceId
duhgInstanceId = Lens.field @"instanceId"
{-# INLINEABLE duhgInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

instance Core.ToQuery DescribeUserHierarchyGroup where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeUserHierarchyGroup where
        toHeaders DescribeUserHierarchyGroup{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest DescribeUserHierarchyGroup where
        type Rs DescribeUserHierarchyGroup =
             DescribeUserHierarchyGroupResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/user-hierarchy-groups/" Core.<> Core.toText instanceId Core.<>
                             "/"
                             Core.<> Core.toText hierarchyGroupId,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeUserHierarchyGroupResponse' Core.<$>
                   (x Core..:? "HierarchyGroup") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeUserHierarchyGroupResponse' smart constructor.
data DescribeUserHierarchyGroupResponse = DescribeUserHierarchyGroupResponse'
  { hierarchyGroup :: Core.Maybe Types.HierarchyGroup
    -- ^ Information about the hierarchy group.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeUserHierarchyGroupResponse' value with any optional fields omitted.
mkDescribeUserHierarchyGroupResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeUserHierarchyGroupResponse
mkDescribeUserHierarchyGroupResponse responseStatus
  = DescribeUserHierarchyGroupResponse'{hierarchyGroup =
                                          Core.Nothing,
                                        responseStatus}

-- | Information about the hierarchy group.
--
-- /Note:/ Consider using 'hierarchyGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duhgrrsHierarchyGroup :: Lens.Lens' DescribeUserHierarchyGroupResponse (Core.Maybe Types.HierarchyGroup)
duhgrrsHierarchyGroup = Lens.field @"hierarchyGroup"
{-# INLINEABLE duhgrrsHierarchyGroup #-}
{-# DEPRECATED hierarchyGroup "Use generic-lens or generic-optics with 'hierarchyGroup' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duhgrrsResponseStatus :: Lens.Lens' DescribeUserHierarchyGroupResponse Core.Int
duhgrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE duhgrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
