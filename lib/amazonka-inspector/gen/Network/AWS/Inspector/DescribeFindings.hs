{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.DescribeFindings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the findings that are specified by the ARNs of the findings.
module Network.AWS.Inspector.DescribeFindings
    (
    -- * Creating a request
      DescribeFindings (..)
    , mkDescribeFindings
    -- ** Request lenses
    , dfFindingArns
    , dfLocale

    -- * Destructuring the response
    , DescribeFindingsResponse (..)
    , mkDescribeFindingsResponse
    -- ** Response lenses
    , dfrrsFindings
    , dfrrsFailedItems
    , dfrrsResponseStatus
    ) where

import qualified Network.AWS.Inspector.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeFindings' smart constructor.
data DescribeFindings = DescribeFindings'
  { findingArns :: Core.NonEmpty Types.Arn
    -- ^ The ARN that specifies the finding that you want to describe.
  , locale :: Core.Maybe Types.Locale
    -- ^ The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFindings' value with any optional fields omitted.
mkDescribeFindings
    :: Core.NonEmpty Types.Arn -- ^ 'findingArns'
    -> DescribeFindings
mkDescribeFindings findingArns
  = DescribeFindings'{findingArns, locale = Core.Nothing}

-- | The ARN that specifies the finding that you want to describe.
--
-- /Note:/ Consider using 'findingArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfFindingArns :: Lens.Lens' DescribeFindings (Core.NonEmpty Types.Arn)
dfFindingArns = Lens.field @"findingArns"
{-# INLINEABLE dfFindingArns #-}
{-# DEPRECATED findingArns "Use generic-lens or generic-optics with 'findingArns' instead"  #-}

-- | The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.
--
-- /Note:/ Consider using 'locale' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfLocale :: Lens.Lens' DescribeFindings (Core.Maybe Types.Locale)
dfLocale = Lens.field @"locale"
{-# INLINEABLE dfLocale #-}
{-# DEPRECATED locale "Use generic-lens or generic-optics with 'locale' instead"  #-}

instance Core.ToQuery DescribeFindings where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeFindings where
        toHeaders DescribeFindings{..}
          = Core.pure ("X-Amz-Target", "InspectorService.DescribeFindings")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeFindings where
        toJSON DescribeFindings{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("findingArns" Core..= findingArns),
                  ("locale" Core..=) Core.<$> locale])

instance Core.AWSRequest DescribeFindings where
        type Rs DescribeFindings = DescribeFindingsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeFindingsResponse' Core.<$>
                   (x Core..:? "findings" Core..!= Core.mempty) Core.<*>
                     x Core..:? "failedItems" Core..!= Core.mempty
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeFindingsResponse' smart constructor.
data DescribeFindingsResponse = DescribeFindingsResponse'
  { findings :: [Types.Finding]
    -- ^ Information about the finding.
  , failedItems :: Core.HashMap Types.Arn Types.FailedItemDetails
    -- ^ Finding details that cannot be described. An error code is provided for each failed item.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeFindingsResponse' value with any optional fields omitted.
mkDescribeFindingsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeFindingsResponse
mkDescribeFindingsResponse responseStatus
  = DescribeFindingsResponse'{findings = Core.mempty,
                              failedItems = Core.mempty, responseStatus}

-- | Information about the finding.
--
-- /Note:/ Consider using 'findings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrrsFindings :: Lens.Lens' DescribeFindingsResponse [Types.Finding]
dfrrsFindings = Lens.field @"findings"
{-# INLINEABLE dfrrsFindings #-}
{-# DEPRECATED findings "Use generic-lens or generic-optics with 'findings' instead"  #-}

-- | Finding details that cannot be described. An error code is provided for each failed item.
--
-- /Note:/ Consider using 'failedItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrrsFailedItems :: Lens.Lens' DescribeFindingsResponse (Core.HashMap Types.Arn Types.FailedItemDetails)
dfrrsFailedItems = Lens.field @"failedItems"
{-# INLINEABLE dfrrsFailedItems #-}
{-# DEPRECATED failedItems "Use generic-lens or generic-optics with 'failedItems' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfrrsResponseStatus :: Lens.Lens' DescribeFindingsResponse Core.Int
dfrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dfrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
