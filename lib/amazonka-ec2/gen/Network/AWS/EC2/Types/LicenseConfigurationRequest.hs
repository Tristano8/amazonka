{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LicenseConfigurationRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.LicenseConfigurationRequest
  ( LicenseConfigurationRequest (..)
  -- * Smart constructor
  , mkLicenseConfigurationRequest
  -- * Lenses
  , lcrLicenseConfigurationArn
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a license configuration.
--
-- /See:/ 'mkLicenseConfigurationRequest' smart constructor.
newtype LicenseConfigurationRequest = LicenseConfigurationRequest'
  { licenseConfigurationArn :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the license configuration.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'LicenseConfigurationRequest' value with any optional fields omitted.
mkLicenseConfigurationRequest
    :: LicenseConfigurationRequest
mkLicenseConfigurationRequest
  = LicenseConfigurationRequest'{licenseConfigurationArn =
                                   Core.Nothing}

-- | The Amazon Resource Name (ARN) of the license configuration.
--
-- /Note:/ Consider using 'licenseConfigurationArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcrLicenseConfigurationArn :: Lens.Lens' LicenseConfigurationRequest (Core.Maybe Core.Text)
lcrLicenseConfigurationArn = Lens.field @"licenseConfigurationArn"
{-# INLINEABLE lcrLicenseConfigurationArn #-}
{-# DEPRECATED licenseConfigurationArn "Use generic-lens or generic-optics with 'licenseConfigurationArn' instead"  #-}

instance Core.ToQuery LicenseConfigurationRequest where
        toQuery LicenseConfigurationRequest{..}
          = Core.maybe Core.mempty
              (Core.toQueryPair "LicenseConfigurationArn")
              licenseConfigurationArn
