{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.NetworkProfileData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.NetworkProfileData
  ( NetworkProfileData (..)
  -- * Smart constructor
  , mkNetworkProfileData
  -- * Lenses
  , npdCertificateAuthorityArn
  , npdDescription
  , npdEapMethod
  , npdNetworkProfileArn
  , npdNetworkProfileName
  , npdSecurityType
  , npdSsid
  ) where

import qualified Network.AWS.AlexaBusiness.Types.Arn as Types
import qualified Network.AWS.AlexaBusiness.Types.NetworkEapMethod as Types
import qualified Network.AWS.AlexaBusiness.Types.NetworkProfileDescription as Types
import qualified Network.AWS.AlexaBusiness.Types.NetworkProfileName as Types
import qualified Network.AWS.AlexaBusiness.Types.NetworkSecurityType as Types
import qualified Network.AWS.AlexaBusiness.Types.Ssid as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The data associated with a network profile.
--
-- /See:/ 'mkNetworkProfileData' smart constructor.
data NetworkProfileData = NetworkProfileData'
  { certificateAuthorityArn :: Core.Maybe Types.Arn
    -- ^ The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices.
  , description :: Core.Maybe Types.NetworkProfileDescription
    -- ^ Detailed information about a device's network profile.
  , eapMethod :: Core.Maybe Types.NetworkEapMethod
    -- ^ The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.
  , networkProfileArn :: Core.Maybe Types.Arn
    -- ^ The ARN of the network profile associated with a device.
  , networkProfileName :: Core.Maybe Types.NetworkProfileName
    -- ^ The name of the network profile associated with a device.
  , securityType :: Core.Maybe Types.NetworkSecurityType
    -- ^ The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.
  , ssid :: Core.Maybe Types.Ssid
    -- ^ The SSID of the Wi-Fi network.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'NetworkProfileData' value with any optional fields omitted.
mkNetworkProfileData
    :: NetworkProfileData
mkNetworkProfileData
  = NetworkProfileData'{certificateAuthorityArn = Core.Nothing,
                        description = Core.Nothing, eapMethod = Core.Nothing,
                        networkProfileArn = Core.Nothing,
                        networkProfileName = Core.Nothing, securityType = Core.Nothing,
                        ssid = Core.Nothing}

-- | The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices.
--
-- /Note:/ Consider using 'certificateAuthorityArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdCertificateAuthorityArn :: Lens.Lens' NetworkProfileData (Core.Maybe Types.Arn)
npdCertificateAuthorityArn = Lens.field @"certificateAuthorityArn"
{-# INLINEABLE npdCertificateAuthorityArn #-}
{-# DEPRECATED certificateAuthorityArn "Use generic-lens or generic-optics with 'certificateAuthorityArn' instead"  #-}

-- | Detailed information about a device's network profile.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdDescription :: Lens.Lens' NetworkProfileData (Core.Maybe Types.NetworkProfileDescription)
npdDescription = Lens.field @"description"
{-# INLINEABLE npdDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.
--
-- /Note:/ Consider using 'eapMethod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdEapMethod :: Lens.Lens' NetworkProfileData (Core.Maybe Types.NetworkEapMethod)
npdEapMethod = Lens.field @"eapMethod"
{-# INLINEABLE npdEapMethod #-}
{-# DEPRECATED eapMethod "Use generic-lens or generic-optics with 'eapMethod' instead"  #-}

-- | The ARN of the network profile associated with a device.
--
-- /Note:/ Consider using 'networkProfileArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdNetworkProfileArn :: Lens.Lens' NetworkProfileData (Core.Maybe Types.Arn)
npdNetworkProfileArn = Lens.field @"networkProfileArn"
{-# INLINEABLE npdNetworkProfileArn #-}
{-# DEPRECATED networkProfileArn "Use generic-lens or generic-optics with 'networkProfileArn' instead"  #-}

-- | The name of the network profile associated with a device.
--
-- /Note:/ Consider using 'networkProfileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdNetworkProfileName :: Lens.Lens' NetworkProfileData (Core.Maybe Types.NetworkProfileName)
npdNetworkProfileName = Lens.field @"networkProfileName"
{-# INLINEABLE npdNetworkProfileName #-}
{-# DEPRECATED networkProfileName "Use generic-lens or generic-optics with 'networkProfileName' instead"  #-}

-- | The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.
--
-- /Note:/ Consider using 'securityType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdSecurityType :: Lens.Lens' NetworkProfileData (Core.Maybe Types.NetworkSecurityType)
npdSecurityType = Lens.field @"securityType"
{-# INLINEABLE npdSecurityType #-}
{-# DEPRECATED securityType "Use generic-lens or generic-optics with 'securityType' instead"  #-}

-- | The SSID of the Wi-Fi network.
--
-- /Note:/ Consider using 'ssid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
npdSsid :: Lens.Lens' NetworkProfileData (Core.Maybe Types.Ssid)
npdSsid = Lens.field @"ssid"
{-# INLINEABLE npdSsid #-}
{-# DEPRECATED ssid "Use generic-lens or generic-optics with 'ssid' instead"  #-}

instance Core.FromJSON NetworkProfileData where
        parseJSON
          = Core.withObject "NetworkProfileData" Core.$
              \ x ->
                NetworkProfileData' Core.<$>
                  (x Core..:? "CertificateAuthorityArn") Core.<*>
                    x Core..:? "Description"
                    Core.<*> x Core..:? "EapMethod"
                    Core.<*> x Core..:? "NetworkProfileArn"
                    Core.<*> x Core..:? "NetworkProfileName"
                    Core.<*> x Core..:? "SecurityType"
                    Core.<*> x Core..:? "Ssid"
