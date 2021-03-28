{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceRegistryLogin
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.ContainerServiceRegistryLogin
  ( ContainerServiceRegistryLogin (..)
  -- * Smart constructor
  , mkContainerServiceRegistryLogin
  -- * Lenses
  , csrlExpiresAt
  , csrlPassword
  , csrlRegistry
  , csrlUsername
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the login information for the container image registry of an Amazon Lightsail account.
--
-- /See:/ 'mkContainerServiceRegistryLogin' smart constructor.
data ContainerServiceRegistryLogin = ContainerServiceRegistryLogin'
  { expiresAt :: Core.Maybe Core.NominalDiffTime
    -- ^ The timestamp of when the container image registry username and password expire.
--
-- The log in credentials expire 12 hours after they are created, at which point you will need to create a new set of log in credentials using the @CreateContainerServiceRegistryLogin@ action.
  , password :: Core.Maybe Core.Text
    -- ^ The container service registry password to use to push container images to the container image registry of a Lightsail account
  , registry :: Core.Maybe Core.Text
    -- ^ The address to use to push container images to the container image registry of a Lightsail account.
  , username :: Core.Maybe Core.Text
    -- ^ The container service registry username to use to push container images to the container image registry of a Lightsail account.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ContainerServiceRegistryLogin' value with any optional fields omitted.
mkContainerServiceRegistryLogin
    :: ContainerServiceRegistryLogin
mkContainerServiceRegistryLogin
  = ContainerServiceRegistryLogin'{expiresAt = Core.Nothing,
                                   password = Core.Nothing, registry = Core.Nothing,
                                   username = Core.Nothing}

-- | The timestamp of when the container image registry username and password expire.
--
-- The log in credentials expire 12 hours after they are created, at which point you will need to create a new set of log in credentials using the @CreateContainerServiceRegistryLogin@ action.
--
-- /Note:/ Consider using 'expiresAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csrlExpiresAt :: Lens.Lens' ContainerServiceRegistryLogin (Core.Maybe Core.NominalDiffTime)
csrlExpiresAt = Lens.field @"expiresAt"
{-# INLINEABLE csrlExpiresAt #-}
{-# DEPRECATED expiresAt "Use generic-lens or generic-optics with 'expiresAt' instead"  #-}

-- | The container service registry password to use to push container images to the container image registry of a Lightsail account
--
-- /Note:/ Consider using 'password' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csrlPassword :: Lens.Lens' ContainerServiceRegistryLogin (Core.Maybe Core.Text)
csrlPassword = Lens.field @"password"
{-# INLINEABLE csrlPassword #-}
{-# DEPRECATED password "Use generic-lens or generic-optics with 'password' instead"  #-}

-- | The address to use to push container images to the container image registry of a Lightsail account.
--
-- /Note:/ Consider using 'registry' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csrlRegistry :: Lens.Lens' ContainerServiceRegistryLogin (Core.Maybe Core.Text)
csrlRegistry = Lens.field @"registry"
{-# INLINEABLE csrlRegistry #-}
{-# DEPRECATED registry "Use generic-lens or generic-optics with 'registry' instead"  #-}

-- | The container service registry username to use to push container images to the container image registry of a Lightsail account.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csrlUsername :: Lens.Lens' ContainerServiceRegistryLogin (Core.Maybe Core.Text)
csrlUsername = Lens.field @"username"
{-# INLINEABLE csrlUsername #-}
{-# DEPRECATED username "Use generic-lens or generic-optics with 'username' instead"  #-}

instance Core.FromJSON ContainerServiceRegistryLogin where
        parseJSON
          = Core.withObject "ContainerServiceRegistryLogin" Core.$
              \ x ->
                ContainerServiceRegistryLogin' Core.<$>
                  (x Core..:? "expiresAt") Core.<*> x Core..:? "password" Core.<*>
                    x Core..:? "registry"
                    Core.<*> x Core..:? "username"
