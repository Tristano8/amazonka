{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.GetCelebrityInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the name and additional information about a celebrity based on his or her Amazon Rekognition ID. The additional information is returned as an array of URLs. If there is no additional information about the celebrity, this list is empty.
--
-- For more information, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.
-- This operation requires permissions to perform the @rekognition:GetCelebrityInfo@ action. 
module Network.AWS.Rekognition.GetCelebrityInfo
    (
    -- * Creating a request
      GetCelebrityInfo (..)
    , mkGetCelebrityInfo
    -- ** Request lenses
    , gciId

    -- * Destructuring the response
    , GetCelebrityInfoResponse (..)
    , mkGetCelebrityInfoResponse
    -- ** Response lenses
    , gcirrsName
    , gcirrsUrls
    , gcirrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetCelebrityInfo' smart constructor.
newtype GetCelebrityInfo = GetCelebrityInfo'
  { id :: Types.Id
    -- ^ The ID for the celebrity. You get the celebrity ID from a call to the 'RecognizeCelebrities' operation, which recognizes celebrities in an image. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetCelebrityInfo' value with any optional fields omitted.
mkGetCelebrityInfo
    :: Types.Id -- ^ 'id'
    -> GetCelebrityInfo
mkGetCelebrityInfo id = GetCelebrityInfo'{id}

-- | The ID for the celebrity. You get the celebrity ID from a call to the 'RecognizeCelebrities' operation, which recognizes celebrities in an image. 
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gciId :: Lens.Lens' GetCelebrityInfo Types.Id
gciId = Lens.field @"id"
{-# INLINEABLE gciId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

instance Core.ToQuery GetCelebrityInfo where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetCelebrityInfo where
        toHeaders GetCelebrityInfo{..}
          = Core.pure ("X-Amz-Target", "RekognitionService.GetCelebrityInfo")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetCelebrityInfo where
        toJSON GetCelebrityInfo{..}
          = Core.object (Core.catMaybes [Core.Just ("Id" Core..= id)])

instance Core.AWSRequest GetCelebrityInfo where
        type Rs GetCelebrityInfo = GetCelebrityInfoResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetCelebrityInfoResponse' Core.<$>
                   (x Core..:? "Name") Core.<*> x Core..:? "Urls" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetCelebrityInfoResponse' smart constructor.
data GetCelebrityInfoResponse = GetCelebrityInfoResponse'
  { name :: Core.Maybe Core.Text
    -- ^ The name of the celebrity.
  , urls :: Core.Maybe [Types.Url]
    -- ^ An array of URLs pointing to additional celebrity information. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetCelebrityInfoResponse' value with any optional fields omitted.
mkGetCelebrityInfoResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetCelebrityInfoResponse
mkGetCelebrityInfoResponse responseStatus
  = GetCelebrityInfoResponse'{name = Core.Nothing,
                              urls = Core.Nothing, responseStatus}

-- | The name of the celebrity.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcirrsName :: Lens.Lens' GetCelebrityInfoResponse (Core.Maybe Core.Text)
gcirrsName = Lens.field @"name"
{-# INLINEABLE gcirrsName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | An array of URLs pointing to additional celebrity information. 
--
-- /Note:/ Consider using 'urls' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcirrsUrls :: Lens.Lens' GetCelebrityInfoResponse (Core.Maybe [Types.Url])
gcirrsUrls = Lens.field @"urls"
{-# INLINEABLE gcirrsUrls #-}
{-# DEPRECATED urls "Use generic-lens or generic-optics with 'urls' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcirrsResponseStatus :: Lens.Lens' GetCelebrityInfoResponse Core.Int
gcirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gcirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
