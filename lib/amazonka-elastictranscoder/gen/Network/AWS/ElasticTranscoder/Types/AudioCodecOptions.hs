{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.AudioCodecOptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticTranscoder.Types.AudioCodecOptions
  ( AudioCodecOptions (..)
  -- * Smart constructor
  , mkAudioCodecOptions
  -- * Lenses
  , acoBitDepth
  , acoBitOrder
  , acoProfile
  , acoSigned
  ) where

import qualified Network.AWS.ElasticTranscoder.Types.AudioBitDepth as Types
import qualified Network.AWS.ElasticTranscoder.Types.AudioSigned as Types
import qualified Network.AWS.ElasticTranscoder.Types.BitOrder as Types
import qualified Network.AWS.ElasticTranscoder.Types.Profile as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Options associated with your audio codec.
--
-- /See:/ 'mkAudioCodecOptions' smart constructor.
data AudioCodecOptions = AudioCodecOptions'
  { bitDepth :: Core.Maybe Types.AudioBitDepth
    -- ^ You can only choose an audio bit depth when you specify @flac@ or @pcm@ for the value of Audio:Codec.
--
-- The bit depth of a sample is how many bits of information are included in the audio samples. The higher the bit depth, the better the audio, but the larger the file.
-- Valid values are @16@ and @24@ .
-- The most common bit depth is @24@ .
  , bitOrder :: Core.Maybe Types.BitOrder
    -- ^ You can only choose an audio bit order when you specify @pcm@ for the value of Audio:Codec.
--
-- The order the bits of a PCM sample are stored in.
-- The supported value is @LittleEndian@ .
  , profile :: Core.Maybe Types.Profile
    -- ^ You can only choose an audio profile when you specify AAC for the value of Audio:Codec.
--
-- Specify the AAC profile for the output file. Elastic Transcoder supports the following profiles:
--
--     * @auto@ : If you specify @auto@ , Elastic Transcoder selects the profile based on the bit rate selected for the output file.
--
--
--     * @AAC-LC@ : The most common AAC profile. Use for bit rates larger than 64 kbps.
--
--
--     * @HE-AAC@ : Not supported on some older players and devices. Use for bit rates between 40 and 80 kbps.
--
--
--     * @HE-AACv2@ : Not supported on some players and devices. Use for bit rates less than 48 kbps.
--
--
-- All outputs in a @Smooth@ playlist must have the same value for @Profile@ .
  , signed :: Core.Maybe Types.AudioSigned
    -- ^ You can only choose whether an audio sample is signed when you specify @pcm@ for the value of Audio:Codec.
--
-- Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned).
-- The supported value is @Signed@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AudioCodecOptions' value with any optional fields omitted.
mkAudioCodecOptions
    :: AudioCodecOptions
mkAudioCodecOptions
  = AudioCodecOptions'{bitDepth = Core.Nothing,
                       bitOrder = Core.Nothing, profile = Core.Nothing,
                       signed = Core.Nothing}

-- | You can only choose an audio bit depth when you specify @flac@ or @pcm@ for the value of Audio:Codec.
--
-- The bit depth of a sample is how many bits of information are included in the audio samples. The higher the bit depth, the better the audio, but the larger the file.
-- Valid values are @16@ and @24@ .
-- The most common bit depth is @24@ .
--
-- /Note:/ Consider using 'bitDepth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acoBitDepth :: Lens.Lens' AudioCodecOptions (Core.Maybe Types.AudioBitDepth)
acoBitDepth = Lens.field @"bitDepth"
{-# INLINEABLE acoBitDepth #-}
{-# DEPRECATED bitDepth "Use generic-lens or generic-optics with 'bitDepth' instead"  #-}

-- | You can only choose an audio bit order when you specify @pcm@ for the value of Audio:Codec.
--
-- The order the bits of a PCM sample are stored in.
-- The supported value is @LittleEndian@ .
--
-- /Note:/ Consider using 'bitOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acoBitOrder :: Lens.Lens' AudioCodecOptions (Core.Maybe Types.BitOrder)
acoBitOrder = Lens.field @"bitOrder"
{-# INLINEABLE acoBitOrder #-}
{-# DEPRECATED bitOrder "Use generic-lens or generic-optics with 'bitOrder' instead"  #-}

-- | You can only choose an audio profile when you specify AAC for the value of Audio:Codec.
--
-- Specify the AAC profile for the output file. Elastic Transcoder supports the following profiles:
--
--     * @auto@ : If you specify @auto@ , Elastic Transcoder selects the profile based on the bit rate selected for the output file.
--
--
--     * @AAC-LC@ : The most common AAC profile. Use for bit rates larger than 64 kbps.
--
--
--     * @HE-AAC@ : Not supported on some older players and devices. Use for bit rates between 40 and 80 kbps.
--
--
--     * @HE-AACv2@ : Not supported on some players and devices. Use for bit rates less than 48 kbps.
--
--
-- All outputs in a @Smooth@ playlist must have the same value for @Profile@ .
--
-- /Note:/ Consider using 'profile' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acoProfile :: Lens.Lens' AudioCodecOptions (Core.Maybe Types.Profile)
acoProfile = Lens.field @"profile"
{-# INLINEABLE acoProfile #-}
{-# DEPRECATED profile "Use generic-lens or generic-optics with 'profile' instead"  #-}

-- | You can only choose whether an audio sample is signed when you specify @pcm@ for the value of Audio:Codec.
--
-- Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned).
-- The supported value is @Signed@ .
--
-- /Note:/ Consider using 'signed' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
acoSigned :: Lens.Lens' AudioCodecOptions (Core.Maybe Types.AudioSigned)
acoSigned = Lens.field @"signed"
{-# INLINEABLE acoSigned #-}
{-# DEPRECATED signed "Use generic-lens or generic-optics with 'signed' instead"  #-}

instance Core.FromJSON AudioCodecOptions where
        toJSON AudioCodecOptions{..}
          = Core.object
              (Core.catMaybes
                 [("BitDepth" Core..=) Core.<$> bitDepth,
                  ("BitOrder" Core..=) Core.<$> bitOrder,
                  ("Profile" Core..=) Core.<$> profile,
                  ("Signed" Core..=) Core.<$> signed])

instance Core.FromJSON AudioCodecOptions where
        parseJSON
          = Core.withObject "AudioCodecOptions" Core.$
              \ x ->
                AudioCodecOptions' Core.<$>
                  (x Core..:? "BitDepth") Core.<*> x Core..:? "BitOrder" Core.<*>
                    x Core..:? "Profile"
                    Core.<*> x Core..:? "Signed"
