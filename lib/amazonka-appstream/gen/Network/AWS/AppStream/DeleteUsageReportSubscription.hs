{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.DeleteUsageReportSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables usage report generation.
module Network.AWS.AppStream.DeleteUsageReportSubscription
    (
    -- * Creating a request
      DeleteUsageReportSubscription (..)
    , mkDeleteUsageReportSubscription

    -- * Destructuring the response
    , DeleteUsageReportSubscriptionResponse (..)
    , mkDeleteUsageReportSubscriptionResponse
    -- ** Response lenses
    , dursrfrsResponseStatus
    ) where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteUsageReportSubscription' smart constructor.
data DeleteUsageReportSubscription = DeleteUsageReportSubscription'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteUsageReportSubscription' value with any optional fields omitted.
mkDeleteUsageReportSubscription
    :: DeleteUsageReportSubscription
mkDeleteUsageReportSubscription = DeleteUsageReportSubscription'

instance Core.ToQuery DeleteUsageReportSubscription where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteUsageReportSubscription where
        toHeaders DeleteUsageReportSubscription{..}
          = Core.pure
              ("X-Amz-Target",
               "PhotonAdminProxyService.DeleteUsageReportSubscription")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteUsageReportSubscription where
        toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest DeleteUsageReportSubscription where
        type Rs DeleteUsageReportSubscription =
             DeleteUsageReportSubscriptionResponse
        toRequest x@_
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 DeleteUsageReportSubscriptionResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteUsageReportSubscriptionResponse' smart constructor.
newtype DeleteUsageReportSubscriptionResponse = DeleteUsageReportSubscriptionResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteUsageReportSubscriptionResponse' value with any optional fields omitted.
mkDeleteUsageReportSubscriptionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteUsageReportSubscriptionResponse
mkDeleteUsageReportSubscriptionResponse responseStatus
  = DeleteUsageReportSubscriptionResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dursrfrsResponseStatus :: Lens.Lens' DeleteUsageReportSubscriptionResponse Core.Int
dursrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dursrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
