{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.ListApplications
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the @HasMoreApplications@ value as true, you can send another request by adding the @ExclusiveStartApplicationName@ in the request body, and set the value of this to the last application name from the previous response. 
--
-- If you want detailed information about a specific application, use <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> .
-- This operation requires permissions to perform the @kinesisanalytics:ListApplications@ action.
module Network.AWS.KinesisAnalytics.ListApplications
    (
    -- * Creating a request
      ListApplications (..)
    , mkListApplications
    -- ** Request lenses
    , laExclusiveStartApplicationName
    , laLimit

    -- * Destructuring the response
    , ListApplicationsResponse (..)
    , mkListApplicationsResponse
    -- ** Response lenses
    , larrsApplicationSummaries
    , larrsHasMoreApplications
    , larrsResponseStatus
    ) where

import qualified Network.AWS.KinesisAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | 
--
-- /See:/ 'mkListApplications' smart constructor.
data ListApplications = ListApplications'
  { exclusiveStartApplicationName :: Core.Maybe Types.ExclusiveStartApplicationName
    -- ^ Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.
  , limit :: Core.Maybe Core.Natural
    -- ^ Maximum number of applications to list.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListApplications' value with any optional fields omitted.
mkListApplications
    :: ListApplications
mkListApplications
  = ListApplications'{exclusiveStartApplicationName = Core.Nothing,
                      limit = Core.Nothing}

-- | Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.
--
-- /Note:/ Consider using 'exclusiveStartApplicationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laExclusiveStartApplicationName :: Lens.Lens' ListApplications (Core.Maybe Types.ExclusiveStartApplicationName)
laExclusiveStartApplicationName = Lens.field @"exclusiveStartApplicationName"
{-# INLINEABLE laExclusiveStartApplicationName #-}
{-# DEPRECATED exclusiveStartApplicationName "Use generic-lens or generic-optics with 'exclusiveStartApplicationName' instead"  #-}

-- | Maximum number of applications to list.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
laLimit :: Lens.Lens' ListApplications (Core.Maybe Core.Natural)
laLimit = Lens.field @"limit"
{-# INLINEABLE laLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

instance Core.ToQuery ListApplications where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListApplications where
        toHeaders ListApplications{..}
          = Core.pure
              ("X-Amz-Target", "KinesisAnalytics_20150814.ListApplications")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListApplications where
        toJSON ListApplications{..}
          = Core.object
              (Core.catMaybes
                 [("ExclusiveStartApplicationName" Core..=) Core.<$>
                    exclusiveStartApplicationName,
                  ("Limit" Core..=) Core.<$> limit])

instance Core.AWSRequest ListApplications where
        type Rs ListApplications = ListApplicationsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListApplicationsResponse' Core.<$>
                   (x Core..:? "ApplicationSummaries" Core..!= Core.mempty) Core.<*>
                     x Core..: "HasMoreApplications"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | 
--
-- /See:/ 'mkListApplicationsResponse' smart constructor.
data ListApplicationsResponse = ListApplicationsResponse'
  { applicationSummaries :: [Types.ApplicationSummary]
    -- ^ List of @ApplicationSummary@ objects. 
  , hasMoreApplications :: Core.Bool
    -- ^ Returns true if there are more applications to retrieve.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListApplicationsResponse' value with any optional fields omitted.
mkListApplicationsResponse
    :: Core.Bool -- ^ 'hasMoreApplications'
    -> Core.Int -- ^ 'responseStatus'
    -> ListApplicationsResponse
mkListApplicationsResponse hasMoreApplications responseStatus
  = ListApplicationsResponse'{applicationSummaries = Core.mempty,
                              hasMoreApplications, responseStatus}

-- | List of @ApplicationSummary@ objects. 
--
-- /Note:/ Consider using 'applicationSummaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsApplicationSummaries :: Lens.Lens' ListApplicationsResponse [Types.ApplicationSummary]
larrsApplicationSummaries = Lens.field @"applicationSummaries"
{-# INLINEABLE larrsApplicationSummaries #-}
{-# DEPRECATED applicationSummaries "Use generic-lens or generic-optics with 'applicationSummaries' instead"  #-}

-- | Returns true if there are more applications to retrieve.
--
-- /Note:/ Consider using 'hasMoreApplications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsHasMoreApplications :: Lens.Lens' ListApplicationsResponse Core.Bool
larrsHasMoreApplications = Lens.field @"hasMoreApplications"
{-# INLINEABLE larrsHasMoreApplications #-}
{-# DEPRECATED hasMoreApplications "Use generic-lens or generic-optics with 'hasMoreApplications' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
larrsResponseStatus :: Lens.Lens' ListApplicationsResponse Core.Int
larrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE larrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
