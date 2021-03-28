{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetContainerServicePowers
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of powers that can be specified for your Amazon Lightsail container services.
--
-- The power specifies the amount of memory, the number of vCPUs, and the base price of the container service.
module Network.AWS.Lightsail.GetContainerServicePowers
    (
    -- * Creating a request
      GetContainerServicePowers (..)
    , mkGetContainerServicePowers

    -- * Destructuring the response
    , GetContainerServicePowersResponse (..)
    , mkGetContainerServicePowersResponse
    -- ** Response lenses
    , gcsprrsPowers
    , gcsprrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetContainerServicePowers' smart constructor.
data GetContainerServicePowers = GetContainerServicePowers'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetContainerServicePowers' value with any optional fields omitted.
mkGetContainerServicePowers
    :: GetContainerServicePowers
mkGetContainerServicePowers = GetContainerServicePowers'

instance Core.ToQuery GetContainerServicePowers where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetContainerServicePowers where
        toHeaders GetContainerServicePowers{..}
          = Core.pure
              ("X-Amz-Target", "Lightsail_20161128.GetContainerServicePowers")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetContainerServicePowers where
        toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest GetContainerServicePowers where
        type Rs GetContainerServicePowers =
             GetContainerServicePowersResponse
        toRequest x@_
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetContainerServicePowersResponse' Core.<$>
                   (x Core..:? "powers") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetContainerServicePowersResponse' smart constructor.
data GetContainerServicePowersResponse = GetContainerServicePowersResponse'
  { powers :: Core.Maybe [Types.ContainerServicePower]
    -- ^ An array of objects that describe the powers that can be specified for a container service.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetContainerServicePowersResponse' value with any optional fields omitted.
mkGetContainerServicePowersResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetContainerServicePowersResponse
mkGetContainerServicePowersResponse responseStatus
  = GetContainerServicePowersResponse'{powers = Core.Nothing,
                                       responseStatus}

-- | An array of objects that describe the powers that can be specified for a container service.
--
-- /Note:/ Consider using 'powers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsprrsPowers :: Lens.Lens' GetContainerServicePowersResponse (Core.Maybe [Types.ContainerServicePower])
gcsprrsPowers = Lens.field @"powers"
{-# INLINEABLE gcsprrsPowers #-}
{-# DEPRECATED powers "Use generic-lens or generic-optics with 'powers' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcsprrsResponseStatus :: Lens.Lens' GetContainerServicePowersResponse Core.Int
gcsprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gcsprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
