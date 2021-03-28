{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.CompatibleImage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Snowball.Types.CompatibleImage
  ( CompatibleImage (..)
  -- * Smart constructor
  , mkCompatibleImage
  -- * Lenses
  , ciAmiId
  , ciName
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A JSON-formatted object that describes a compatible Amazon Machine Image (AMI), including the ID and name for a Snow device AMI. This AMI is compatible with the device's physical hardware requirements, and it should be able to be run in an SBE1 instance on the device.
--
-- /See:/ 'mkCompatibleImage' smart constructor.
data CompatibleImage = CompatibleImage'
  { amiId :: Core.Maybe Core.Text
    -- ^ The unique identifier for an individual Snow device AMI.
  , name :: Core.Maybe Core.Text
    -- ^ The optional name of a compatible image.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CompatibleImage' value with any optional fields omitted.
mkCompatibleImage
    :: CompatibleImage
mkCompatibleImage
  = CompatibleImage'{amiId = Core.Nothing, name = Core.Nothing}

-- | The unique identifier for an individual Snow device AMI.
--
-- /Note:/ Consider using 'amiId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciAmiId :: Lens.Lens' CompatibleImage (Core.Maybe Core.Text)
ciAmiId = Lens.field @"amiId"
{-# INLINEABLE ciAmiId #-}
{-# DEPRECATED amiId "Use generic-lens or generic-optics with 'amiId' instead"  #-}

-- | The optional name of a compatible image.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciName :: Lens.Lens' CompatibleImage (Core.Maybe Core.Text)
ciName = Lens.field @"name"
{-# INLINEABLE ciName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.FromJSON CompatibleImage where
        parseJSON
          = Core.withObject "CompatibleImage" Core.$
              \ x ->
                CompatibleImage' Core.<$>
                  (x Core..:? "AmiId") Core.<*> x Core..:? "Name"
