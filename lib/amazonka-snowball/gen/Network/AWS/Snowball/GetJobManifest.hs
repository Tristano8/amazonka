{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.GetJobManifest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified @JobId@ value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the @GetJobManifest@ action.
--
-- The manifest is an encrypted file that you can download after your job enters the @WithCustomer@ status. The manifest is decrypted by using the @UnlockCode@ code value, when you pass both values to the Snow device through the Snowball client when the client is started for the first time.
-- As a best practice, we recommend that you don't save a copy of an @UnlockCode@ value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snow device associated with that job.
-- The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.
module Network.AWS.Snowball.GetJobManifest
    (
    -- * Creating a request
      GetJobManifest (..)
    , mkGetJobManifest
    -- ** Request lenses
    , gjmJobId

    -- * Destructuring the response
    , GetJobManifestResponse (..)
    , mkGetJobManifestResponse
    -- ** Response lenses
    , gjmrrsManifestURI
    , gjmrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Snowball.Types as Types

-- | /See:/ 'mkGetJobManifest' smart constructor.
newtype GetJobManifest = GetJobManifest'
  { jobId :: Types.JobId
    -- ^ The ID for a job that you want to get the manifest file for, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetJobManifest' value with any optional fields omitted.
mkGetJobManifest
    :: Types.JobId -- ^ 'jobId'
    -> GetJobManifest
mkGetJobManifest jobId = GetJobManifest'{jobId}

-- | The ID for a job that you want to get the manifest file for, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjmJobId :: Lens.Lens' GetJobManifest Types.JobId
gjmJobId = Lens.field @"jobId"
{-# INLINEABLE gjmJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

instance Core.ToQuery GetJobManifest where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetJobManifest where
        toHeaders GetJobManifest{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSIESnowballJobManagementService.GetJobManifest")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetJobManifest where
        toJSON GetJobManifest{..}
          = Core.object (Core.catMaybes [Core.Just ("JobId" Core..= jobId)])

instance Core.AWSRequest GetJobManifest where
        type Rs GetJobManifest = GetJobManifestResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetJobManifestResponse' Core.<$>
                   (x Core..:? "ManifestURI") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetJobManifestResponse' smart constructor.
data GetJobManifestResponse = GetJobManifestResponse'
  { manifestURI :: Core.Maybe Core.Text
    -- ^ The Amazon S3 presigned URL for the manifest file associated with the specified @JobId@ value.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetJobManifestResponse' value with any optional fields omitted.
mkGetJobManifestResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetJobManifestResponse
mkGetJobManifestResponse responseStatus
  = GetJobManifestResponse'{manifestURI = Core.Nothing,
                            responseStatus}

-- | The Amazon S3 presigned URL for the manifest file associated with the specified @JobId@ value.
--
-- /Note:/ Consider using 'manifestURI' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjmrrsManifestURI :: Lens.Lens' GetJobManifestResponse (Core.Maybe Core.Text)
gjmrrsManifestURI = Lens.field @"manifestURI"
{-# INLINEABLE gjmrrsManifestURI #-}
{-# DEPRECATED manifestURI "Use generic-lens or generic-optics with 'manifestURI' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjmrrsResponseStatus :: Lens.Lens' GetJobManifestResponse Core.Int
gjmrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gjmrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
