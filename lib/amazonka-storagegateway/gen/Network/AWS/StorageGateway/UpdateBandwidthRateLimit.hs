{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.UpdateBandwidthRateLimit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains. This operation is supported for the stored volume, cached volume, and tape gateway types.
--
-- By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth.
-- To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.
module Network.AWS.StorageGateway.UpdateBandwidthRateLimit
    (
    -- * Creating a request
      UpdateBandwidthRateLimit (..)
    , mkUpdateBandwidthRateLimit
    -- ** Request lenses
    , ubrlGatewayARN
    , ubrlAverageDownloadRateLimitInBitsPerSec
    , ubrlAverageUploadRateLimitInBitsPerSec

    -- * Destructuring the response
    , UpdateBandwidthRateLimitResponse (..)
    , mkUpdateBandwidthRateLimitResponse
    -- ** Response lenses
    , ubrlrrsGatewayARN
    , ubrlrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec' 
--
--
--     * 'UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec' 
--
--
--
-- /See:/ 'mkUpdateBandwidthRateLimit' smart constructor.
data UpdateBandwidthRateLimit = UpdateBandwidthRateLimit'
  { gatewayARN :: Types.GatewayARN
  , averageDownloadRateLimitInBitsPerSec :: Core.Maybe Core.Natural
    -- ^ The average download bandwidth rate limit in bits per second.
  , averageUploadRateLimitInBitsPerSec :: Core.Maybe Core.Natural
    -- ^ The average upload bandwidth rate limit in bits per second.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateBandwidthRateLimit' value with any optional fields omitted.
mkUpdateBandwidthRateLimit
    :: Types.GatewayARN -- ^ 'gatewayARN'
    -> UpdateBandwidthRateLimit
mkUpdateBandwidthRateLimit gatewayARN
  = UpdateBandwidthRateLimit'{gatewayARN,
                              averageDownloadRateLimitInBitsPerSec = Core.Nothing,
                              averageUploadRateLimitInBitsPerSec = Core.Nothing}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ubrlGatewayARN :: Lens.Lens' UpdateBandwidthRateLimit Types.GatewayARN
ubrlGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE ubrlGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | The average download bandwidth rate limit in bits per second.
--
-- /Note:/ Consider using 'averageDownloadRateLimitInBitsPerSec' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ubrlAverageDownloadRateLimitInBitsPerSec :: Lens.Lens' UpdateBandwidthRateLimit (Core.Maybe Core.Natural)
ubrlAverageDownloadRateLimitInBitsPerSec = Lens.field @"averageDownloadRateLimitInBitsPerSec"
{-# INLINEABLE ubrlAverageDownloadRateLimitInBitsPerSec #-}
{-# DEPRECATED averageDownloadRateLimitInBitsPerSec "Use generic-lens or generic-optics with 'averageDownloadRateLimitInBitsPerSec' instead"  #-}

-- | The average upload bandwidth rate limit in bits per second.
--
-- /Note:/ Consider using 'averageUploadRateLimitInBitsPerSec' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ubrlAverageUploadRateLimitInBitsPerSec :: Lens.Lens' UpdateBandwidthRateLimit (Core.Maybe Core.Natural)
ubrlAverageUploadRateLimitInBitsPerSec = Lens.field @"averageUploadRateLimitInBitsPerSec"
{-# INLINEABLE ubrlAverageUploadRateLimitInBitsPerSec #-}
{-# DEPRECATED averageUploadRateLimitInBitsPerSec "Use generic-lens or generic-optics with 'averageUploadRateLimitInBitsPerSec' instead"  #-}

instance Core.ToQuery UpdateBandwidthRateLimit where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateBandwidthRateLimit where
        toHeaders UpdateBandwidthRateLimit{..}
          = Core.pure
              ("X-Amz-Target",
               "StorageGateway_20130630.UpdateBandwidthRateLimit")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateBandwidthRateLimit where
        toJSON UpdateBandwidthRateLimit{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("GatewayARN" Core..= gatewayARN),
                  ("AverageDownloadRateLimitInBitsPerSec" Core..=) Core.<$>
                    averageDownloadRateLimitInBitsPerSec,
                  ("AverageUploadRateLimitInBitsPerSec" Core..=) Core.<$>
                    averageUploadRateLimitInBitsPerSec])

instance Core.AWSRequest UpdateBandwidthRateLimit where
        type Rs UpdateBandwidthRateLimit = UpdateBandwidthRateLimitResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateBandwidthRateLimitResponse' Core.<$>
                   (x Core..:? "GatewayARN") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway whose throttle information was updated.
--
-- /See:/ 'mkUpdateBandwidthRateLimitResponse' smart constructor.
data UpdateBandwidthRateLimitResponse = UpdateBandwidthRateLimitResponse'
  { gatewayARN :: Core.Maybe Types.GatewayARN
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateBandwidthRateLimitResponse' value with any optional fields omitted.
mkUpdateBandwidthRateLimitResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateBandwidthRateLimitResponse
mkUpdateBandwidthRateLimitResponse responseStatus
  = UpdateBandwidthRateLimitResponse'{gatewayARN = Core.Nothing,
                                      responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ubrlrrsGatewayARN :: Lens.Lens' UpdateBandwidthRateLimitResponse (Core.Maybe Types.GatewayARN)
ubrlrrsGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE ubrlrrsGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ubrlrrsResponseStatus :: Lens.Lens' UpdateBandwidthRateLimitResponse Core.Int
ubrlrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ubrlrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
