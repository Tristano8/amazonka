{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.TimeBasedAutoScalingConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.TimeBasedAutoScalingConfiguration
  ( TimeBasedAutoScalingConfiguration (..)
  -- * Smart constructor
  , mkTimeBasedAutoScalingConfiguration
  -- * Lenses
  , tbascAutoScalingSchedule
  , tbascInstanceId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types.WeeklyAutoScalingSchedule as Types
import qualified Network.AWS.Prelude as Core

-- | Describes an instance's time-based auto scaling configuration.
--
-- /See:/ 'mkTimeBasedAutoScalingConfiguration' smart constructor.
data TimeBasedAutoScalingConfiguration = TimeBasedAutoScalingConfiguration'
  { autoScalingSchedule :: Core.Maybe Types.WeeklyAutoScalingSchedule
    -- ^ A @WeeklyAutoScalingSchedule@ object with the instance schedule.
  , instanceId :: Core.Maybe Core.Text
    -- ^ The instance ID.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TimeBasedAutoScalingConfiguration' value with any optional fields omitted.
mkTimeBasedAutoScalingConfiguration
    :: TimeBasedAutoScalingConfiguration
mkTimeBasedAutoScalingConfiguration
  = TimeBasedAutoScalingConfiguration'{autoScalingSchedule =
                                         Core.Nothing,
                                       instanceId = Core.Nothing}

-- | A @WeeklyAutoScalingSchedule@ object with the instance schedule.
--
-- /Note:/ Consider using 'autoScalingSchedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tbascAutoScalingSchedule :: Lens.Lens' TimeBasedAutoScalingConfiguration (Core.Maybe Types.WeeklyAutoScalingSchedule)
tbascAutoScalingSchedule = Lens.field @"autoScalingSchedule"
{-# INLINEABLE tbascAutoScalingSchedule #-}
{-# DEPRECATED autoScalingSchedule "Use generic-lens or generic-optics with 'autoScalingSchedule' instead"  #-}

-- | The instance ID.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tbascInstanceId :: Lens.Lens' TimeBasedAutoScalingConfiguration (Core.Maybe Core.Text)
tbascInstanceId = Lens.field @"instanceId"
{-# INLINEABLE tbascInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

instance Core.FromJSON TimeBasedAutoScalingConfiguration where
        parseJSON
          = Core.withObject "TimeBasedAutoScalingConfiguration" Core.$
              \ x ->
                TimeBasedAutoScalingConfiguration' Core.<$>
                  (x Core..:? "AutoScalingSchedule") Core.<*> x Core..:? "InstanceId"
