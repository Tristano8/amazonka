{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.AgentVersion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.AgentVersion
  ( AgentVersion (..)
  -- * Smart constructor
  , mkAgentVersion
  -- * Lenses
  , avConfigurationManager
  , avVersion
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types.StackConfigurationManager as Types
import qualified Network.AWS.Prelude as Core

-- | Describes an agent version.
--
-- /See:/ 'mkAgentVersion' smart constructor.
data AgentVersion = AgentVersion'
  { configurationManager :: Core.Maybe Types.StackConfigurationManager
    -- ^ The configuration manager.
  , version :: Core.Maybe Core.Text
    -- ^ The agent version.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AgentVersion' value with any optional fields omitted.
mkAgentVersion
    :: AgentVersion
mkAgentVersion
  = AgentVersion'{configurationManager = Core.Nothing,
                  version = Core.Nothing}

-- | The configuration manager.
--
-- /Note:/ Consider using 'configurationManager' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avConfigurationManager :: Lens.Lens' AgentVersion (Core.Maybe Types.StackConfigurationManager)
avConfigurationManager = Lens.field @"configurationManager"
{-# INLINEABLE avConfigurationManager #-}
{-# DEPRECATED configurationManager "Use generic-lens or generic-optics with 'configurationManager' instead"  #-}

-- | The agent version.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avVersion :: Lens.Lens' AgentVersion (Core.Maybe Core.Text)
avVersion = Lens.field @"version"
{-# INLINEABLE avVersion #-}
{-# DEPRECATED version "Use generic-lens or generic-optics with 'version' instead"  #-}

instance Core.FromJSON AgentVersion where
        parseJSON
          = Core.withObject "AgentVersion" Core.$
              \ x ->
                AgentVersion' Core.<$>
                  (x Core..:? "ConfigurationManager") Core.<*> x Core..:? "Version"
