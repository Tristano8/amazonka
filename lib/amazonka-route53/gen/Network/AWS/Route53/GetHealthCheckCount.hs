{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.GetHealthCheckCount
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the number of health checks that are associated with the current AWS account.
module Network.AWS.Route53.GetHealthCheckCount
    (
    -- * Creating a request
      GetHealthCheckCount (..)
    , mkGetHealthCheckCount

    -- * Destructuring the response
    , GetHealthCheckCountResponse (..)
    , mkGetHealthCheckCountResponse
    -- ** Response lenses
    , ghccrrsHealthCheckCount
    , ghccrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53.Types as Types

-- | A request for the number of health checks that are associated with the current AWS account.
--
-- /See:/ 'mkGetHealthCheckCount' smart constructor.
data GetHealthCheckCount = GetHealthCheckCount'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetHealthCheckCount' value with any optional fields omitted.
mkGetHealthCheckCount
    :: GetHealthCheckCount
mkGetHealthCheckCount = GetHealthCheckCount'

instance Core.ToQuery GetHealthCheckCount where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetHealthCheckCount where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest GetHealthCheckCount where
        type Rs GetHealthCheckCount = GetHealthCheckCountResponse
        toRequest x@_
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath = "/2013-04-01/healthcheckcount",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 GetHealthCheckCountResponse' Core.<$>
                   (x Core..@ "HealthCheckCount") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | A complex type that contains the response to a @GetHealthCheckCount@ request.
--
-- /See:/ 'mkGetHealthCheckCountResponse' smart constructor.
data GetHealthCheckCountResponse = GetHealthCheckCountResponse'
  { healthCheckCount :: Core.Integer
    -- ^ The number of health checks associated with the current AWS account.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetHealthCheckCountResponse' value with any optional fields omitted.
mkGetHealthCheckCountResponse
    :: Core.Integer -- ^ 'healthCheckCount'
    -> Core.Int -- ^ 'responseStatus'
    -> GetHealthCheckCountResponse
mkGetHealthCheckCountResponse healthCheckCount responseStatus
  = GetHealthCheckCountResponse'{healthCheckCount, responseStatus}

-- | The number of health checks associated with the current AWS account.
--
-- /Note:/ Consider using 'healthCheckCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghccrrsHealthCheckCount :: Lens.Lens' GetHealthCheckCountResponse Core.Integer
ghccrrsHealthCheckCount = Lens.field @"healthCheckCount"
{-# INLINEABLE ghccrrsHealthCheckCount #-}
{-# DEPRECATED healthCheckCount "Use generic-lens or generic-optics with 'healthCheckCount' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ghccrrsResponseStatus :: Lens.Lens' GetHealthCheckCountResponse Core.Int
ghccrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ghccrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
