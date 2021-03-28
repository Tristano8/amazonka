{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.DescribeOffering
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get details for an offering.
module Network.AWS.MediaLive.DescribeOffering
    (
    -- * Creating a request
      DescribeOffering (..)
    , mkDescribeOffering
    -- ** Request lenses
    , doOfferingId

    -- * Destructuring the response
    , DescribeOfferingResponse (..)
    , mkDescribeOfferingResponse
    -- ** Response lenses
    , dorrsArn
    , dorrsCurrencyCode
    , dorrsDuration
    , dorrsDurationUnits
    , dorrsFixedPrice
    , dorrsOfferingDescription
    , dorrsOfferingId
    , dorrsOfferingType
    , dorrsRegion
    , dorrsResourceSpecification
    , dorrsUsagePrice
    , dorrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Placeholder documentation for DescribeOfferingRequest
--
-- /See:/ 'mkDescribeOffering' smart constructor.
newtype DescribeOffering = DescribeOffering'
  { offeringId :: Core.Text
    -- ^ Unique offering ID, e.g. '87654321'
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeOffering' value with any optional fields omitted.
mkDescribeOffering
    :: Core.Text -- ^ 'offeringId'
    -> DescribeOffering
mkDescribeOffering offeringId = DescribeOffering'{offeringId}

-- | Unique offering ID, e.g. '87654321'
--
-- /Note:/ Consider using 'offeringId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
doOfferingId :: Lens.Lens' DescribeOffering Core.Text
doOfferingId = Lens.field @"offeringId"
{-# INLINEABLE doOfferingId #-}
{-# DEPRECATED offeringId "Use generic-lens or generic-optics with 'offeringId' instead"  #-}

instance Core.ToQuery DescribeOffering where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeOffering where
        toHeaders DescribeOffering{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest DescribeOffering where
        type Rs DescribeOffering = DescribeOfferingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath = "/prod/offerings/" Core.<> Core.toText offeringId,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeOfferingResponse' Core.<$>
                   (x Core..:? "arn") Core.<*> x Core..:? "currencyCode" Core.<*>
                     x Core..:? "duration"
                     Core.<*> x Core..:? "durationUnits"
                     Core.<*> x Core..:? "fixedPrice"
                     Core.<*> x Core..:? "offeringDescription"
                     Core.<*> x Core..:? "offeringId"
                     Core.<*> x Core..:? "offeringType"
                     Core.<*> x Core..:? "region"
                     Core.<*> x Core..:? "resourceSpecification"
                     Core.<*> x Core..:? "usagePrice"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Placeholder documentation for DescribeOfferingResponse
--
-- /See:/ 'mkDescribeOfferingResponse' smart constructor.
data DescribeOfferingResponse = DescribeOfferingResponse'
  { arn :: Core.Maybe Core.Text
    -- ^ Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
  , currencyCode :: Core.Maybe Core.Text
    -- ^ Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
  , duration :: Core.Maybe Core.Int
    -- ^ Lease duration, e.g. '12'
  , durationUnits :: Core.Maybe Types.OfferingDurationUnits
    -- ^ Units for duration, e.g. 'MONTHS'
  , fixedPrice :: Core.Maybe Core.Double
    -- ^ One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
  , offeringDescription :: Core.Maybe Core.Text
    -- ^ Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
  , offeringId :: Core.Maybe Core.Text
    -- ^ Unique offering ID, e.g. '87654321'
  , offeringType :: Core.Maybe Types.OfferingType
    -- ^ Offering type, e.g. 'NO_UPFRONT'
  , region :: Core.Maybe Core.Text
    -- ^ AWS region, e.g. 'us-west-2'
  , resourceSpecification :: Core.Maybe Types.ReservationResourceSpecification
    -- ^ Resource configuration details
  , usagePrice :: Core.Maybe Core.Double
    -- ^ Recurring usage charge for each reserved resource, e.g. '157.0'
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeOfferingResponse' value with any optional fields omitted.
mkDescribeOfferingResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeOfferingResponse
mkDescribeOfferingResponse responseStatus
  = DescribeOfferingResponse'{arn = Core.Nothing,
                              currencyCode = Core.Nothing, duration = Core.Nothing,
                              durationUnits = Core.Nothing, fixedPrice = Core.Nothing,
                              offeringDescription = Core.Nothing, offeringId = Core.Nothing,
                              offeringType = Core.Nothing, region = Core.Nothing,
                              resourceSpecification = Core.Nothing, usagePrice = Core.Nothing,
                              responseStatus}

-- | Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsArn :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Text)
dorrsArn = Lens.field @"arn"
{-# INLINEABLE dorrsArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
--
-- /Note:/ Consider using 'currencyCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsCurrencyCode :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Text)
dorrsCurrencyCode = Lens.field @"currencyCode"
{-# INLINEABLE dorrsCurrencyCode #-}
{-# DEPRECATED currencyCode "Use generic-lens or generic-optics with 'currencyCode' instead"  #-}

-- | Lease duration, e.g. '12'
--
-- /Note:/ Consider using 'duration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsDuration :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Int)
dorrsDuration = Lens.field @"duration"
{-# INLINEABLE dorrsDuration #-}
{-# DEPRECATED duration "Use generic-lens or generic-optics with 'duration' instead"  #-}

-- | Units for duration, e.g. 'MONTHS'
--
-- /Note:/ Consider using 'durationUnits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsDurationUnits :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Types.OfferingDurationUnits)
dorrsDurationUnits = Lens.field @"durationUnits"
{-# INLINEABLE dorrsDurationUnits #-}
{-# DEPRECATED durationUnits "Use generic-lens or generic-optics with 'durationUnits' instead"  #-}

-- | One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
--
-- /Note:/ Consider using 'fixedPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsFixedPrice :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Double)
dorrsFixedPrice = Lens.field @"fixedPrice"
{-# INLINEABLE dorrsFixedPrice #-}
{-# DEPRECATED fixedPrice "Use generic-lens or generic-optics with 'fixedPrice' instead"  #-}

-- | Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
--
-- /Note:/ Consider using 'offeringDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsOfferingDescription :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Text)
dorrsOfferingDescription = Lens.field @"offeringDescription"
{-# INLINEABLE dorrsOfferingDescription #-}
{-# DEPRECATED offeringDescription "Use generic-lens or generic-optics with 'offeringDescription' instead"  #-}

-- | Unique offering ID, e.g. '87654321'
--
-- /Note:/ Consider using 'offeringId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsOfferingId :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Text)
dorrsOfferingId = Lens.field @"offeringId"
{-# INLINEABLE dorrsOfferingId #-}
{-# DEPRECATED offeringId "Use generic-lens or generic-optics with 'offeringId' instead"  #-}

-- | Offering type, e.g. 'NO_UPFRONT'
--
-- /Note:/ Consider using 'offeringType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsOfferingType :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Types.OfferingType)
dorrsOfferingType = Lens.field @"offeringType"
{-# INLINEABLE dorrsOfferingType #-}
{-# DEPRECATED offeringType "Use generic-lens or generic-optics with 'offeringType' instead"  #-}

-- | AWS region, e.g. 'us-west-2'
--
-- /Note:/ Consider using 'region' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsRegion :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Text)
dorrsRegion = Lens.field @"region"
{-# INLINEABLE dorrsRegion #-}
{-# DEPRECATED region "Use generic-lens or generic-optics with 'region' instead"  #-}

-- | Resource configuration details
--
-- /Note:/ Consider using 'resourceSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsResourceSpecification :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Types.ReservationResourceSpecification)
dorrsResourceSpecification = Lens.field @"resourceSpecification"
{-# INLINEABLE dorrsResourceSpecification #-}
{-# DEPRECATED resourceSpecification "Use generic-lens or generic-optics with 'resourceSpecification' instead"  #-}

-- | Recurring usage charge for each reserved resource, e.g. '157.0'
--
-- /Note:/ Consider using 'usagePrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsUsagePrice :: Lens.Lens' DescribeOfferingResponse (Core.Maybe Core.Double)
dorrsUsagePrice = Lens.field @"usagePrice"
{-# INLINEABLE dorrsUsagePrice #-}
{-# DEPRECATED usagePrice "Use generic-lens or generic-optics with 'usagePrice' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dorrsResponseStatus :: Lens.Lens' DescribeOfferingResponse Core.Int
dorrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dorrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
