{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IAM.Types.PolicyGroup
  ( PolicyGroup (..)
  -- * Smart constructor
  , mkPolicyGroup
  -- * Lenses
  , pgGroupId
  , pgGroupName
  ) where

import qualified Network.AWS.IAM.Types.GroupNameType as Types
import qualified Network.AWS.IAM.Types.IdType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains information about a group that a managed policy is attached to.
--
-- This data type is used as a response element in the 'ListEntitiesForPolicy' operation. 
-- For more information about managed policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed Policies and Inline Policies> in the /IAM User Guide/ . 
--
-- /See:/ 'mkPolicyGroup' smart constructor.
data PolicyGroup = PolicyGroup'
  { groupId :: Core.Maybe Types.IdType
    -- ^ The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers> in the /IAM User Guide/ .
  , groupName :: Core.Maybe Types.GroupNameType
    -- ^ The name (friendly name, not ARN) identifying the group.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PolicyGroup' value with any optional fields omitted.
mkPolicyGroup
    :: PolicyGroup
mkPolicyGroup
  = PolicyGroup'{groupId = Core.Nothing, groupName = Core.Nothing}

-- | The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'groupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pgGroupId :: Lens.Lens' PolicyGroup (Core.Maybe Types.IdType)
pgGroupId = Lens.field @"groupId"
{-# INLINEABLE pgGroupId #-}
{-# DEPRECATED groupId "Use generic-lens or generic-optics with 'groupId' instead"  #-}

-- | The name (friendly name, not ARN) identifying the group.
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pgGroupName :: Lens.Lens' PolicyGroup (Core.Maybe Types.GroupNameType)
pgGroupName = Lens.field @"groupName"
{-# INLINEABLE pgGroupName #-}
{-# DEPRECATED groupName "Use generic-lens or generic-optics with 'groupName' instead"  #-}

instance Core.FromXML PolicyGroup where
        parseXML x
          = PolicyGroup' Core.<$>
              (x Core..@? "GroupId") Core.<*> x Core..@? "GroupName"
