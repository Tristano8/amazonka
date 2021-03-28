{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Workflow
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Workflow
  ( Workflow (..)
  -- * Smart constructor
  , mkWorkflow
  -- * Lenses
  , wCreatedOn
  , wDefaultRunProperties
  , wDescription
  , wGraph
  , wLastModifiedOn
  , wLastRun
  , wMaxConcurrentRuns
  , wName
  ) where

import qualified Network.AWS.Glue.Types.GenericString as Types
import qualified Network.AWS.Glue.Types.IdString as Types
import qualified Network.AWS.Glue.Types.NameString as Types
import qualified Network.AWS.Glue.Types.WorkflowGraph as Types
import qualified Network.AWS.Glue.Types.WorkflowRun as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A workflow represents a flow in which AWS Glue components should be executed to complete a logical task.
--
-- /See:/ 'mkWorkflow' smart constructor.
data Workflow = Workflow'
  { createdOn :: Core.Maybe Core.NominalDiffTime
    -- ^ The date and time when the workflow was created.
  , defaultRunProperties :: Core.Maybe (Core.HashMap Types.IdString Types.GenericString)
    -- ^ A collection of properties to be used as part of each execution of the workflow.
  , description :: Core.Maybe Types.GenericString
    -- ^ A description of the workflow.
  , graph :: Core.Maybe Types.WorkflowGraph
    -- ^ The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
  , lastModifiedOn :: Core.Maybe Core.NominalDiffTime
    -- ^ The date and time when the workflow was last modified.
  , lastRun :: Core.Maybe Types.WorkflowRun
    -- ^ The information about the last execution of the workflow.
  , maxConcurrentRuns :: Core.Maybe Core.Int
    -- ^ You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
  , name :: Core.Maybe Types.NameString
    -- ^ The name of the workflow representing the flow.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'Workflow' value with any optional fields omitted.
mkWorkflow
    :: Workflow
mkWorkflow
  = Workflow'{createdOn = Core.Nothing,
              defaultRunProperties = Core.Nothing, description = Core.Nothing,
              graph = Core.Nothing, lastModifiedOn = Core.Nothing,
              lastRun = Core.Nothing, maxConcurrentRuns = Core.Nothing,
              name = Core.Nothing}

-- | The date and time when the workflow was created.
--
-- /Note:/ Consider using 'createdOn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wCreatedOn :: Lens.Lens' Workflow (Core.Maybe Core.NominalDiffTime)
wCreatedOn = Lens.field @"createdOn"
{-# INLINEABLE wCreatedOn #-}
{-# DEPRECATED createdOn "Use generic-lens or generic-optics with 'createdOn' instead"  #-}

-- | A collection of properties to be used as part of each execution of the workflow.
--
-- /Note:/ Consider using 'defaultRunProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wDefaultRunProperties :: Lens.Lens' Workflow (Core.Maybe (Core.HashMap Types.IdString Types.GenericString))
wDefaultRunProperties = Lens.field @"defaultRunProperties"
{-# INLINEABLE wDefaultRunProperties #-}
{-# DEPRECATED defaultRunProperties "Use generic-lens or generic-optics with 'defaultRunProperties' instead"  #-}

-- | A description of the workflow.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wDescription :: Lens.Lens' Workflow (Core.Maybe Types.GenericString)
wDescription = Lens.field @"description"
{-# INLINEABLE wDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.
--
-- /Note:/ Consider using 'graph' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wGraph :: Lens.Lens' Workflow (Core.Maybe Types.WorkflowGraph)
wGraph = Lens.field @"graph"
{-# INLINEABLE wGraph #-}
{-# DEPRECATED graph "Use generic-lens or generic-optics with 'graph' instead"  #-}

-- | The date and time when the workflow was last modified.
--
-- /Note:/ Consider using 'lastModifiedOn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wLastModifiedOn :: Lens.Lens' Workflow (Core.Maybe Core.NominalDiffTime)
wLastModifiedOn = Lens.field @"lastModifiedOn"
{-# INLINEABLE wLastModifiedOn #-}
{-# DEPRECATED lastModifiedOn "Use generic-lens or generic-optics with 'lastModifiedOn' instead"  #-}

-- | The information about the last execution of the workflow.
--
-- /Note:/ Consider using 'lastRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wLastRun :: Lens.Lens' Workflow (Core.Maybe Types.WorkflowRun)
wLastRun = Lens.field @"lastRun"
{-# INLINEABLE wLastRun #-}
{-# DEPRECATED lastRun "Use generic-lens or generic-optics with 'lastRun' instead"  #-}

-- | You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.
--
-- /Note:/ Consider using 'maxConcurrentRuns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wMaxConcurrentRuns :: Lens.Lens' Workflow (Core.Maybe Core.Int)
wMaxConcurrentRuns = Lens.field @"maxConcurrentRuns"
{-# INLINEABLE wMaxConcurrentRuns #-}
{-# DEPRECATED maxConcurrentRuns "Use generic-lens or generic-optics with 'maxConcurrentRuns' instead"  #-}

-- | The name of the workflow representing the flow.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wName :: Lens.Lens' Workflow (Core.Maybe Types.NameString)
wName = Lens.field @"name"
{-# INLINEABLE wName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.FromJSON Workflow where
        parseJSON
          = Core.withObject "Workflow" Core.$
              \ x ->
                Workflow' Core.<$>
                  (x Core..:? "CreatedOn") Core.<*> x Core..:? "DefaultRunProperties"
                    Core.<*> x Core..:? "Description"
                    Core.<*> x Core..:? "Graph"
                    Core.<*> x Core..:? "LastModifiedOn"
                    Core.<*> x Core..:? "LastRun"
                    Core.<*> x Core..:? "MaxConcurrentRuns"
                    Core.<*> x Core..:? "Name"
