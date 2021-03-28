{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.ProfileData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.ProfileData
  ( ProfileData (..)
  -- * Smart constructor
  , mkProfileData
  -- * Lenses
  , pdAddress
  , pdDistanceUnit
  , pdIsDefault
  , pdLocale
  , pdProfileArn
  , pdProfileName
  , pdTemperatureUnit
  , pdTimezone
  , pdWakeWord
  ) where

import qualified Network.AWS.AlexaBusiness.Types.Address as Types
import qualified Network.AWS.AlexaBusiness.Types.Arn as Types
import qualified Network.AWS.AlexaBusiness.Types.DeviceLocale as Types
import qualified Network.AWS.AlexaBusiness.Types.DistanceUnit as Types
import qualified Network.AWS.AlexaBusiness.Types.ProfileName as Types
import qualified Network.AWS.AlexaBusiness.Types.TemperatureUnit as Types
import qualified Network.AWS.AlexaBusiness.Types.Timezone as Types
import qualified Network.AWS.AlexaBusiness.Types.WakeWord as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The data of a room profile.
--
-- /See:/ 'mkProfileData' smart constructor.
data ProfileData = ProfileData'
  { address :: Core.Maybe Types.Address
    -- ^ The address of a room profile.
  , distanceUnit :: Core.Maybe Types.DistanceUnit
    -- ^ The distance unit of a room profile.
  , isDefault :: Core.Maybe Core.Bool
    -- ^ Retrieves if the profile data is default or not.
  , locale :: Core.Maybe Types.DeviceLocale
    -- ^ The locale of a room profile. (This is currently available only to a limited preview audience.)
  , profileArn :: Core.Maybe Types.Arn
    -- ^ The ARN of a room profile.
  , profileName :: Core.Maybe Types.ProfileName
    -- ^ The name of a room profile.
  , temperatureUnit :: Core.Maybe Types.TemperatureUnit
    -- ^ The temperature unit of a room profile.
  , timezone :: Core.Maybe Types.Timezone
    -- ^ The time zone of a room profile.
  , wakeWord :: Core.Maybe Types.WakeWord
    -- ^ The wake word of a room profile.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ProfileData' value with any optional fields omitted.
mkProfileData
    :: ProfileData
mkProfileData
  = ProfileData'{address = Core.Nothing, distanceUnit = Core.Nothing,
                 isDefault = Core.Nothing, locale = Core.Nothing,
                 profileArn = Core.Nothing, profileName = Core.Nothing,
                 temperatureUnit = Core.Nothing, timezone = Core.Nothing,
                 wakeWord = Core.Nothing}

-- | The address of a room profile.
--
-- /Note:/ Consider using 'address' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdAddress :: Lens.Lens' ProfileData (Core.Maybe Types.Address)
pdAddress = Lens.field @"address"
{-# INLINEABLE pdAddress #-}
{-# DEPRECATED address "Use generic-lens or generic-optics with 'address' instead"  #-}

-- | The distance unit of a room profile.
--
-- /Note:/ Consider using 'distanceUnit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdDistanceUnit :: Lens.Lens' ProfileData (Core.Maybe Types.DistanceUnit)
pdDistanceUnit = Lens.field @"distanceUnit"
{-# INLINEABLE pdDistanceUnit #-}
{-# DEPRECATED distanceUnit "Use generic-lens or generic-optics with 'distanceUnit' instead"  #-}

-- | Retrieves if the profile data is default or not.
--
-- /Note:/ Consider using 'isDefault' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdIsDefault :: Lens.Lens' ProfileData (Core.Maybe Core.Bool)
pdIsDefault = Lens.field @"isDefault"
{-# INLINEABLE pdIsDefault #-}
{-# DEPRECATED isDefault "Use generic-lens or generic-optics with 'isDefault' instead"  #-}

-- | The locale of a room profile. (This is currently available only to a limited preview audience.)
--
-- /Note:/ Consider using 'locale' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdLocale :: Lens.Lens' ProfileData (Core.Maybe Types.DeviceLocale)
pdLocale = Lens.field @"locale"
{-# INLINEABLE pdLocale #-}
{-# DEPRECATED locale "Use generic-lens or generic-optics with 'locale' instead"  #-}

-- | The ARN of a room profile.
--
-- /Note:/ Consider using 'profileArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdProfileArn :: Lens.Lens' ProfileData (Core.Maybe Types.Arn)
pdProfileArn = Lens.field @"profileArn"
{-# INLINEABLE pdProfileArn #-}
{-# DEPRECATED profileArn "Use generic-lens or generic-optics with 'profileArn' instead"  #-}

-- | The name of a room profile.
--
-- /Note:/ Consider using 'profileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdProfileName :: Lens.Lens' ProfileData (Core.Maybe Types.ProfileName)
pdProfileName = Lens.field @"profileName"
{-# INLINEABLE pdProfileName #-}
{-# DEPRECATED profileName "Use generic-lens or generic-optics with 'profileName' instead"  #-}

-- | The temperature unit of a room profile.
--
-- /Note:/ Consider using 'temperatureUnit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdTemperatureUnit :: Lens.Lens' ProfileData (Core.Maybe Types.TemperatureUnit)
pdTemperatureUnit = Lens.field @"temperatureUnit"
{-# INLINEABLE pdTemperatureUnit #-}
{-# DEPRECATED temperatureUnit "Use generic-lens or generic-optics with 'temperatureUnit' instead"  #-}

-- | The time zone of a room profile.
--
-- /Note:/ Consider using 'timezone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdTimezone :: Lens.Lens' ProfileData (Core.Maybe Types.Timezone)
pdTimezone = Lens.field @"timezone"
{-# INLINEABLE pdTimezone #-}
{-# DEPRECATED timezone "Use generic-lens or generic-optics with 'timezone' instead"  #-}

-- | The wake word of a room profile.
--
-- /Note:/ Consider using 'wakeWord' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pdWakeWord :: Lens.Lens' ProfileData (Core.Maybe Types.WakeWord)
pdWakeWord = Lens.field @"wakeWord"
{-# INLINEABLE pdWakeWord #-}
{-# DEPRECATED wakeWord "Use generic-lens or generic-optics with 'wakeWord' instead"  #-}

instance Core.FromJSON ProfileData where
        parseJSON
          = Core.withObject "ProfileData" Core.$
              \ x ->
                ProfileData' Core.<$>
                  (x Core..:? "Address") Core.<*> x Core..:? "DistanceUnit" Core.<*>
                    x Core..:? "IsDefault"
                    Core.<*> x Core..:? "Locale"
                    Core.<*> x Core..:? "ProfileArn"
                    Core.<*> x Core..:? "ProfileName"
                    Core.<*> x Core..:? "TemperatureUnit"
                    Core.<*> x Core..:? "Timezone"
                    Core.<*> x Core..:? "WakeWord"
