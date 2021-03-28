{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.ListLanguageModels
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.
module Network.AWS.Transcribe.ListLanguageModels
    (
    -- * Creating a request
      ListLanguageModels (..)
    , mkListLanguageModels
    -- ** Request lenses
    , llmMaxResults
    , llmNameContains
    , llmNextToken
    , llmStatusEquals

    -- * Destructuring the response
    , ListLanguageModelsResponse (..)
    , mkListLanguageModelsResponse
    -- ** Response lenses
    , llmrrsModels
    , llmrrsNextToken
    , llmrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Transcribe.Types as Types

-- | /See:/ 'mkListLanguageModels' smart constructor.
data ListLanguageModels = ListLanguageModels'
  { maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of language models to return in the response. If there are fewer results in the list, the response contains only the actual results.
  , nameContains :: Core.Maybe Types.ModelName
    -- ^ When specified, the custom language model names returned contain the substring you've specified.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ When included, fetches the next set of jobs if the result of the previous request was truncated.
  , statusEquals :: Core.Maybe Types.ModelStatus
    -- ^ When specified, returns only custom language models with the specified status. Language models are ordered by creation date, with the newest models first. If you don't specify a status, Amazon Transcribe returns all custom language models ordered by date.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListLanguageModels' value with any optional fields omitted.
mkListLanguageModels
    :: ListLanguageModels
mkListLanguageModels
  = ListLanguageModels'{maxResults = Core.Nothing,
                        nameContains = Core.Nothing, nextToken = Core.Nothing,
                        statusEquals = Core.Nothing}

-- | The maximum number of language models to return in the response. If there are fewer results in the list, the response contains only the actual results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmMaxResults :: Lens.Lens' ListLanguageModels (Core.Maybe Core.Natural)
llmMaxResults = Lens.field @"maxResults"
{-# INLINEABLE llmMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | When specified, the custom language model names returned contain the substring you've specified.
--
-- /Note:/ Consider using 'nameContains' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmNameContains :: Lens.Lens' ListLanguageModels (Core.Maybe Types.ModelName)
llmNameContains = Lens.field @"nameContains"
{-# INLINEABLE llmNameContains #-}
{-# DEPRECATED nameContains "Use generic-lens or generic-optics with 'nameContains' instead"  #-}

-- | When included, fetches the next set of jobs if the result of the previous request was truncated.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmNextToken :: Lens.Lens' ListLanguageModels (Core.Maybe Types.NextToken)
llmNextToken = Lens.field @"nextToken"
{-# INLINEABLE llmNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | When specified, returns only custom language models with the specified status. Language models are ordered by creation date, with the newest models first. If you don't specify a status, Amazon Transcribe returns all custom language models ordered by date.
--
-- /Note:/ Consider using 'statusEquals' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmStatusEquals :: Lens.Lens' ListLanguageModels (Core.Maybe Types.ModelStatus)
llmStatusEquals = Lens.field @"statusEquals"
{-# INLINEABLE llmStatusEquals #-}
{-# DEPRECATED statusEquals "Use generic-lens or generic-optics with 'statusEquals' instead"  #-}

instance Core.ToQuery ListLanguageModels where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListLanguageModels where
        toHeaders ListLanguageModels{..}
          = Core.pure ("X-Amz-Target", "Transcribe.ListLanguageModels")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListLanguageModels where
        toJSON ListLanguageModels{..}
          = Core.object
              (Core.catMaybes
                 [("MaxResults" Core..=) Core.<$> maxResults,
                  ("NameContains" Core..=) Core.<$> nameContains,
                  ("NextToken" Core..=) Core.<$> nextToken,
                  ("StatusEquals" Core..=) Core.<$> statusEquals])

instance Core.AWSRequest ListLanguageModels where
        type Rs ListLanguageModels = ListLanguageModelsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListLanguageModelsResponse' Core.<$>
                   (x Core..:? "Models") Core.<*> x Core..:? "NextToken" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkListLanguageModelsResponse' smart constructor.
data ListLanguageModelsResponse = ListLanguageModelsResponse'
  { models :: Core.Maybe [Types.LanguageModel]
    -- ^ A list of objects containing information about custom language models.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The operation returns a page of jobs at a time. The maximum size of the list is set by the MaxResults parameter. If there are more language models in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the operation to return the next page of language models.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListLanguageModelsResponse' value with any optional fields omitted.
mkListLanguageModelsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListLanguageModelsResponse
mkListLanguageModelsResponse responseStatus
  = ListLanguageModelsResponse'{models = Core.Nothing,
                                nextToken = Core.Nothing, responseStatus}

-- | A list of objects containing information about custom language models.
--
-- /Note:/ Consider using 'models' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmrrsModels :: Lens.Lens' ListLanguageModelsResponse (Core.Maybe [Types.LanguageModel])
llmrrsModels = Lens.field @"models"
{-# INLINEABLE llmrrsModels #-}
{-# DEPRECATED models "Use generic-lens or generic-optics with 'models' instead"  #-}

-- | The operation returns a page of jobs at a time. The maximum size of the list is set by the MaxResults parameter. If there are more language models in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the operation to return the next page of language models.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmrrsNextToken :: Lens.Lens' ListLanguageModelsResponse (Core.Maybe Types.NextToken)
llmrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE llmrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
llmrrsResponseStatus :: Lens.Lens' ListLanguageModelsResponse Core.Int
llmrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE llmrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
