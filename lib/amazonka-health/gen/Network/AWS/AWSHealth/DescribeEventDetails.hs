{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AWSHealth.DescribeEventDetails
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about one or more specified events. Information includes standard event data (Region, service, and so on, as returned by <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html DescribeEvents> ), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included. To retrieve those, use the <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html DescribeAffectedEntities> operation.
--
-- If a specified event cannot be retrieved, an error message is returned for that event.
module Network.AWS.AWSHealth.DescribeEventDetails
    (
    -- * Creating a request
      DescribeEventDetails (..)
    , mkDescribeEventDetails
    -- ** Request lenses
    , dedEventArns
    , dedLocale

    -- * Destructuring the response
    , DescribeEventDetailsResponse (..)
    , mkDescribeEventDetailsResponse
    -- ** Response lenses
    , dedrrsFailedSet
    , dedrrsSuccessfulSet
    , dedrrsResponseStatus
    ) where

import qualified Network.AWS.AWSHealth.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeEventDetails' smart constructor.
data DescribeEventDetails = DescribeEventDetails'
  { eventArns :: Core.NonEmpty Types.EventArn
    -- ^ A list of event ARNs (unique identifiers). For example: @"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"@ 
  , locale :: Core.Maybe Types.Locale
    -- ^ The locale (language) to return information in. English (en) is the default and the only supported value at this time.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeEventDetails' value with any optional fields omitted.
mkDescribeEventDetails
    :: Core.NonEmpty Types.EventArn -- ^ 'eventArns'
    -> DescribeEventDetails
mkDescribeEventDetails eventArns
  = DescribeEventDetails'{eventArns, locale = Core.Nothing}

-- | A list of event ARNs (unique identifiers). For example: @"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456", "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"@ 
--
-- /Note:/ Consider using 'eventArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dedEventArns :: Lens.Lens' DescribeEventDetails (Core.NonEmpty Types.EventArn)
dedEventArns = Lens.field @"eventArns"
{-# INLINEABLE dedEventArns #-}
{-# DEPRECATED eventArns "Use generic-lens or generic-optics with 'eventArns' instead"  #-}

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- /Note:/ Consider using 'locale' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dedLocale :: Lens.Lens' DescribeEventDetails (Core.Maybe Types.Locale)
dedLocale = Lens.field @"locale"
{-# INLINEABLE dedLocale #-}
{-# DEPRECATED locale "Use generic-lens or generic-optics with 'locale' instead"  #-}

instance Core.ToQuery DescribeEventDetails where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeEventDetails where
        toHeaders DescribeEventDetails{..}
          = Core.pure
              ("X-Amz-Target", "AWSHealth_20160804.DescribeEventDetails")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeEventDetails where
        toJSON DescribeEventDetails{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("eventArns" Core..= eventArns),
                  ("locale" Core..=) Core.<$> locale])

instance Core.AWSRequest DescribeEventDetails where
        type Rs DescribeEventDetails = DescribeEventDetailsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeEventDetailsResponse' Core.<$>
                   (x Core..:? "failedSet") Core.<*> x Core..:? "successfulSet"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeEventDetailsResponse' smart constructor.
data DescribeEventDetailsResponse = DescribeEventDetailsResponse'
  { failedSet :: Core.Maybe [Types.EventDetailsErrorItem]
    -- ^ Error messages for any events that could not be retrieved.
  , successfulSet :: Core.Maybe [Types.EventDetails]
    -- ^ Information about the events that could be retrieved.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeEventDetailsResponse' value with any optional fields omitted.
mkDescribeEventDetailsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeEventDetailsResponse
mkDescribeEventDetailsResponse responseStatus
  = DescribeEventDetailsResponse'{failedSet = Core.Nothing,
                                  successfulSet = Core.Nothing, responseStatus}

-- | Error messages for any events that could not be retrieved.
--
-- /Note:/ Consider using 'failedSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dedrrsFailedSet :: Lens.Lens' DescribeEventDetailsResponse (Core.Maybe [Types.EventDetailsErrorItem])
dedrrsFailedSet = Lens.field @"failedSet"
{-# INLINEABLE dedrrsFailedSet #-}
{-# DEPRECATED failedSet "Use generic-lens or generic-optics with 'failedSet' instead"  #-}

-- | Information about the events that could be retrieved.
--
-- /Note:/ Consider using 'successfulSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dedrrsSuccessfulSet :: Lens.Lens' DescribeEventDetailsResponse (Core.Maybe [Types.EventDetails])
dedrrsSuccessfulSet = Lens.field @"successfulSet"
{-# INLINEABLE dedrrsSuccessfulSet #-}
{-# DEPRECATED successfulSet "Use generic-lens or generic-optics with 'successfulSet' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dedrrsResponseStatus :: Lens.Lens' DescribeEventDetailsResponse Core.Int
dedrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dedrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
