{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.StartCelebrityRecognition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous recognition of celebrities in a stored video.
--
-- Amazon Rekognition Video can detect celebrities in a video must be stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartCelebrityRecognition@ returns a job identifier (@JobId@ ) which you use to get the results of the analysis. When celebrity recognition analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ . To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetCelebrityRecognition' and pass the job identifier (@JobId@ ) from the initial call to @StartCelebrityRecognition@ . 
-- For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.StartCelebrityRecognition
    (
    -- * Creating a request
      StartCelebrityRecognition (..)
    , mkStartCelebrityRecognition
    -- ** Request lenses
    , scrVideo
    , scrClientRequestToken
    , scrJobTag
    , scrNotificationChannel

    -- * Destructuring the response
    , StartCelebrityRecognitionResponse (..)
    , mkStartCelebrityRecognitionResponse
    -- ** Response lenses
    , scrrrsJobId
    , scrrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartCelebrityRecognition' smart constructor.
data StartCelebrityRecognition = StartCelebrityRecognition'
  { video :: Types.Video
    -- ^ The video in which you want to recognize celebrities. The video must be stored in an Amazon S3 bucket.
  , clientRequestToken :: Core.Maybe Types.ClientRequestToken
    -- ^ Idempotent token used to identify the start request. If you use the same token with multiple @StartCelebrityRecognition@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once. 
  , jobTag :: Core.Maybe Types.JobTag
    -- ^ An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
  , notificationChannel :: Core.Maybe Types.NotificationChannel
    -- ^ The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the celebrity recognition analysis to.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartCelebrityRecognition' value with any optional fields omitted.
mkStartCelebrityRecognition
    :: Types.Video -- ^ 'video'
    -> StartCelebrityRecognition
mkStartCelebrityRecognition video
  = StartCelebrityRecognition'{video,
                               clientRequestToken = Core.Nothing, jobTag = Core.Nothing,
                               notificationChannel = Core.Nothing}

-- | The video in which you want to recognize celebrities. The video must be stored in an Amazon S3 bucket.
--
-- /Note:/ Consider using 'video' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrVideo :: Lens.Lens' StartCelebrityRecognition Types.Video
scrVideo = Lens.field @"video"
{-# INLINEABLE scrVideo #-}
{-# DEPRECATED video "Use generic-lens or generic-optics with 'video' instead"  #-}

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartCelebrityRecognition@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once. 
--
-- /Note:/ Consider using 'clientRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrClientRequestToken :: Lens.Lens' StartCelebrityRecognition (Core.Maybe Types.ClientRequestToken)
scrClientRequestToken = Lens.field @"clientRequestToken"
{-# INLINEABLE scrClientRequestToken #-}
{-# DEPRECATED clientRequestToken "Use generic-lens or generic-optics with 'clientRequestToken' instead"  #-}

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- /Note:/ Consider using 'jobTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrJobTag :: Lens.Lens' StartCelebrityRecognition (Core.Maybe Types.JobTag)
scrJobTag = Lens.field @"jobTag"
{-# INLINEABLE scrJobTag #-}
{-# DEPRECATED jobTag "Use generic-lens or generic-optics with 'jobTag' instead"  #-}

-- | The Amazon SNS topic ARN that you want Amazon Rekognition Video to publish the completion status of the celebrity recognition analysis to.
--
-- /Note:/ Consider using 'notificationChannel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrNotificationChannel :: Lens.Lens' StartCelebrityRecognition (Core.Maybe Types.NotificationChannel)
scrNotificationChannel = Lens.field @"notificationChannel"
{-# INLINEABLE scrNotificationChannel #-}
{-# DEPRECATED notificationChannel "Use generic-lens or generic-optics with 'notificationChannel' instead"  #-}

instance Core.ToQuery StartCelebrityRecognition where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StartCelebrityRecognition where
        toHeaders StartCelebrityRecognition{..}
          = Core.pure
              ("X-Amz-Target", "RekognitionService.StartCelebrityRecognition")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StartCelebrityRecognition where
        toJSON StartCelebrityRecognition{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Video" Core..= video),
                  ("ClientRequestToken" Core..=) Core.<$> clientRequestToken,
                  ("JobTag" Core..=) Core.<$> jobTag,
                  ("NotificationChannel" Core..=) Core.<$> notificationChannel])

instance Core.AWSRequest StartCelebrityRecognition where
        type Rs StartCelebrityRecognition =
             StartCelebrityRecognitionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 StartCelebrityRecognitionResponse' Core.<$>
                   (x Core..:? "JobId") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStartCelebrityRecognitionResponse' smart constructor.
data StartCelebrityRecognitionResponse = StartCelebrityRecognitionResponse'
  { jobId :: Core.Maybe Types.JobId
    -- ^ The identifier for the celebrity recognition analysis job. Use @JobId@ to identify the job in a subsequent call to @GetCelebrityRecognition@ .
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartCelebrityRecognitionResponse' value with any optional fields omitted.
mkStartCelebrityRecognitionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StartCelebrityRecognitionResponse
mkStartCelebrityRecognitionResponse responseStatus
  = StartCelebrityRecognitionResponse'{jobId = Core.Nothing,
                                       responseStatus}

-- | The identifier for the celebrity recognition analysis job. Use @JobId@ to identify the job in a subsequent call to @GetCelebrityRecognition@ .
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrrrsJobId :: Lens.Lens' StartCelebrityRecognitionResponse (Core.Maybe Types.JobId)
scrrrsJobId = Lens.field @"jobId"
{-# INLINEABLE scrrrsJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scrrrsResponseStatus :: Lens.Lens' StartCelebrityRecognitionResponse Core.Int
scrrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE scrrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
