{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RegionInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Lightsail.Types.RegionInfo
  ( RegionInfo (..)
  -- * Smart constructor
  , mkRegionInfo
  -- * Lenses
  , riAvailabilityZones
  , riContinentCode
  , riDescription
  , riDisplayName
  , riName
  , riRelationalDatabaseAvailabilityZones
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types.AvailabilityZone as Types
import qualified Network.AWS.Lightsail.Types.RegionName as Types
import qualified Network.AWS.Prelude as Core

-- | Describes the AWS Region.
--
-- /See:/ 'mkRegionInfo' smart constructor.
data RegionInfo = RegionInfo'
  { availabilityZones :: Core.Maybe [Types.AvailabilityZone]
    -- ^ The Availability Zones. Follows the format @us-east-2a@ (case-sensitive).
  , continentCode :: Core.Maybe Core.Text
    -- ^ The continent code (e.g., @NA@ , meaning North America).
  , description :: Core.Maybe Core.Text
    -- ^ The description of the AWS Region (e.g., @This region is recommended to serve users in the eastern United States and eastern Canada@ ).
  , displayName :: Core.Maybe Core.Text
    -- ^ The display name (e.g., @Ohio@ ).
  , name :: Core.Maybe Types.RegionName
    -- ^ The region name (e.g., @us-east-2@ ).
  , relationalDatabaseAvailabilityZones :: Core.Maybe [Types.AvailabilityZone]
    -- ^ The Availability Zones for databases. Follows the format @us-east-2a@ (case-sensitive).
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'RegionInfo' value with any optional fields omitted.
mkRegionInfo
    :: RegionInfo
mkRegionInfo
  = RegionInfo'{availabilityZones = Core.Nothing,
                continentCode = Core.Nothing, description = Core.Nothing,
                displayName = Core.Nothing, name = Core.Nothing,
                relationalDatabaseAvailabilityZones = Core.Nothing}

-- | The Availability Zones. Follows the format @us-east-2a@ (case-sensitive).
--
-- /Note:/ Consider using 'availabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riAvailabilityZones :: Lens.Lens' RegionInfo (Core.Maybe [Types.AvailabilityZone])
riAvailabilityZones = Lens.field @"availabilityZones"
{-# INLINEABLE riAvailabilityZones #-}
{-# DEPRECATED availabilityZones "Use generic-lens or generic-optics with 'availabilityZones' instead"  #-}

-- | The continent code (e.g., @NA@ , meaning North America).
--
-- /Note:/ Consider using 'continentCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riContinentCode :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
riContinentCode = Lens.field @"continentCode"
{-# INLINEABLE riContinentCode #-}
{-# DEPRECATED continentCode "Use generic-lens or generic-optics with 'continentCode' instead"  #-}

-- | The description of the AWS Region (e.g., @This region is recommended to serve users in the eastern United States and eastern Canada@ ).
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riDescription :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
riDescription = Lens.field @"description"
{-# INLINEABLE riDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The display name (e.g., @Ohio@ ).
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riDisplayName :: Lens.Lens' RegionInfo (Core.Maybe Core.Text)
riDisplayName = Lens.field @"displayName"
{-# INLINEABLE riDisplayName #-}
{-# DEPRECATED displayName "Use generic-lens or generic-optics with 'displayName' instead"  #-}

-- | The region name (e.g., @us-east-2@ ).
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riName :: Lens.Lens' RegionInfo (Core.Maybe Types.RegionName)
riName = Lens.field @"name"
{-# INLINEABLE riName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The Availability Zones for databases. Follows the format @us-east-2a@ (case-sensitive).
--
-- /Note:/ Consider using 'relationalDatabaseAvailabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
riRelationalDatabaseAvailabilityZones :: Lens.Lens' RegionInfo (Core.Maybe [Types.AvailabilityZone])
riRelationalDatabaseAvailabilityZones = Lens.field @"relationalDatabaseAvailabilityZones"
{-# INLINEABLE riRelationalDatabaseAvailabilityZones #-}
{-# DEPRECATED relationalDatabaseAvailabilityZones "Use generic-lens or generic-optics with 'relationalDatabaseAvailabilityZones' instead"  #-}

instance Core.FromJSON RegionInfo where
        parseJSON
          = Core.withObject "RegionInfo" Core.$
              \ x ->
                RegionInfo' Core.<$>
                  (x Core..:? "availabilityZones") Core.<*>
                    x Core..:? "continentCode"
                    Core.<*> x Core..:? "description"
                    Core.<*> x Core..:? "displayName"
                    Core.<*> x Core..:? "name"
                    Core.<*> x Core..:? "relationalDatabaseAvailabilityZones"
