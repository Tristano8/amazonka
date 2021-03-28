{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPlan
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AutoScalingPlans.Types.ScalingPlan
  ( ScalingPlan (..)
  -- * Smart constructor
  , mkScalingPlan
  -- * Lenses
  , spScalingPlanName
  , spScalingPlanVersion
  , spApplicationSource
  , spScalingInstructions
  , spStatusCode
  , spCreationTime
  , spStatusMessage
  , spStatusStartTime
  ) where

import qualified Network.AWS.AutoScalingPlans.Types.ApplicationSource as Types
import qualified Network.AWS.AutoScalingPlans.Types.ScalingInstruction as Types
import qualified Network.AWS.AutoScalingPlans.Types.ScalingPlanName as Types
import qualified Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode as Types
import qualified Network.AWS.AutoScalingPlans.Types.XmlString as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents a scaling plan.
--
-- /See:/ 'mkScalingPlan' smart constructor.
data ScalingPlan = ScalingPlan'
  { scalingPlanName :: Types.ScalingPlanName
    -- ^ The name of the scaling plan.
  , scalingPlanVersion :: Core.Integer
    -- ^ The version number of the scaling plan.
  , applicationSource :: Types.ApplicationSource
    -- ^ The application source.
  , scalingInstructions :: [Types.ScalingInstruction]
    -- ^ The scaling instructions.
  , statusCode :: Types.ScalingPlanStatusCode
    -- ^ The status of the scaling plan.
--
--
--     * @Active@ - The scaling plan is active.
--
--
--     * @ActiveWithProblems@ - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.
--
--
--     * @CreationInProgress@ - The scaling plan is being created.
--
--
--     * @CreationFailed@ - The scaling plan could not be created.
--
--
--     * @DeletionInProgress@ - The scaling plan is being deleted.
--
--
--     * @DeletionFailed@ - The scaling plan could not be deleted.
--
--
--     * @UpdateInProgress@ - The scaling plan is being updated.
--
--
--     * @UpdateFailed@ - The scaling plan could not be updated.
--
--
  , creationTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The Unix time stamp when the scaling plan was created.
  , statusMessage :: Core.Maybe Types.XmlString
    -- ^ A simple message about the current status of the scaling plan.
  , statusStartTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The Unix time stamp when the scaling plan entered the current status.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ScalingPlan' value with any optional fields omitted.
mkScalingPlan
    :: Types.ScalingPlanName -- ^ 'scalingPlanName'
    -> Core.Integer -- ^ 'scalingPlanVersion'
    -> Types.ApplicationSource -- ^ 'applicationSource'
    -> Types.ScalingPlanStatusCode -- ^ 'statusCode'
    -> ScalingPlan
mkScalingPlan scalingPlanName scalingPlanVersion applicationSource
  statusCode
  = ScalingPlan'{scalingPlanName, scalingPlanVersion,
                 applicationSource, scalingInstructions = Core.mempty, statusCode,
                 creationTime = Core.Nothing, statusMessage = Core.Nothing,
                 statusStartTime = Core.Nothing}

-- | The name of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingPlanName :: Lens.Lens' ScalingPlan Types.ScalingPlanName
spScalingPlanName = Lens.field @"scalingPlanName"
{-# INLINEABLE spScalingPlanName #-}
{-# DEPRECATED scalingPlanName "Use generic-lens or generic-optics with 'scalingPlanName' instead"  #-}

-- | The version number of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingPlanVersion :: Lens.Lens' ScalingPlan Core.Integer
spScalingPlanVersion = Lens.field @"scalingPlanVersion"
{-# INLINEABLE spScalingPlanVersion #-}
{-# DEPRECATED scalingPlanVersion "Use generic-lens or generic-optics with 'scalingPlanVersion' instead"  #-}

-- | The application source.
--
-- /Note:/ Consider using 'applicationSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spApplicationSource :: Lens.Lens' ScalingPlan Types.ApplicationSource
spApplicationSource = Lens.field @"applicationSource"
{-# INLINEABLE spApplicationSource #-}
{-# DEPRECATED applicationSource "Use generic-lens or generic-optics with 'applicationSource' instead"  #-}

-- | The scaling instructions.
--
-- /Note:/ Consider using 'scalingInstructions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingInstructions :: Lens.Lens' ScalingPlan [Types.ScalingInstruction]
spScalingInstructions = Lens.field @"scalingInstructions"
{-# INLINEABLE spScalingInstructions #-}
{-# DEPRECATED scalingInstructions "Use generic-lens or generic-optics with 'scalingInstructions' instead"  #-}

-- | The status of the scaling plan.
--
--
--     * @Active@ - The scaling plan is active.
--
--
--     * @ActiveWithProblems@ - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.
--
--
--     * @CreationInProgress@ - The scaling plan is being created.
--
--
--     * @CreationFailed@ - The scaling plan could not be created.
--
--
--     * @DeletionInProgress@ - The scaling plan is being deleted.
--
--
--     * @DeletionFailed@ - The scaling plan could not be deleted.
--
--
--     * @UpdateInProgress@ - The scaling plan is being updated.
--
--
--     * @UpdateFailed@ - The scaling plan could not be updated.
--
--
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusCode :: Lens.Lens' ScalingPlan Types.ScalingPlanStatusCode
spStatusCode = Lens.field @"statusCode"
{-# INLINEABLE spStatusCode #-}
{-# DEPRECATED statusCode "Use generic-lens or generic-optics with 'statusCode' instead"  #-}

-- | The Unix time stamp when the scaling plan was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spCreationTime :: Lens.Lens' ScalingPlan (Core.Maybe Core.NominalDiffTime)
spCreationTime = Lens.field @"creationTime"
{-# INLINEABLE spCreationTime #-}
{-# DEPRECATED creationTime "Use generic-lens or generic-optics with 'creationTime' instead"  #-}

-- | A simple message about the current status of the scaling plan.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusMessage :: Lens.Lens' ScalingPlan (Core.Maybe Types.XmlString)
spStatusMessage = Lens.field @"statusMessage"
{-# INLINEABLE spStatusMessage #-}
{-# DEPRECATED statusMessage "Use generic-lens or generic-optics with 'statusMessage' instead"  #-}

-- | The Unix time stamp when the scaling plan entered the current status.
--
-- /Note:/ Consider using 'statusStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusStartTime :: Lens.Lens' ScalingPlan (Core.Maybe Core.NominalDiffTime)
spStatusStartTime = Lens.field @"statusStartTime"
{-# INLINEABLE spStatusStartTime #-}
{-# DEPRECATED statusStartTime "Use generic-lens or generic-optics with 'statusStartTime' instead"  #-}

instance Core.FromJSON ScalingPlan where
        parseJSON
          = Core.withObject "ScalingPlan" Core.$
              \ x ->
                ScalingPlan' Core.<$>
                  (x Core..: "ScalingPlanName") Core.<*>
                    x Core..: "ScalingPlanVersion"
                    Core.<*> x Core..: "ApplicationSource"
                    Core.<*> x Core..:? "ScalingInstructions" Core..!= Core.mempty
                    Core.<*> x Core..: "StatusCode"
                    Core.<*> x Core..:? "CreationTime"
                    Core.<*> x Core..:? "StatusMessage"
                    Core.<*> x Core..:? "StatusStartTime"
