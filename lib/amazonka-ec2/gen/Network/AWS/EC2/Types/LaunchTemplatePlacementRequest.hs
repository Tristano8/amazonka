{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchTemplatePlacementRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.LaunchTemplatePlacementRequest
  ( LaunchTemplatePlacementRequest (..)
  -- * Smart constructor
  , mkLaunchTemplatePlacementRequest
  -- * Lenses
  , ltprAffinity
  , ltprAvailabilityZone
  , ltprGroupName
  , ltprHostId
  , ltprHostResourceGroupArn
  , ltprPartitionNumber
  , ltprSpreadDomain
  , ltprTenancy
  ) where

import qualified Network.AWS.EC2.Types.GroupName as Types
import qualified Network.AWS.EC2.Types.HostId as Types
import qualified Network.AWS.EC2.Types.Tenancy as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the placement of an instance.
--
-- /See:/ 'mkLaunchTemplatePlacementRequest' smart constructor.
data LaunchTemplatePlacementRequest = LaunchTemplatePlacementRequest'
  { affinity :: Core.Maybe Core.Text
    -- ^ The affinity setting for an instance on a Dedicated Host.
  , availabilityZone :: Core.Maybe Core.Text
    -- ^ The Availability Zone for the instance.
  , groupName :: Core.Maybe Types.GroupName
    -- ^ The name of the placement group for the instance.
  , hostId :: Core.Maybe Types.HostId
    -- ^ The ID of the Dedicated Host for the instance.
  , hostResourceGroupArn :: Core.Maybe Core.Text
    -- ^ The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ .
  , partitionNumber :: Core.Maybe Core.Int
    -- ^ The number of the partition the instance should launch in. Valid only if the placement group strategy is set to @partition@ .
  , spreadDomain :: Core.Maybe Core.Text
    -- ^ Reserved for future use.
  , tenancy :: Core.Maybe Types.Tenancy
    -- ^ The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LaunchTemplatePlacementRequest' value with any optional fields omitted.
mkLaunchTemplatePlacementRequest
    :: LaunchTemplatePlacementRequest
mkLaunchTemplatePlacementRequest
  = LaunchTemplatePlacementRequest'{affinity = Core.Nothing,
                                    availabilityZone = Core.Nothing, groupName = Core.Nothing,
                                    hostId = Core.Nothing, hostResourceGroupArn = Core.Nothing,
                                    partitionNumber = Core.Nothing, spreadDomain = Core.Nothing,
                                    tenancy = Core.Nothing}

-- | The affinity setting for an instance on a Dedicated Host.
--
-- /Note:/ Consider using 'affinity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprAffinity :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Core.Text)
ltprAffinity = Lens.field @"affinity"
{-# INLINEABLE ltprAffinity #-}
{-# DEPRECATED affinity "Use generic-lens or generic-optics with 'affinity' instead"  #-}

-- | The Availability Zone for the instance.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprAvailabilityZone :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Core.Text)
ltprAvailabilityZone = Lens.field @"availabilityZone"
{-# INLINEABLE ltprAvailabilityZone #-}
{-# DEPRECATED availabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead"  #-}

-- | The name of the placement group for the instance.
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprGroupName :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Types.GroupName)
ltprGroupName = Lens.field @"groupName"
{-# INLINEABLE ltprGroupName #-}
{-# DEPRECATED groupName "Use generic-lens or generic-optics with 'groupName' instead"  #-}

-- | The ID of the Dedicated Host for the instance.
--
-- /Note:/ Consider using 'hostId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprHostId :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Types.HostId)
ltprHostId = Lens.field @"hostId"
{-# INLINEABLE ltprHostId #-}
{-# DEPRECATED hostId "Use generic-lens or generic-optics with 'hostId' instead"  #-}

-- | The ARN of the host resource group in which to launch the instances. If you specify a host resource group ARN, omit the __Tenancy__ parameter or set it to @host@ .
--
-- /Note:/ Consider using 'hostResourceGroupArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprHostResourceGroupArn :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Core.Text)
ltprHostResourceGroupArn = Lens.field @"hostResourceGroupArn"
{-# INLINEABLE ltprHostResourceGroupArn #-}
{-# DEPRECATED hostResourceGroupArn "Use generic-lens or generic-optics with 'hostResourceGroupArn' instead"  #-}

-- | The number of the partition the instance should launch in. Valid only if the placement group strategy is set to @partition@ .
--
-- /Note:/ Consider using 'partitionNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprPartitionNumber :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Core.Int)
ltprPartitionNumber = Lens.field @"partitionNumber"
{-# INLINEABLE ltprPartitionNumber #-}
{-# DEPRECATED partitionNumber "Use generic-lens or generic-optics with 'partitionNumber' instead"  #-}

-- | Reserved for future use.
--
-- /Note:/ Consider using 'spreadDomain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprSpreadDomain :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Core.Text)
ltprSpreadDomain = Lens.field @"spreadDomain"
{-# INLINEABLE ltprSpreadDomain #-}
{-# DEPRECATED spreadDomain "Use generic-lens or generic-optics with 'spreadDomain' instead"  #-}

-- | The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware.
--
-- /Note:/ Consider using 'tenancy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltprTenancy :: Lens.Lens' LaunchTemplatePlacementRequest (Core.Maybe Types.Tenancy)
ltprTenancy = Lens.field @"tenancy"
{-# INLINEABLE ltprTenancy #-}
{-# DEPRECATED tenancy "Use generic-lens or generic-optics with 'tenancy' instead"  #-}

instance Core.ToQuery LaunchTemplatePlacementRequest where
        toQuery LaunchTemplatePlacementRequest{..}
          = Core.maybe Core.mempty (Core.toQueryPair "Affinity") affinity
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "AvailabilityZone")
                availabilityZone
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "GroupName") groupName
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "HostId") hostId
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "HostResourceGroupArn")
                hostResourceGroupArn
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "PartitionNumber")
                partitionNumber
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SpreadDomain")
                spreadDomain
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Tenancy") tenancy
