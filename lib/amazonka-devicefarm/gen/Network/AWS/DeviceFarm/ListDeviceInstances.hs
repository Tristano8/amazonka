{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListDeviceInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the private device instances associated with one or more AWS accounts.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListDeviceInstances
    (
    -- * Creating a request
      ListDeviceInstances (..)
    , mkListDeviceInstances
    -- ** Request lenses
    , ldiMaxResults
    , ldiNextToken

    -- * Destructuring the response
    , ListDeviceInstancesResponse (..)
    , mkListDeviceInstancesResponse
    -- ** Response lenses
    , ldirrsDeviceInstances
    , ldirrsNextToken
    , ldirrsResponseStatus
    ) where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListDeviceInstances' smart constructor.
data ListDeviceInstances = ListDeviceInstances'
  { maxResults :: Core.Maybe Core.Int
    -- ^ An integer that specifies the maximum number of items you want to return in the API response.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDeviceInstances' value with any optional fields omitted.
mkListDeviceInstances
    :: ListDeviceInstances
mkListDeviceInstances
  = ListDeviceInstances'{maxResults = Core.Nothing,
                         nextToken = Core.Nothing}

-- | An integer that specifies the maximum number of items you want to return in the API response.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldiMaxResults :: Lens.Lens' ListDeviceInstances (Core.Maybe Core.Int)
ldiMaxResults = Lens.field @"maxResults"
{-# INLINEABLE ldiMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldiNextToken :: Lens.Lens' ListDeviceInstances (Core.Maybe Types.PaginationToken)
ldiNextToken = Lens.field @"nextToken"
{-# INLINEABLE ldiNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListDeviceInstances where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListDeviceInstances where
        toHeaders ListDeviceInstances{..}
          = Core.pure
              ("X-Amz-Target", "DeviceFarm_20150623.ListDeviceInstances")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListDeviceInstances where
        toJSON ListDeviceInstances{..}
          = Core.object
              (Core.catMaybes
                 [("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest ListDeviceInstances where
        type Rs ListDeviceInstances = ListDeviceInstancesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListDeviceInstancesResponse' Core.<$>
                   (x Core..:? "deviceInstances") Core.<*> x Core..:? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListDeviceInstances where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"deviceInstances" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListDeviceInstancesResponse' smart constructor.
data ListDeviceInstancesResponse = ListDeviceInstancesResponse'
  { deviceInstances :: Core.Maybe [Types.DeviceInstance]
    -- ^ An object that contains information about your device instances.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ An identifier that can be used in the next call to this operation to return the next set of items in the list.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListDeviceInstancesResponse' value with any optional fields omitted.
mkListDeviceInstancesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListDeviceInstancesResponse
mkListDeviceInstancesResponse responseStatus
  = ListDeviceInstancesResponse'{deviceInstances = Core.Nothing,
                                 nextToken = Core.Nothing, responseStatus}

-- | An object that contains information about your device instances.
--
-- /Note:/ Consider using 'deviceInstances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldirrsDeviceInstances :: Lens.Lens' ListDeviceInstancesResponse (Core.Maybe [Types.DeviceInstance])
ldirrsDeviceInstances = Lens.field @"deviceInstances"
{-# INLINEABLE ldirrsDeviceInstances #-}
{-# DEPRECATED deviceInstances "Use generic-lens or generic-optics with 'deviceInstances' instead"  #-}

-- | An identifier that can be used in the next call to this operation to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldirrsNextToken :: Lens.Lens' ListDeviceInstancesResponse (Core.Maybe Types.PaginationToken)
ldirrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ldirrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldirrsResponseStatus :: Lens.Lens' ListDeviceInstancesResponse Core.Int
ldirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ldirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
