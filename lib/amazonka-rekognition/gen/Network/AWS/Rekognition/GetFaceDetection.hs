{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.GetFaceDetection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets face detection results for a Amazon Rekognition Video analysis started by 'StartFaceDetection' .
--
-- Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling 'StartFaceDetection' which returns a job identifier (@JobId@ ). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to @StartFaceDetection@ . To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetFaceDetection' and pass the job identifier (@JobId@ ) from the initial call to @StartFaceDetection@ .
-- @GetFaceDetection@ returns an array of detected faces (@Faces@ ) sorted by the time the faces were detected. 
-- Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in @MaxResults@ , the value of @NextToken@ in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call @GetFaceDetection@ and populate the @NextToken@ request parameter with the token value returned from the previous call to @GetFaceDetection@ .
module Network.AWS.Rekognition.GetFaceDetection
    (
    -- * Creating a request
      GetFaceDetection (..)
    , mkGetFaceDetection
    -- ** Request lenses
    , gfdJobId
    , gfdMaxResults
    , gfdNextToken

    -- * Destructuring the response
    , GetFaceDetectionResponse (..)
    , mkGetFaceDetectionResponse
    -- ** Response lenses
    , gfdrrsFaces
    , gfdrrsJobStatus
    , gfdrrsNextToken
    , gfdrrsStatusMessage
    , gfdrrsVideoMetadata
    , gfdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetFaceDetection' smart constructor.
data GetFaceDetection = GetFaceDetection'
  { jobId :: Types.JobId
    -- ^ Unique identifier for the face detection job. The @JobId@ is returned from @StartFaceDetection@ .
  , maxResults :: Core.Maybe Core.Natural
    -- ^ Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetFaceDetection' value with any optional fields omitted.
mkGetFaceDetection
    :: Types.JobId -- ^ 'jobId'
    -> GetFaceDetection
mkGetFaceDetection jobId
  = GetFaceDetection'{jobId, maxResults = Core.Nothing,
                      nextToken = Core.Nothing}

-- | Unique identifier for the face detection job. The @JobId@ is returned from @StartFaceDetection@ .
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdJobId :: Lens.Lens' GetFaceDetection Types.JobId
gfdJobId = Lens.field @"jobId"
{-# INLINEABLE gfdJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | Maximum number of results to return per paginated call. The largest value you can specify is 1000. If you specify a value greater than 1000, a maximum of 1000 results is returned. The default value is 1000.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdMaxResults :: Lens.Lens' GetFaceDetection (Core.Maybe Core.Natural)
gfdMaxResults = Lens.field @"maxResults"
{-# INLINEABLE gfdMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | If the previous response was incomplete (because there are more faces to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of faces.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdNextToken :: Lens.Lens' GetFaceDetection (Core.Maybe Types.PaginationToken)
gfdNextToken = Lens.field @"nextToken"
{-# INLINEABLE gfdNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery GetFaceDetection where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetFaceDetection where
        toHeaders GetFaceDetection{..}
          = Core.pure ("X-Amz-Target", "RekognitionService.GetFaceDetection")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetFaceDetection where
        toJSON GetFaceDetection{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("JobId" Core..= jobId),
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest GetFaceDetection where
        type Rs GetFaceDetection = GetFaceDetectionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetFaceDetectionResponse' Core.<$>
                   (x Core..:? "Faces") Core.<*> x Core..:? "JobStatus" Core.<*>
                     x Core..:? "NextToken"
                     Core.<*> x Core..:? "StatusMessage"
                     Core.<*> x Core..:? "VideoMetadata"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetFaceDetectionResponse' smart constructor.
data GetFaceDetectionResponse = GetFaceDetectionResponse'
  { faces :: Core.Maybe [Types.FaceDetection]
    -- ^ An array of faces detected in the video. Each element contains a detected face's details and the time, in milliseconds from the start of the video, the face was detected. 
  , jobStatus :: Core.Maybe Types.VideoJobStatus
    -- ^ The current status of the face detection job.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. 
  , statusMessage :: Core.Maybe Types.StatusMessage
    -- ^ If the job fails, @StatusMessage@ provides a descriptive error message.
  , videoMetadata :: Core.Maybe Types.VideoMetadata
    -- ^ Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition video operation.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetFaceDetectionResponse' value with any optional fields omitted.
mkGetFaceDetectionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetFaceDetectionResponse
mkGetFaceDetectionResponse responseStatus
  = GetFaceDetectionResponse'{faces = Core.Nothing,
                              jobStatus = Core.Nothing, nextToken = Core.Nothing,
                              statusMessage = Core.Nothing, videoMetadata = Core.Nothing,
                              responseStatus}

-- | An array of faces detected in the video. Each element contains a detected face's details and the time, in milliseconds from the start of the video, the face was detected. 
--
-- /Note:/ Consider using 'faces' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsFaces :: Lens.Lens' GetFaceDetectionResponse (Core.Maybe [Types.FaceDetection])
gfdrrsFaces = Lens.field @"faces"
{-# INLINEABLE gfdrrsFaces #-}
{-# DEPRECATED faces "Use generic-lens or generic-optics with 'faces' instead"  #-}

-- | The current status of the face detection job.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsJobStatus :: Lens.Lens' GetFaceDetectionResponse (Core.Maybe Types.VideoJobStatus)
gfdrrsJobStatus = Lens.field @"jobStatus"
{-# INLINEABLE gfdrrsJobStatus #-}
{-# DEPRECATED jobStatus "Use generic-lens or generic-optics with 'jobStatus' instead"  #-}

-- | If the response is truncated, Amazon Rekognition returns this token that you can use in the subsequent request to retrieve the next set of faces. 
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsNextToken :: Lens.Lens' GetFaceDetectionResponse (Core.Maybe Types.PaginationToken)
gfdrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE gfdrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsStatusMessage :: Lens.Lens' GetFaceDetectionResponse (Core.Maybe Types.StatusMessage)
gfdrrsStatusMessage = Lens.field @"statusMessage"
{-# INLINEABLE gfdrrsStatusMessage #-}
{-# DEPRECATED statusMessage "Use generic-lens or generic-optics with 'statusMessage' instead"  #-}

-- | Information about a video that Amazon Rekognition Video analyzed. @Videometadata@ is returned in every page of paginated responses from a Amazon Rekognition video operation.
--
-- /Note:/ Consider using 'videoMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsVideoMetadata :: Lens.Lens' GetFaceDetectionResponse (Core.Maybe Types.VideoMetadata)
gfdrrsVideoMetadata = Lens.field @"videoMetadata"
{-# INLINEABLE gfdrrsVideoMetadata #-}
{-# DEPRECATED videoMetadata "Use generic-lens or generic-optics with 'videoMetadata' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gfdrrsResponseStatus :: Lens.Lens' GetFaceDetectionResponse Core.Int
gfdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gfdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
