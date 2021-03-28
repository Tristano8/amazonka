{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.GetConnectionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the Session Manager connection status for an instance to determine whether it is running and ready to receive Session Manager connections.
module Network.AWS.SSM.GetConnectionStatus
    (
    -- * Creating a request
      GetConnectionStatus (..)
    , mkGetConnectionStatus
    -- ** Request lenses
    , gcsTarget

    -- * Destructuring the response
    , GetConnectionStatusResponse (..)
    , mkGetConnectionStatusResponse
    -- ** Response lenses
    , gcsrrsStatus
    , gcsrrsTarget
    , gcsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SSM.Types as Types

-- | /See:/ 'mkGetConnectionStatus' smart constructor.
newtype GetConnectionStatus = GetConnectionStatus'
  { target :: Types.SessionTarget
    -- ^ The ID of the instance.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetConnectionStatus' value with any optional fields omitted.
mkGetConnectionStatus
    :: Types.SessionTarget -- ^ 'target'
    -> GetConnectionStatus
mkGetConnectionStatus target = GetConnectionStatus'{target}

-- | The ID of the instance.
--
-- /Note:/ Consider using 'target' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsTarget :: Lens.Lens' GetConnectionStatus Types.SessionTarget
gcsTarget = Lens.field @"target"
{-# INLINEABLE gcsTarget #-}
{-# DEPRECATED target "Use generic-lens or generic-optics with 'target' instead"  #-}

instance Core.ToQuery GetConnectionStatus where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetConnectionStatus where
        toHeaders GetConnectionStatus{..}
          = Core.pure ("X-Amz-Target", "AmazonSSM.GetConnectionStatus")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetConnectionStatus where
        toJSON GetConnectionStatus{..}
          = Core.object
              (Core.catMaybes [Core.Just ("Target" Core..= target)])

instance Core.AWSRequest GetConnectionStatus where
        type Rs GetConnectionStatus = GetConnectionStatusResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetConnectionStatusResponse' Core.<$>
                   (x Core..:? "Status") Core.<*> x Core..:? "Target" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetConnectionStatusResponse' smart constructor.
data GetConnectionStatusResponse = GetConnectionStatusResponse'
  { status :: Core.Maybe Types.ConnectionStatus
    -- ^ The status of the connection to the instance. For example, 'Connected' or 'Not Connected'.
  , target :: Core.Maybe Types.SessionTarget
    -- ^ The ID of the instance to check connection status. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetConnectionStatusResponse' value with any optional fields omitted.
mkGetConnectionStatusResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetConnectionStatusResponse
mkGetConnectionStatusResponse responseStatus
  = GetConnectionStatusResponse'{status = Core.Nothing,
                                 target = Core.Nothing, responseStatus}

-- | The status of the connection to the instance. For example, 'Connected' or 'Not Connected'.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsrrsStatus :: Lens.Lens' GetConnectionStatusResponse (Core.Maybe Types.ConnectionStatus)
gcsrrsStatus = Lens.field @"status"
{-# INLINEABLE gcsrrsStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The ID of the instance to check connection status. 
--
-- /Note:/ Consider using 'target' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsrrsTarget :: Lens.Lens' GetConnectionStatusResponse (Core.Maybe Types.SessionTarget)
gcsrrsTarget = Lens.field @"target"
{-# INLINEABLE gcsrrsTarget #-}
{-# DEPRECATED target "Use generic-lens or generic-optics with 'target' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsrrsResponseStatus :: Lens.Lens' GetConnectionStatusResponse Core.Int
gcsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gcsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
