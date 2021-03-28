{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
  ( ContinueAsNewWorkflowExecutionFailedEventAttributes (..)
  -- * Smart constructor
  , mkContinueAsNewWorkflowExecutionFailedEventAttributes
  -- * Lenses
  , canwefeaCause
  , canwefeaDecisionTaskCompletedEventId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedCause as Types

-- | Provides the details of the @ContinueAsNewWorkflowExecutionFailed@ event.
--
-- /See:/ 'mkContinueAsNewWorkflowExecutionFailedEventAttributes' smart constructor.
data ContinueAsNewWorkflowExecutionFailedEventAttributes = ContinueAsNewWorkflowExecutionFailedEventAttributes'
  { cause :: Types.ContinueAsNewWorkflowExecutionFailedCause
    -- ^ The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
  , decisionTaskCompletedEventId :: Core.Integer
    -- ^ The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ContinueAsNewWorkflowExecutionFailedEventAttributes' value with any optional fields omitted.
mkContinueAsNewWorkflowExecutionFailedEventAttributes
    :: Types.ContinueAsNewWorkflowExecutionFailedCause -- ^ 'cause'
    -> Core.Integer -- ^ 'decisionTaskCompletedEventId'
    -> ContinueAsNewWorkflowExecutionFailedEventAttributes
mkContinueAsNewWorkflowExecutionFailedEventAttributes cause
  decisionTaskCompletedEventId
  = ContinueAsNewWorkflowExecutionFailedEventAttributes'{cause,
                                                         decisionTaskCompletedEventId}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
canwefeaCause :: Lens.Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes Types.ContinueAsNewWorkflowExecutionFailedCause
canwefeaCause = Lens.field @"cause"
{-# INLINEABLE canwefeaCause #-}
{-# DEPRECATED cause "Use generic-lens or generic-optics with 'cause' instead"  #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
canwefeaDecisionTaskCompletedEventId :: Lens.Lens' ContinueAsNewWorkflowExecutionFailedEventAttributes Core.Integer
canwefeaDecisionTaskCompletedEventId = Lens.field @"decisionTaskCompletedEventId"
{-# INLINEABLE canwefeaDecisionTaskCompletedEventId #-}
{-# DEPRECATED decisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead"  #-}

instance Core.FromJSON
           ContinueAsNewWorkflowExecutionFailedEventAttributes
         where
        parseJSON
          = Core.withObject
              "ContinueAsNewWorkflowExecutionFailedEventAttributes"
              Core.$
              \ x ->
                ContinueAsNewWorkflowExecutionFailedEventAttributes' Core.<$>
                  (x Core..: "cause") Core.<*>
                    x Core..: "decisionTaskCompletedEventId"
