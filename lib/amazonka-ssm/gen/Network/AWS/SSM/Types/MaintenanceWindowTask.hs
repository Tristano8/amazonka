{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowTask
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.MaintenanceWindowTask
  ( MaintenanceWindowTask (..)
  -- * Smart constructor
  , mkMaintenanceWindowTask
  -- * Lenses
  , mwtDescription
  , mwtLoggingInfo
  , mwtMaxConcurrency
  , mwtMaxErrors
  , mwtName
  , mwtPriority
  , mwtServiceRoleArn
  , mwtTargets
  , mwtTaskArn
  , mwtTaskParameters
  , mwtType
  , mwtWindowId
  , mwtWindowTaskId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SSM.Types.Description as Types
import qualified Network.AWS.SSM.Types.LoggingInfo as Types
import qualified Network.AWS.SSM.Types.MaintenanceWindowName as Types
import qualified Network.AWS.SSM.Types.MaintenanceWindowTaskId as Types
import qualified Network.AWS.SSM.Types.MaintenanceWindowTaskParameterName as Types
import qualified Network.AWS.SSM.Types.MaintenanceWindowTaskParameterValueExpression as Types
import qualified Network.AWS.SSM.Types.MaintenanceWindowTaskType as Types
import qualified Network.AWS.SSM.Types.MaxConcurrency as Types
import qualified Network.AWS.SSM.Types.MaxErrors as Types
import qualified Network.AWS.SSM.Types.ServiceRoleArn as Types
import qualified Network.AWS.SSM.Types.Target as Types
import qualified Network.AWS.SSM.Types.TaskArn as Types
import qualified Network.AWS.SSM.Types.WindowId as Types

-- | Information about a task defined for a maintenance window.
--
-- /See:/ 'mkMaintenanceWindowTask' smart constructor.
data MaintenanceWindowTask = MaintenanceWindowTask'
  { description :: Core.Maybe Types.Description
    -- ^ A description of the task.
  , loggingInfo :: Core.Maybe Types.LoggingInfo
    -- ^ Information about an S3 bucket to write task-level logs to.
  , maxConcurrency :: Core.Maybe Types.MaxConcurrency
    -- ^ The maximum number of targets this task can be run for, in parallel.
  , maxErrors :: Core.Maybe Types.MaxErrors
    -- ^ The maximum number of errors allowed before this task stops being scheduled.
  , name :: Core.Maybe Types.MaintenanceWindowName
    -- ^ The task name.
  , priority :: Core.Maybe Core.Natural
    -- ^ The priority of the task in the maintenance window. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
  , serviceRoleArn :: Core.Maybe Types.ServiceRoleArn
    -- ^ The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
  , targets :: Core.Maybe [Types.Target]
    -- ^ The targets (either instances or tags). Instances are specified using Key=instanceids,Values=<instanceid1>,<instanceid2>. Tags are specified using Key=<tag name>,Values=<tag value>.
  , taskArn :: Core.Maybe Types.TaskArn
    -- ^ The resource that the task uses during execution. For RUN_COMMAND and AUTOMATION task types, @TaskArn@ is the Systems Manager document name or ARN. For LAMBDA tasks, it's the function name or ARN. For STEP_FUNCTIONS tasks, it's the state machine ARN.
  , taskParameters :: Core.Maybe (Core.HashMap Types.MaintenanceWindowTaskParameterName Types.MaintenanceWindowTaskParameterValueExpression)
    -- ^ The parameters that should be passed to the task when it is run.
  , type' :: Core.Maybe Types.MaintenanceWindowTaskType
    -- ^ The type of task. The type can be one of the following: RUN_COMMAND, AUTOMATION, LAMBDA, or STEP_FUNCTIONS.
  , windowId :: Core.Maybe Types.WindowId
    -- ^ The ID of the maintenance window where the task is registered.
  , windowTaskId :: Core.Maybe Types.MaintenanceWindowTaskId
    -- ^ The task ID.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MaintenanceWindowTask' value with any optional fields omitted.
mkMaintenanceWindowTask
    :: MaintenanceWindowTask
mkMaintenanceWindowTask
  = MaintenanceWindowTask'{description = Core.Nothing,
                           loggingInfo = Core.Nothing, maxConcurrency = Core.Nothing,
                           maxErrors = Core.Nothing, name = Core.Nothing,
                           priority = Core.Nothing, serviceRoleArn = Core.Nothing,
                           targets = Core.Nothing, taskArn = Core.Nothing,
                           taskParameters = Core.Nothing, type' = Core.Nothing,
                           windowId = Core.Nothing, windowTaskId = Core.Nothing}

-- | A description of the task.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtDescription :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.Description)
mwtDescription = Lens.field @"description"
{-# INLINEABLE mwtDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | Information about an S3 bucket to write task-level logs to.
--
-- /Note:/ Consider using 'loggingInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtLoggingInfo :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.LoggingInfo)
mwtLoggingInfo = Lens.field @"loggingInfo"
{-# INLINEABLE mwtLoggingInfo #-}
{-# DEPRECATED loggingInfo "Use generic-lens or generic-optics with 'loggingInfo' instead"  #-}

-- | The maximum number of targets this task can be run for, in parallel.
--
-- /Note:/ Consider using 'maxConcurrency' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtMaxConcurrency :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.MaxConcurrency)
mwtMaxConcurrency = Lens.field @"maxConcurrency"
{-# INLINEABLE mwtMaxConcurrency #-}
{-# DEPRECATED maxConcurrency "Use generic-lens or generic-optics with 'maxConcurrency' instead"  #-}

-- | The maximum number of errors allowed before this task stops being scheduled.
--
-- /Note:/ Consider using 'maxErrors' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtMaxErrors :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.MaxErrors)
mwtMaxErrors = Lens.field @"maxErrors"
{-# INLINEABLE mwtMaxErrors #-}
{-# DEPRECATED maxErrors "Use generic-lens or generic-optics with 'maxErrors' instead"  #-}

-- | The task name.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtName :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.MaintenanceWindowName)
mwtName = Lens.field @"name"
{-# INLINEABLE mwtName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The priority of the task in the maintenance window. The lower the number, the higher the priority. Tasks that have the same priority are scheduled in parallel.
--
-- /Note:/ Consider using 'priority' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtPriority :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Core.Natural)
mwtPriority = Lens.field @"priority"
{-# INLINEABLE mwtPriority #-}
{-# DEPRECATED priority "Use generic-lens or generic-optics with 'priority' instead"  #-}

-- | The ARN of the IAM service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks.
--
-- /Note:/ Consider using 'serviceRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtServiceRoleArn :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.ServiceRoleArn)
mwtServiceRoleArn = Lens.field @"serviceRoleArn"
{-# INLINEABLE mwtServiceRoleArn #-}
{-# DEPRECATED serviceRoleArn "Use generic-lens or generic-optics with 'serviceRoleArn' instead"  #-}

-- | The targets (either instances or tags). Instances are specified using Key=instanceids,Values=<instanceid1>,<instanceid2>. Tags are specified using Key=<tag name>,Values=<tag value>.
--
-- /Note:/ Consider using 'targets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtTargets :: Lens.Lens' MaintenanceWindowTask (Core.Maybe [Types.Target])
mwtTargets = Lens.field @"targets"
{-# INLINEABLE mwtTargets #-}
{-# DEPRECATED targets "Use generic-lens or generic-optics with 'targets' instead"  #-}

-- | The resource that the task uses during execution. For RUN_COMMAND and AUTOMATION task types, @TaskArn@ is the Systems Manager document name or ARN. For LAMBDA tasks, it's the function name or ARN. For STEP_FUNCTIONS tasks, it's the state machine ARN.
--
-- /Note:/ Consider using 'taskArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtTaskArn :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.TaskArn)
mwtTaskArn = Lens.field @"taskArn"
{-# INLINEABLE mwtTaskArn #-}
{-# DEPRECATED taskArn "Use generic-lens or generic-optics with 'taskArn' instead"  #-}

-- | The parameters that should be passed to the task when it is run.
--
-- /Note:/ Consider using 'taskParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtTaskParameters :: Lens.Lens' MaintenanceWindowTask (Core.Maybe (Core.HashMap Types.MaintenanceWindowTaskParameterName Types.MaintenanceWindowTaskParameterValueExpression))
mwtTaskParameters = Lens.field @"taskParameters"
{-# INLINEABLE mwtTaskParameters #-}
{-# DEPRECATED taskParameters "Use generic-lens or generic-optics with 'taskParameters' instead"  #-}

-- | The type of task. The type can be one of the following: RUN_COMMAND, AUTOMATION, LAMBDA, or STEP_FUNCTIONS.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtType :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.MaintenanceWindowTaskType)
mwtType = Lens.field @"type'"
{-# INLINEABLE mwtType #-}
{-# DEPRECATED type' "Use generic-lens or generic-optics with 'type'' instead"  #-}

-- | The ID of the maintenance window where the task is registered.
--
-- /Note:/ Consider using 'windowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtWindowId :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.WindowId)
mwtWindowId = Lens.field @"windowId"
{-# INLINEABLE mwtWindowId #-}
{-# DEPRECATED windowId "Use generic-lens or generic-optics with 'windowId' instead"  #-}

-- | The task ID.
--
-- /Note:/ Consider using 'windowTaskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mwtWindowTaskId :: Lens.Lens' MaintenanceWindowTask (Core.Maybe Types.MaintenanceWindowTaskId)
mwtWindowTaskId = Lens.field @"windowTaskId"
{-# INLINEABLE mwtWindowTaskId #-}
{-# DEPRECATED windowTaskId "Use generic-lens or generic-optics with 'windowTaskId' instead"  #-}

instance Core.FromJSON MaintenanceWindowTask where
        parseJSON
          = Core.withObject "MaintenanceWindowTask" Core.$
              \ x ->
                MaintenanceWindowTask' Core.<$>
                  (x Core..:? "Description") Core.<*> x Core..:? "LoggingInfo"
                    Core.<*> x Core..:? "MaxConcurrency"
                    Core.<*> x Core..:? "MaxErrors"
                    Core.<*> x Core..:? "Name"
                    Core.<*> x Core..:? "Priority"
                    Core.<*> x Core..:? "ServiceRoleArn"
                    Core.<*> x Core..:? "Targets"
                    Core.<*> x Core..:? "TaskArn"
                    Core.<*> x Core..:? "TaskParameters"
                    Core.<*> x Core..:? "Type"
                    Core.<*> x Core..:? "WindowId"
                    Core.<*> x Core..:? "WindowTaskId"
