{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
  ( RequestCancelActivityTaskFailedEventAttributes (..)
  -- * Smart constructor
  , mkRequestCancelActivityTaskFailedEventAttributes
  -- * Lenses
  , rcatfeaActivityId
  , rcatfeaCause
  , rcatfeaDecisionTaskCompletedEventId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SWF.Types.ActivityId as Types
import qualified Network.AWS.SWF.Types.RequestCancelActivityTaskFailedCause as Types

-- | Provides the details of the @RequestCancelActivityTaskFailed@ event.
--
-- /See:/ 'mkRequestCancelActivityTaskFailedEventAttributes' smart constructor.
data RequestCancelActivityTaskFailedEventAttributes = RequestCancelActivityTaskFailedEventAttributes'
  { activityId :: Types.ActivityId
    -- ^ The activityId provided in the @RequestCancelActivityTask@ decision that failed.
  , cause :: Types.RequestCancelActivityTaskFailedCause
    -- ^ The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
  , decisionTaskCompletedEventId :: Core.Integer
    -- ^ The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelActivityTask@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RequestCancelActivityTaskFailedEventAttributes' value with any optional fields omitted.
mkRequestCancelActivityTaskFailedEventAttributes
    :: Types.ActivityId -- ^ 'activityId'
    -> Types.RequestCancelActivityTaskFailedCause -- ^ 'cause'
    -> Core.Integer -- ^ 'decisionTaskCompletedEventId'
    -> RequestCancelActivityTaskFailedEventAttributes
mkRequestCancelActivityTaskFailedEventAttributes activityId cause
  decisionTaskCompletedEventId
  = RequestCancelActivityTaskFailedEventAttributes'{activityId,
                                                    cause, decisionTaskCompletedEventId}

-- | The activityId provided in the @RequestCancelActivityTask@ decision that failed.
--
-- /Note:/ Consider using 'activityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaActivityId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Types.ActivityId
rcatfeaActivityId = Lens.field @"activityId"
{-# INLINEABLE rcatfeaActivityId #-}
{-# DEPRECATED activityId "Use generic-lens or generic-optics with 'activityId' instead"  #-}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaCause :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Types.RequestCancelActivityTaskFailedCause
rcatfeaCause = Lens.field @"cause"
{-# INLINEABLE rcatfeaCause #-}
{-# DEPRECATED cause "Use generic-lens or generic-optics with 'cause' instead"  #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelActivityTask@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcatfeaDecisionTaskCompletedEventId :: Lens.Lens' RequestCancelActivityTaskFailedEventAttributes Core.Integer
rcatfeaDecisionTaskCompletedEventId = Lens.field @"decisionTaskCompletedEventId"
{-# INLINEABLE rcatfeaDecisionTaskCompletedEventId #-}
{-# DEPRECATED decisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead"  #-}

instance Core.FromJSON
           RequestCancelActivityTaskFailedEventAttributes
         where
        parseJSON
          = Core.withObject "RequestCancelActivityTaskFailedEventAttributes"
              Core.$
              \ x ->
                RequestCancelActivityTaskFailedEventAttributes' Core.<$>
                  (x Core..: "activityId") Core.<*> x Core..: "cause" Core.<*>
                    x Core..: "decisionTaskCompletedEventId"
