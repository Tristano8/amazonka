{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationPendingModifiedValues
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.ReplicationPendingModifiedValues
  ( ReplicationPendingModifiedValues (..)
  -- * Smart constructor
  , mkReplicationPendingModifiedValues
  -- * Lenses
  , rpmvAllocatedStorage
  , rpmvEngineVersion
  , rpmvMultiAZ
  , rpmvReplicationInstanceClass
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Provides information about the values of pending modifications to a replication instance. This data type is an object of the <https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html @ReplicationInstance@ > user-defined data type. 
--
-- /See:/ 'mkReplicationPendingModifiedValues' smart constructor.
data ReplicationPendingModifiedValues = ReplicationPendingModifiedValues'
  { allocatedStorage :: Core.Maybe Core.Int
    -- ^ The amount of storage (in gigabytes) that is allocated for the replication instance.
  , engineVersion :: Core.Maybe Core.Text
    -- ^ The engine version number of the replication instance.
  , multiAZ :: Core.Maybe Core.Bool
    -- ^ Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ . 
  , replicationInstanceClass :: Core.Maybe Core.Text
    -- ^ The compute and memory capacity of the replication instance as defined for the specified replication instance class.
--
-- For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> . 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ReplicationPendingModifiedValues' value with any optional fields omitted.
mkReplicationPendingModifiedValues
    :: ReplicationPendingModifiedValues
mkReplicationPendingModifiedValues
  = ReplicationPendingModifiedValues'{allocatedStorage =
                                        Core.Nothing,
                                      engineVersion = Core.Nothing, multiAZ = Core.Nothing,
                                      replicationInstanceClass = Core.Nothing}

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- /Note:/ Consider using 'allocatedStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpmvAllocatedStorage :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Int)
rpmvAllocatedStorage = Lens.field @"allocatedStorage"
{-# INLINEABLE rpmvAllocatedStorage #-}
{-# DEPRECATED allocatedStorage "Use generic-lens or generic-optics with 'allocatedStorage' instead"  #-}

-- | The engine version number of the replication instance.
--
-- /Note:/ Consider using 'engineVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpmvEngineVersion :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Text)
rpmvEngineVersion = Lens.field @"engineVersion"
{-# INLINEABLE rpmvEngineVersion #-}
{-# DEPRECATED engineVersion "Use generic-lens or generic-optics with 'engineVersion' instead"  #-}

-- | Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ . 
--
-- /Note:/ Consider using 'multiAZ' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpmvMultiAZ :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Bool)
rpmvMultiAZ = Lens.field @"multiAZ"
{-# INLINEABLE rpmvMultiAZ #-}
{-# DEPRECATED multiAZ "Use generic-lens or generic-optics with 'multiAZ' instead"  #-}

-- | The compute and memory capacity of the replication instance as defined for the specified replication instance class.
--
-- For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> . 
--
-- /Note:/ Consider using 'replicationInstanceClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpmvReplicationInstanceClass :: Lens.Lens' ReplicationPendingModifiedValues (Core.Maybe Core.Text)
rpmvReplicationInstanceClass = Lens.field @"replicationInstanceClass"
{-# INLINEABLE rpmvReplicationInstanceClass #-}
{-# DEPRECATED replicationInstanceClass "Use generic-lens or generic-optics with 'replicationInstanceClass' instead"  #-}

instance Core.FromJSON ReplicationPendingModifiedValues where
        parseJSON
          = Core.withObject "ReplicationPendingModifiedValues" Core.$
              \ x ->
                ReplicationPendingModifiedValues' Core.<$>
                  (x Core..:? "AllocatedStorage") Core.<*> x Core..:? "EngineVersion"
                    Core.<*> x Core..:? "MultiAZ"
                    Core.<*> x Core..:? "ReplicationInstanceClass"
