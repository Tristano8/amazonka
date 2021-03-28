{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.DescribeApplication
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific Amazon Kinesis Analytics application.
--
-- If you want to retrieve a list of all applications in your account, use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html ListApplications> operation.
-- This operation requires permissions to perform the @kinesisanalytics:DescribeApplication@ action. You can use @DescribeApplication@ to get the current application versionId, which you need to call other operations such as @Update@ . 
module Network.AWS.KinesisAnalytics.DescribeApplication
    (
    -- * Creating a request
      DescribeApplication (..)
    , mkDescribeApplication
    -- ** Request lenses
    , daApplicationName

    -- * Destructuring the response
    , DescribeApplicationResponse (..)
    , mkDescribeApplicationResponse
    -- ** Response lenses
    , darrsApplicationDetail
    , darrsResponseStatus
    ) where

import qualified Network.AWS.KinesisAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | 
--
-- /See:/ 'mkDescribeApplication' smart constructor.
newtype DescribeApplication = DescribeApplication'
  { applicationName :: Types.ApplicationName
    -- ^ Name of the application.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeApplication' value with any optional fields omitted.
mkDescribeApplication
    :: Types.ApplicationName -- ^ 'applicationName'
    -> DescribeApplication
mkDescribeApplication applicationName
  = DescribeApplication'{applicationName}

-- | Name of the application.
--
-- /Note:/ Consider using 'applicationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
daApplicationName :: Lens.Lens' DescribeApplication Types.ApplicationName
daApplicationName = Lens.field @"applicationName"
{-# INLINEABLE daApplicationName #-}
{-# DEPRECATED applicationName "Use generic-lens or generic-optics with 'applicationName' instead"  #-}

instance Core.ToQuery DescribeApplication where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeApplication where
        toHeaders DescribeApplication{..}
          = Core.pure
              ("X-Amz-Target", "KinesisAnalytics_20150814.DescribeApplication")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeApplication where
        toJSON DescribeApplication{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("ApplicationName" Core..= applicationName)])

instance Core.AWSRequest DescribeApplication where
        type Rs DescribeApplication = DescribeApplicationResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeApplicationResponse' Core.<$>
                   (x Core..: "ApplicationDetail") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | 
--
-- /See:/ 'mkDescribeApplicationResponse' smart constructor.
data DescribeApplicationResponse = DescribeApplicationResponse'
  { applicationDetail :: Types.ApplicationDetail
    -- ^ Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeApplicationResponse' value with any optional fields omitted.
mkDescribeApplicationResponse
    :: Types.ApplicationDetail -- ^ 'applicationDetail'
    -> Core.Int -- ^ 'responseStatus'
    -> DescribeApplicationResponse
mkDescribeApplicationResponse applicationDetail responseStatus
  = DescribeApplicationResponse'{applicationDetail, responseStatus}

-- | Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.
--
-- /Note:/ Consider using 'applicationDetail' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darrsApplicationDetail :: Lens.Lens' DescribeApplicationResponse Types.ApplicationDetail
darrsApplicationDetail = Lens.field @"applicationDetail"
{-# INLINEABLE darrsApplicationDetail #-}
{-# DEPRECATED applicationDetail "Use generic-lens or generic-optics with 'applicationDetail' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
darrsResponseStatus :: Lens.Lens' DescribeApplicationResponse Core.Int
darrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE darrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
