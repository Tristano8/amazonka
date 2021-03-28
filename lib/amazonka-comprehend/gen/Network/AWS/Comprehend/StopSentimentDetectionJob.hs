{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.StopSentimentDetectionJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a sentiment detection job in progress.
--
-- If the job state is @IN_PROGRESS@ the job is marked for termination and put into the @STOP_REQUESTED@ state. If the job completes before it can be stopped, it is put into the @COMPLETED@ state; otherwise the job is be stopped and put into the @STOPPED@ state.
-- If the job is in the @COMPLETED@ or @FAILED@ state when you call the @StopDominantLanguageDetectionJob@ operation, the operation returns a 400 Internal Request Exception. 
-- When a job is stopped, any documents already processed are written to the output location.
module Network.AWS.Comprehend.StopSentimentDetectionJob
    (
    -- * Creating a request
      StopSentimentDetectionJob (..)
    , mkStopSentimentDetectionJob
    -- ** Request lenses
    , ssdjJobId

    -- * Destructuring the response
    , StopSentimentDetectionJobResponse (..)
    , mkStopSentimentDetectionJobResponse
    -- ** Response lenses
    , ssdjrfrsJobId
    , ssdjrfrsJobStatus
    , ssdjrfrsResponseStatus
    ) where

import qualified Network.AWS.Comprehend.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopSentimentDetectionJob' smart constructor.
newtype StopSentimentDetectionJob = StopSentimentDetectionJob'
  { jobId :: Types.JobId
    -- ^ The identifier of the sentiment detection job to stop.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopSentimentDetectionJob' value with any optional fields omitted.
mkStopSentimentDetectionJob
    :: Types.JobId -- ^ 'jobId'
    -> StopSentimentDetectionJob
mkStopSentimentDetectionJob jobId
  = StopSentimentDetectionJob'{jobId}

-- | The identifier of the sentiment detection job to stop.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssdjJobId :: Lens.Lens' StopSentimentDetectionJob Types.JobId
ssdjJobId = Lens.field @"jobId"
{-# INLINEABLE ssdjJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

instance Core.ToQuery StopSentimentDetectionJob where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopSentimentDetectionJob where
        toHeaders StopSentimentDetectionJob{..}
          = Core.pure
              ("X-Amz-Target", "Comprehend_20171127.StopSentimentDetectionJob")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopSentimentDetectionJob where
        toJSON StopSentimentDetectionJob{..}
          = Core.object (Core.catMaybes [Core.Just ("JobId" Core..= jobId)])

instance Core.AWSRequest StopSentimentDetectionJob where
        type Rs StopSentimentDetectionJob =
             StopSentimentDetectionJobResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 StopSentimentDetectionJobResponse' Core.<$>
                   (x Core..:? "JobId") Core.<*> x Core..:? "JobStatus" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStopSentimentDetectionJobResponse' smart constructor.
data StopSentimentDetectionJobResponse = StopSentimentDetectionJobResponse'
  { jobId :: Core.Maybe Types.JobId
    -- ^ The identifier of the sentiment detection job to stop.
  , jobStatus :: Core.Maybe Types.JobStatus
    -- ^ Either @STOP_REQUESTED@ if the job is currently running, or @STOPPED@ if the job was previously stopped with the @StopSentimentDetectionJob@ operation.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopSentimentDetectionJobResponse' value with any optional fields omitted.
mkStopSentimentDetectionJobResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StopSentimentDetectionJobResponse
mkStopSentimentDetectionJobResponse responseStatus
  = StopSentimentDetectionJobResponse'{jobId = Core.Nothing,
                                       jobStatus = Core.Nothing, responseStatus}

-- | The identifier of the sentiment detection job to stop.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssdjrfrsJobId :: Lens.Lens' StopSentimentDetectionJobResponse (Core.Maybe Types.JobId)
ssdjrfrsJobId = Lens.field @"jobId"
{-# INLINEABLE ssdjrfrsJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | Either @STOP_REQUESTED@ if the job is currently running, or @STOPPED@ if the job was previously stopped with the @StopSentimentDetectionJob@ operation.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssdjrfrsJobStatus :: Lens.Lens' StopSentimentDetectionJobResponse (Core.Maybe Types.JobStatus)
ssdjrfrsJobStatus = Lens.field @"jobStatus"
{-# INLINEABLE ssdjrfrsJobStatus #-}
{-# DEPRECATED jobStatus "Use generic-lens or generic-optics with 'jobStatus' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssdjrfrsResponseStatus :: Lens.Lens' StopSentimentDetectionJobResponse Core.Int
ssdjrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ssdjrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
