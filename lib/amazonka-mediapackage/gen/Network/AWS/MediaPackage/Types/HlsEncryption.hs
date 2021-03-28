{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.HlsEncryption
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaPackage.Types.HlsEncryption
  ( HlsEncryption (..)
  -- * Smart constructor
  , mkHlsEncryption
  -- * Lenses
  , heSpekeKeyProvider
  , heConstantInitializationVector
  , heEncryptionMethod
  , heKeyRotationIntervalSeconds
  , heRepeatExtXKey
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaPackage.Types.EncryptionMethod as Types
import qualified Network.AWS.MediaPackage.Types.SpekeKeyProvider as Types
import qualified Network.AWS.Prelude as Core

-- | An HTTP Live Streaming (HLS) encryption configuration.
--
-- /See:/ 'mkHlsEncryption' smart constructor.
data HlsEncryption = HlsEncryption'
  { spekeKeyProvider :: Types.SpekeKeyProvider
  , constantInitializationVector :: Core.Maybe Core.Text
    -- ^ A constant initialization vector for encryption (optional).
--
-- When not specified the initialization vector will be periodically rotated.
  , encryptionMethod :: Core.Maybe Types.EncryptionMethod
    -- ^ The encryption method to use.
  , keyRotationIntervalSeconds :: Core.Maybe Core.Int
    -- ^ Interval (in seconds) between each encryption key rotation.
  , repeatExtXKey :: Core.Maybe Core.Bool
    -- ^ When enabled, the EXT-X-KEY tag will be repeated in output manifests.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'HlsEncryption' value with any optional fields omitted.
mkHlsEncryption
    :: Types.SpekeKeyProvider -- ^ 'spekeKeyProvider'
    -> HlsEncryption
mkHlsEncryption spekeKeyProvider
  = HlsEncryption'{spekeKeyProvider,
                   constantInitializationVector = Core.Nothing,
                   encryptionMethod = Core.Nothing,
                   keyRotationIntervalSeconds = Core.Nothing,
                   repeatExtXKey = Core.Nothing}

-- | Undocumented field.
--
-- /Note:/ Consider using 'spekeKeyProvider' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
heSpekeKeyProvider :: Lens.Lens' HlsEncryption Types.SpekeKeyProvider
heSpekeKeyProvider = Lens.field @"spekeKeyProvider"
{-# INLINEABLE heSpekeKeyProvider #-}
{-# DEPRECATED spekeKeyProvider "Use generic-lens or generic-optics with 'spekeKeyProvider' instead"  #-}

-- | A constant initialization vector for encryption (optional).
--
-- When not specified the initialization vector will be periodically rotated.
--
-- /Note:/ Consider using 'constantInitializationVector' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
heConstantInitializationVector :: Lens.Lens' HlsEncryption (Core.Maybe Core.Text)
heConstantInitializationVector = Lens.field @"constantInitializationVector"
{-# INLINEABLE heConstantInitializationVector #-}
{-# DEPRECATED constantInitializationVector "Use generic-lens or generic-optics with 'constantInitializationVector' instead"  #-}

-- | The encryption method to use.
--
-- /Note:/ Consider using 'encryptionMethod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
heEncryptionMethod :: Lens.Lens' HlsEncryption (Core.Maybe Types.EncryptionMethod)
heEncryptionMethod = Lens.field @"encryptionMethod"
{-# INLINEABLE heEncryptionMethod #-}
{-# DEPRECATED encryptionMethod "Use generic-lens or generic-optics with 'encryptionMethod' instead"  #-}

-- | Interval (in seconds) between each encryption key rotation.
--
-- /Note:/ Consider using 'keyRotationIntervalSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
heKeyRotationIntervalSeconds :: Lens.Lens' HlsEncryption (Core.Maybe Core.Int)
heKeyRotationIntervalSeconds = Lens.field @"keyRotationIntervalSeconds"
{-# INLINEABLE heKeyRotationIntervalSeconds #-}
{-# DEPRECATED keyRotationIntervalSeconds "Use generic-lens or generic-optics with 'keyRotationIntervalSeconds' instead"  #-}

-- | When enabled, the EXT-X-KEY tag will be repeated in output manifests.
--
-- /Note:/ Consider using 'repeatExtXKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
heRepeatExtXKey :: Lens.Lens' HlsEncryption (Core.Maybe Core.Bool)
heRepeatExtXKey = Lens.field @"repeatExtXKey"
{-# INLINEABLE heRepeatExtXKey #-}
{-# DEPRECATED repeatExtXKey "Use generic-lens or generic-optics with 'repeatExtXKey' instead"  #-}

instance Core.FromJSON HlsEncryption where
        toJSON HlsEncryption{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("spekeKeyProvider" Core..= spekeKeyProvider),
                  ("constantInitializationVector" Core..=) Core.<$>
                    constantInitializationVector,
                  ("encryptionMethod" Core..=) Core.<$> encryptionMethod,
                  ("keyRotationIntervalSeconds" Core..=) Core.<$>
                    keyRotationIntervalSeconds,
                  ("repeatExtXKey" Core..=) Core.<$> repeatExtXKey])

instance Core.FromJSON HlsEncryption where
        parseJSON
          = Core.withObject "HlsEncryption" Core.$
              \ x ->
                HlsEncryption' Core.<$>
                  (x Core..: "spekeKeyProvider") Core.<*>
                    x Core..:? "constantInitializationVector"
                    Core.<*> x Core..:? "encryptionMethod"
                    Core.<*> x Core..:? "keyRotationIntervalSeconds"
                    Core.<*> x Core..:? "repeatExtXKey"
