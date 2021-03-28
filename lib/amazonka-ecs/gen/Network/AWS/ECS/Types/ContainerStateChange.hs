{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ContainerStateChange
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ECS.Types.ContainerStateChange
  ( ContainerStateChange (..)
  -- * Smart constructor
  , mkContainerStateChange
  -- * Lenses
  , cscContainerName
  , cscExitCode
  , cscImageDigest
  , cscNetworkBindings
  , cscReason
  , cscRuntimeId
  , cscStatus
  ) where

import qualified Network.AWS.ECS.Types.NetworkBinding as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An object representing a change in state for a container.
--
-- /See:/ 'mkContainerStateChange' smart constructor.
data ContainerStateChange = ContainerStateChange'
  { containerName :: Core.Maybe Core.Text
    -- ^ The name of the container.
  , exitCode :: Core.Maybe Core.Int
    -- ^ The exit code for the container, if the state change is a result of the container exiting.
  , imageDigest :: Core.Maybe Core.Text
    -- ^ The container image SHA 256 digest.
  , networkBindings :: Core.Maybe [Types.NetworkBinding]
    -- ^ Any network bindings associated with the container.
  , reason :: Core.Maybe Core.Text
    -- ^ The reason for the state change.
  , runtimeId :: Core.Maybe Core.Text
    -- ^ The ID of the Docker container.
  , status :: Core.Maybe Core.Text
    -- ^ The status of the container.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ContainerStateChange' value with any optional fields omitted.
mkContainerStateChange
    :: ContainerStateChange
mkContainerStateChange
  = ContainerStateChange'{containerName = Core.Nothing,
                          exitCode = Core.Nothing, imageDigest = Core.Nothing,
                          networkBindings = Core.Nothing, reason = Core.Nothing,
                          runtimeId = Core.Nothing, status = Core.Nothing}

-- | The name of the container.
--
-- /Note:/ Consider using 'containerName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscContainerName :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Text)
cscContainerName = Lens.field @"containerName"
{-# INLINEABLE cscContainerName #-}
{-# DEPRECATED containerName "Use generic-lens or generic-optics with 'containerName' instead"  #-}

-- | The exit code for the container, if the state change is a result of the container exiting.
--
-- /Note:/ Consider using 'exitCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscExitCode :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Int)
cscExitCode = Lens.field @"exitCode"
{-# INLINEABLE cscExitCode #-}
{-# DEPRECATED exitCode "Use generic-lens or generic-optics with 'exitCode' instead"  #-}

-- | The container image SHA 256 digest.
--
-- /Note:/ Consider using 'imageDigest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscImageDigest :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Text)
cscImageDigest = Lens.field @"imageDigest"
{-# INLINEABLE cscImageDigest #-}
{-# DEPRECATED imageDigest "Use generic-lens or generic-optics with 'imageDigest' instead"  #-}

-- | Any network bindings associated with the container.
--
-- /Note:/ Consider using 'networkBindings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscNetworkBindings :: Lens.Lens' ContainerStateChange (Core.Maybe [Types.NetworkBinding])
cscNetworkBindings = Lens.field @"networkBindings"
{-# INLINEABLE cscNetworkBindings #-}
{-# DEPRECATED networkBindings "Use generic-lens or generic-optics with 'networkBindings' instead"  #-}

-- | The reason for the state change.
--
-- /Note:/ Consider using 'reason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscReason :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Text)
cscReason = Lens.field @"reason"
{-# INLINEABLE cscReason #-}
{-# DEPRECATED reason "Use generic-lens or generic-optics with 'reason' instead"  #-}

-- | The ID of the Docker container.
--
-- /Note:/ Consider using 'runtimeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscRuntimeId :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Text)
cscRuntimeId = Lens.field @"runtimeId"
{-# INLINEABLE cscRuntimeId #-}
{-# DEPRECATED runtimeId "Use generic-lens or generic-optics with 'runtimeId' instead"  #-}

-- | The status of the container.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cscStatus :: Lens.Lens' ContainerStateChange (Core.Maybe Core.Text)
cscStatus = Lens.field @"status"
{-# INLINEABLE cscStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

instance Core.FromJSON ContainerStateChange where
        toJSON ContainerStateChange{..}
          = Core.object
              (Core.catMaybes
                 [("containerName" Core..=) Core.<$> containerName,
                  ("exitCode" Core..=) Core.<$> exitCode,
                  ("imageDigest" Core..=) Core.<$> imageDigest,
                  ("networkBindings" Core..=) Core.<$> networkBindings,
                  ("reason" Core..=) Core.<$> reason,
                  ("runtimeId" Core..=) Core.<$> runtimeId,
                  ("status" Core..=) Core.<$> status])
