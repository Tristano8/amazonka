{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.UpdateThingGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a thing group.
module Network.AWS.IoT.UpdateThingGroup
    (
    -- * Creating a request
      UpdateThingGroup (..)
    , mkUpdateThingGroup
    -- ** Request lenses
    , utgThingGroupName
    , utgThingGroupProperties
    , utgExpectedVersion

    -- * Destructuring the response
    , UpdateThingGroupResponse (..)
    , mkUpdateThingGroupResponse
    -- ** Response lenses
    , utgrrsVersion
    , utgrrsResponseStatus
    ) where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateThingGroup' smart constructor.
data UpdateThingGroup = UpdateThingGroup'
  { thingGroupName :: Types.ThingGroupName
    -- ^ The thing group to update.
  , thingGroupProperties :: Types.ThingGroupProperties
    -- ^ The thing group properties.
  , expectedVersion :: Core.Maybe Core.Integer
    -- ^ The expected version of the thing group. If this does not match the version of the thing group being updated, the update will fail.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateThingGroup' value with any optional fields omitted.
mkUpdateThingGroup
    :: Types.ThingGroupName -- ^ 'thingGroupName'
    -> Types.ThingGroupProperties -- ^ 'thingGroupProperties'
    -> UpdateThingGroup
mkUpdateThingGroup thingGroupName thingGroupProperties
  = UpdateThingGroup'{thingGroupName, thingGroupProperties,
                      expectedVersion = Core.Nothing}

-- | The thing group to update.
--
-- /Note:/ Consider using 'thingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgThingGroupName :: Lens.Lens' UpdateThingGroup Types.ThingGroupName
utgThingGroupName = Lens.field @"thingGroupName"
{-# INLINEABLE utgThingGroupName #-}
{-# DEPRECATED thingGroupName "Use generic-lens or generic-optics with 'thingGroupName' instead"  #-}

-- | The thing group properties.
--
-- /Note:/ Consider using 'thingGroupProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgThingGroupProperties :: Lens.Lens' UpdateThingGroup Types.ThingGroupProperties
utgThingGroupProperties = Lens.field @"thingGroupProperties"
{-# INLINEABLE utgThingGroupProperties #-}
{-# DEPRECATED thingGroupProperties "Use generic-lens or generic-optics with 'thingGroupProperties' instead"  #-}

-- | The expected version of the thing group. If this does not match the version of the thing group being updated, the update will fail.
--
-- /Note:/ Consider using 'expectedVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgExpectedVersion :: Lens.Lens' UpdateThingGroup (Core.Maybe Core.Integer)
utgExpectedVersion = Lens.field @"expectedVersion"
{-# INLINEABLE utgExpectedVersion #-}
{-# DEPRECATED expectedVersion "Use generic-lens or generic-optics with 'expectedVersion' instead"  #-}

instance Core.ToQuery UpdateThingGroup where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateThingGroup where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON UpdateThingGroup where
        toJSON UpdateThingGroup{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("thingGroupProperties" Core..= thingGroupProperties),
                  ("expectedVersion" Core..=) Core.<$> expectedVersion])

instance Core.AWSRequest UpdateThingGroup where
        type Rs UpdateThingGroup = UpdateThingGroupResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PATCH,
                         Core._rqPath = "/thing-groups/" Core.<> Core.toText thingGroupName,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateThingGroupResponse' Core.<$>
                   (x Core..:? "version") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateThingGroupResponse' smart constructor.
data UpdateThingGroupResponse = UpdateThingGroupResponse'
  { version :: Core.Maybe Core.Integer
    -- ^ The version of the updated thing group.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateThingGroupResponse' value with any optional fields omitted.
mkUpdateThingGroupResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateThingGroupResponse
mkUpdateThingGroupResponse responseStatus
  = UpdateThingGroupResponse'{version = Core.Nothing, responseStatus}

-- | The version of the updated thing group.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgrrsVersion :: Lens.Lens' UpdateThingGroupResponse (Core.Maybe Core.Integer)
utgrrsVersion = Lens.field @"version"
{-# INLINEABLE utgrrsVersion #-}
{-# DEPRECATED version "Use generic-lens or generic-optics with 'version' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgrrsResponseStatus :: Lens.Lens' UpdateThingGroupResponse Core.Int
utgrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE utgrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
