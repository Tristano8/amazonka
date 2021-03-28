{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexGroupSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.MultiplexGroupSettings
  ( MultiplexGroupSettings (..)
  -- * Smart constructor
  , mkMultiplexGroupSettings
  -- * Lenses
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Multiplex Group Settings
--
-- /See:/ 'mkMultiplexGroupSettings' smart constructor.
data MultiplexGroupSettings = MultiplexGroupSettings'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'MultiplexGroupSettings' value with any optional fields omitted.
mkMultiplexGroupSettings
    :: MultiplexGroupSettings
mkMultiplexGroupSettings = MultiplexGroupSettings'

instance Core.FromJSON MultiplexGroupSettings where
        toJSON _ = Core.Object Core.mempty

instance Core.FromJSON MultiplexGroupSettings where
        parseJSON
          = Core.withObject "MultiplexGroupSettings" Core.$
              \ x -> Core.pure MultiplexGroupSettings'
