{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.EcsCluster
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.EcsCluster
  ( EcsCluster (..)
  -- * Smart constructor
  , mkEcsCluster
  -- * Lenses
  , ecEcsClusterArn
  , ecEcsClusterName
  , ecRegisteredAt
  , ecStackId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types.RegisteredAt as Types
import qualified Network.AWS.Prelude as Core

-- | Describes a registered Amazon ECS cluster.
--
-- /See:/ 'mkEcsCluster' smart constructor.
data EcsCluster = EcsCluster'
  { ecsClusterArn :: Core.Maybe Core.Text
    -- ^ The cluster's ARN.
  , ecsClusterName :: Core.Maybe Core.Text
    -- ^ The cluster name.
  , registeredAt :: Core.Maybe Types.RegisteredAt
    -- ^ The time and date that the cluster was registered with the stack.
  , stackId :: Core.Maybe Core.Text
    -- ^ The stack ID.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EcsCluster' value with any optional fields omitted.
mkEcsCluster
    :: EcsCluster
mkEcsCluster
  = EcsCluster'{ecsClusterArn = Core.Nothing,
                ecsClusterName = Core.Nothing, registeredAt = Core.Nothing,
                stackId = Core.Nothing}

-- | The cluster's ARN.
--
-- /Note:/ Consider using 'ecsClusterArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecEcsClusterArn :: Lens.Lens' EcsCluster (Core.Maybe Core.Text)
ecEcsClusterArn = Lens.field @"ecsClusterArn"
{-# INLINEABLE ecEcsClusterArn #-}
{-# DEPRECATED ecsClusterArn "Use generic-lens or generic-optics with 'ecsClusterArn' instead"  #-}

-- | The cluster name.
--
-- /Note:/ Consider using 'ecsClusterName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecEcsClusterName :: Lens.Lens' EcsCluster (Core.Maybe Core.Text)
ecEcsClusterName = Lens.field @"ecsClusterName"
{-# INLINEABLE ecEcsClusterName #-}
{-# DEPRECATED ecsClusterName "Use generic-lens or generic-optics with 'ecsClusterName' instead"  #-}

-- | The time and date that the cluster was registered with the stack.
--
-- /Note:/ Consider using 'registeredAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecRegisteredAt :: Lens.Lens' EcsCluster (Core.Maybe Types.RegisteredAt)
ecRegisteredAt = Lens.field @"registeredAt"
{-# INLINEABLE ecRegisteredAt #-}
{-# DEPRECATED registeredAt "Use generic-lens or generic-optics with 'registeredAt' instead"  #-}

-- | The stack ID.
--
-- /Note:/ Consider using 'stackId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecStackId :: Lens.Lens' EcsCluster (Core.Maybe Core.Text)
ecStackId = Lens.field @"stackId"
{-# INLINEABLE ecStackId #-}
{-# DEPRECATED stackId "Use generic-lens or generic-optics with 'stackId' instead"  #-}

instance Core.FromJSON EcsCluster where
        parseJSON
          = Core.withObject "EcsCluster" Core.$
              \ x ->
                EcsCluster' Core.<$>
                  (x Core..:? "EcsClusterArn") Core.<*> x Core..:? "EcsClusterName"
                    Core.<*> x Core..:? "RegisteredAt"
                    Core.<*> x Core..:? "StackId"
