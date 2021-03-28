{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.LdapServerMetadataOutput
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MQ.Types.LdapServerMetadataOutput
  ( LdapServerMetadataOutput (..)
  -- * Smart constructor
  , mkLdapServerMetadataOutput
  -- * Lenses
  , lsmoHosts
  , lsmoRoleBase
  , lsmoRoleName
  , lsmoRoleSearchMatching
  , lsmoRoleSearchSubtree
  , lsmoServiceAccountUsername
  , lsmoUserBase
  , lsmoUserRoleName
  , lsmoUserSearchMatching
  , lsmoUserSearchSubtree
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The metadata of the LDAP server used to authenticate and authorize connections to the broker.
--
-- /See:/ 'mkLdapServerMetadataOutput' smart constructor.
data LdapServerMetadataOutput = LdapServerMetadataOutput'
  { hosts :: Core.Maybe [Core.Text]
    -- ^ Fully qualified domain name of the LDAP server. Optional failover server.
  , roleBase :: Core.Maybe Core.Text
    -- ^ Fully qualified name of the directory to search for a user’s groups.
  , roleName :: Core.Maybe Core.Text
    -- ^ Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  , roleSearchMatching :: Core.Maybe Core.Text
    -- ^ The search criteria for groups.
  , roleSearchSubtree :: Core.Maybe Core.Bool
    -- ^ The directory search scope for the role. If set to true, scope is to search the entire sub-tree.
  , serviceAccountUsername :: Core.Maybe Core.Text
    -- ^ Service account username.
  , userBase :: Core.Maybe Core.Text
    -- ^ Fully qualified name of the directory where you want to search for users.
  , userRoleName :: Core.Maybe Core.Text
    -- ^ Specifies the name of the LDAP attribute for the user group membership.
  , userSearchMatching :: Core.Maybe Core.Text
    -- ^ The search criteria for users.
  , userSearchSubtree :: Core.Maybe Core.Bool
    -- ^ The directory search scope for the user. If set to true, scope is to search the entire sub-tree.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'LdapServerMetadataOutput' value with any optional fields omitted.
mkLdapServerMetadataOutput
    :: LdapServerMetadataOutput
mkLdapServerMetadataOutput
  = LdapServerMetadataOutput'{hosts = Core.Nothing,
                              roleBase = Core.Nothing, roleName = Core.Nothing,
                              roleSearchMatching = Core.Nothing,
                              roleSearchSubtree = Core.Nothing,
                              serviceAccountUsername = Core.Nothing, userBase = Core.Nothing,
                              userRoleName = Core.Nothing, userSearchMatching = Core.Nothing,
                              userSearchSubtree = Core.Nothing}

-- | Fully qualified domain name of the LDAP server. Optional failover server.
--
-- /Note:/ Consider using 'hosts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoHosts :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe [Core.Text])
lsmoHosts = Lens.field @"hosts"
{-# INLINEABLE lsmoHosts #-}
{-# DEPRECATED hosts "Use generic-lens or generic-optics with 'hosts' instead"  #-}

-- | Fully qualified name of the directory to search for a user’s groups.
--
-- /Note:/ Consider using 'roleBase' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoRoleBase :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoRoleBase = Lens.field @"roleBase"
{-# INLINEABLE lsmoRoleBase #-}
{-# DEPRECATED roleBase "Use generic-lens or generic-optics with 'roleBase' instead"  #-}

-- | Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
--
-- /Note:/ Consider using 'roleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoRoleName :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoRoleName = Lens.field @"roleName"
{-# INLINEABLE lsmoRoleName #-}
{-# DEPRECATED roleName "Use generic-lens or generic-optics with 'roleName' instead"  #-}

-- | The search criteria for groups.
--
-- /Note:/ Consider using 'roleSearchMatching' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoRoleSearchMatching :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoRoleSearchMatching = Lens.field @"roleSearchMatching"
{-# INLINEABLE lsmoRoleSearchMatching #-}
{-# DEPRECATED roleSearchMatching "Use generic-lens or generic-optics with 'roleSearchMatching' instead"  #-}

-- | The directory search scope for the role. If set to true, scope is to search the entire sub-tree.
--
-- /Note:/ Consider using 'roleSearchSubtree' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoRoleSearchSubtree :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Bool)
lsmoRoleSearchSubtree = Lens.field @"roleSearchSubtree"
{-# INLINEABLE lsmoRoleSearchSubtree #-}
{-# DEPRECATED roleSearchSubtree "Use generic-lens or generic-optics with 'roleSearchSubtree' instead"  #-}

-- | Service account username.
--
-- /Note:/ Consider using 'serviceAccountUsername' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoServiceAccountUsername :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoServiceAccountUsername = Lens.field @"serviceAccountUsername"
{-# INLINEABLE lsmoServiceAccountUsername #-}
{-# DEPRECATED serviceAccountUsername "Use generic-lens or generic-optics with 'serviceAccountUsername' instead"  #-}

-- | Fully qualified name of the directory where you want to search for users.
--
-- /Note:/ Consider using 'userBase' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoUserBase :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoUserBase = Lens.field @"userBase"
{-# INLINEABLE lsmoUserBase #-}
{-# DEPRECATED userBase "Use generic-lens or generic-optics with 'userBase' instead"  #-}

-- | Specifies the name of the LDAP attribute for the user group membership.
--
-- /Note:/ Consider using 'userRoleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoUserRoleName :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoUserRoleName = Lens.field @"userRoleName"
{-# INLINEABLE lsmoUserRoleName #-}
{-# DEPRECATED userRoleName "Use generic-lens or generic-optics with 'userRoleName' instead"  #-}

-- | The search criteria for users.
--
-- /Note:/ Consider using 'userSearchMatching' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoUserSearchMatching :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Text)
lsmoUserSearchMatching = Lens.field @"userSearchMatching"
{-# INLINEABLE lsmoUserSearchMatching #-}
{-# DEPRECATED userSearchMatching "Use generic-lens or generic-optics with 'userSearchMatching' instead"  #-}

-- | The directory search scope for the user. If set to true, scope is to search the entire sub-tree.
--
-- /Note:/ Consider using 'userSearchSubtree' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsmoUserSearchSubtree :: Lens.Lens' LdapServerMetadataOutput (Core.Maybe Core.Bool)
lsmoUserSearchSubtree = Lens.field @"userSearchSubtree"
{-# INLINEABLE lsmoUserSearchSubtree #-}
{-# DEPRECATED userSearchSubtree "Use generic-lens or generic-optics with 'userSearchSubtree' instead"  #-}

instance Core.FromJSON LdapServerMetadataOutput where
        parseJSON
          = Core.withObject "LdapServerMetadataOutput" Core.$
              \ x ->
                LdapServerMetadataOutput' Core.<$>
                  (x Core..:? "hosts") Core.<*> x Core..:? "roleBase" Core.<*>
                    x Core..:? "roleName"
                    Core.<*> x Core..:? "roleSearchMatching"
                    Core.<*> x Core..:? "roleSearchSubtree"
                    Core.<*> x Core..:? "serviceAccountUsername"
                    Core.<*> x Core..:? "userBase"
                    Core.<*> x Core..:? "userRoleName"
                    Core.<*> x Core..:? "userSearchMatching"
                    Core.<*> x Core..:? "userSearchSubtree"
