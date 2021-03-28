{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.DirectoryConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AppStream.Types.DirectoryConfig
  ( DirectoryConfig (..)
  -- * Smart constructor
  , mkDirectoryConfig
  -- * Lenses
  , dcDirectoryName
  , dcCreatedTime
  , dcOrganizationalUnitDistinguishedNames
  , dcServiceAccountCredentials
  ) where

import qualified Network.AWS.AppStream.Types.DirectoryName as Types
import qualified Network.AWS.AppStream.Types.OrganizationalUnitDistinguishedName as Types
import qualified Network.AWS.AppStream.Types.ServiceAccountCredentials as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
--
-- /See:/ 'mkDirectoryConfig' smart constructor.
data DirectoryConfig = DirectoryConfig'
  { directoryName :: Types.DirectoryName
    -- ^ The fully qualified name of the directory (for example, corp.example.com).
  , createdTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time the directory configuration was created.
  , organizationalUnitDistinguishedNames :: Core.Maybe [Types.OrganizationalUnitDistinguishedName]
    -- ^ The distinguished names of the organizational units for computer accounts.
  , serviceAccountCredentials :: Core.Maybe Types.ServiceAccountCredentials
    -- ^ The credentials for the service account used by the fleet or image builder to connect to the directory.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DirectoryConfig' value with any optional fields omitted.
mkDirectoryConfig
    :: Types.DirectoryName -- ^ 'directoryName'
    -> DirectoryConfig
mkDirectoryConfig directoryName
  = DirectoryConfig'{directoryName, createdTime = Core.Nothing,
                     organizationalUnitDistinguishedNames = Core.Nothing,
                     serviceAccountCredentials = Core.Nothing}

-- | The fully qualified name of the directory (for example, corp.example.com).
--
-- /Note:/ Consider using 'directoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcDirectoryName :: Lens.Lens' DirectoryConfig Types.DirectoryName
dcDirectoryName = Lens.field @"directoryName"
{-# INLINEABLE dcDirectoryName #-}
{-# DEPRECATED directoryName "Use generic-lens or generic-optics with 'directoryName' instead"  #-}

-- | The time the directory configuration was created.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcCreatedTime :: Lens.Lens' DirectoryConfig (Core.Maybe Core.NominalDiffTime)
dcCreatedTime = Lens.field @"createdTime"
{-# INLINEABLE dcCreatedTime #-}
{-# DEPRECATED createdTime "Use generic-lens or generic-optics with 'createdTime' instead"  #-}

-- | The distinguished names of the organizational units for computer accounts.
--
-- /Note:/ Consider using 'organizationalUnitDistinguishedNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcOrganizationalUnitDistinguishedNames :: Lens.Lens' DirectoryConfig (Core.Maybe [Types.OrganizationalUnitDistinguishedName])
dcOrganizationalUnitDistinguishedNames = Lens.field @"organizationalUnitDistinguishedNames"
{-# INLINEABLE dcOrganizationalUnitDistinguishedNames #-}
{-# DEPRECATED organizationalUnitDistinguishedNames "Use generic-lens or generic-optics with 'organizationalUnitDistinguishedNames' instead"  #-}

-- | The credentials for the service account used by the fleet or image builder to connect to the directory.
--
-- /Note:/ Consider using 'serviceAccountCredentials' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcServiceAccountCredentials :: Lens.Lens' DirectoryConfig (Core.Maybe Types.ServiceAccountCredentials)
dcServiceAccountCredentials = Lens.field @"serviceAccountCredentials"
{-# INLINEABLE dcServiceAccountCredentials #-}
{-# DEPRECATED serviceAccountCredentials "Use generic-lens or generic-optics with 'serviceAccountCredentials' instead"  #-}

instance Core.FromJSON DirectoryConfig where
        parseJSON
          = Core.withObject "DirectoryConfig" Core.$
              \ x ->
                DirectoryConfig' Core.<$>
                  (x Core..: "DirectoryName") Core.<*> x Core..:? "CreatedTime"
                    Core.<*> x Core..:? "OrganizationalUnitDistinguishedNames"
                    Core.<*> x Core..:? "ServiceAccountCredentials"
