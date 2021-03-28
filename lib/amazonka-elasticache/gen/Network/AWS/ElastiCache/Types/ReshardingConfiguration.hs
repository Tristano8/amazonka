{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ReshardingConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.ReshardingConfiguration
  ( ReshardingConfiguration (..)
  -- * Smart constructor
  , mkReshardingConfiguration
  -- * Lenses
  , rcNodeGroupId
  , rcPreferredAvailabilityZones
  ) where

import qualified Network.AWS.ElastiCache.Types.AllowedNodeGroupId as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A list of @PreferredAvailabilityZones@ objects that specifies the configuration of a node group in the resharded cluster.
--
-- /See:/ 'mkReshardingConfiguration' smart constructor.
data ReshardingConfiguration = ReshardingConfiguration'
  { nodeGroupId :: Core.Maybe Types.AllowedNodeGroupId
    -- ^ Either the ElastiCache for Redis supplied 4-digit id or a user supplied id for the node group these configuration values apply to.
  , preferredAvailabilityZones :: Core.Maybe [Core.Text]
    -- ^ A list of preferred availability zones for the nodes in this cluster.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ReshardingConfiguration' value with any optional fields omitted.
mkReshardingConfiguration
    :: ReshardingConfiguration
mkReshardingConfiguration
  = ReshardingConfiguration'{nodeGroupId = Core.Nothing,
                             preferredAvailabilityZones = Core.Nothing}

-- | Either the ElastiCache for Redis supplied 4-digit id or a user supplied id for the node group these configuration values apply to.
--
-- /Note:/ Consider using 'nodeGroupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcNodeGroupId :: Lens.Lens' ReshardingConfiguration (Core.Maybe Types.AllowedNodeGroupId)
rcNodeGroupId = Lens.field @"nodeGroupId"
{-# INLINEABLE rcNodeGroupId #-}
{-# DEPRECATED nodeGroupId "Use generic-lens or generic-optics with 'nodeGroupId' instead"  #-}

-- | A list of preferred availability zones for the nodes in this cluster.
--
-- /Note:/ Consider using 'preferredAvailabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcPreferredAvailabilityZones :: Lens.Lens' ReshardingConfiguration (Core.Maybe [Core.Text])
rcPreferredAvailabilityZones = Lens.field @"preferredAvailabilityZones"
{-# INLINEABLE rcPreferredAvailabilityZones #-}
{-# DEPRECATED preferredAvailabilityZones "Use generic-lens or generic-optics with 'preferredAvailabilityZones' instead"  #-}

instance Core.ToQuery ReshardingConfiguration where
        toQuery ReshardingConfiguration{..}
          = Core.maybe Core.mempty (Core.toQueryPair "NodeGroupId")
              nodeGroupId
              Core.<>
              Core.toQueryPair "PreferredAvailabilityZones"
                (Core.maybe Core.mempty (Core.toQueryList "AvailabilityZone")
                   preferredAvailabilityZones)
