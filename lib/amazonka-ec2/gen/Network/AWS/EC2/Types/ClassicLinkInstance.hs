{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClassicLinkInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.ClassicLinkInstance
  ( ClassicLinkInstance (..)
  -- * Smart constructor
  , mkClassicLinkInstance
  -- * Lenses
  , cliGroups
  , cliInstanceId
  , cliTags
  , cliVpcId
  ) where

import qualified Network.AWS.EC2.Types.GroupIdentifier as Types
import qualified Network.AWS.EC2.Types.Tag as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a linked EC2-Classic instance.
--
-- /See:/ 'mkClassicLinkInstance' smart constructor.
data ClassicLinkInstance = ClassicLinkInstance'
  { groups :: Core.Maybe [Types.GroupIdentifier]
    -- ^ A list of security groups.
  , instanceId :: Core.Maybe Core.Text
    -- ^ The ID of the instance.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ Any tags assigned to the instance.
  , vpcId :: Core.Maybe Core.Text
    -- ^ The ID of the VPC.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ClassicLinkInstance' value with any optional fields omitted.
mkClassicLinkInstance
    :: ClassicLinkInstance
mkClassicLinkInstance
  = ClassicLinkInstance'{groups = Core.Nothing,
                         instanceId = Core.Nothing, tags = Core.Nothing,
                         vpcId = Core.Nothing}

-- | A list of security groups.
--
-- /Note:/ Consider using 'groups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cliGroups :: Lens.Lens' ClassicLinkInstance (Core.Maybe [Types.GroupIdentifier])
cliGroups = Lens.field @"groups"
{-# INLINEABLE cliGroups #-}
{-# DEPRECATED groups "Use generic-lens or generic-optics with 'groups' instead"  #-}

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cliInstanceId :: Lens.Lens' ClassicLinkInstance (Core.Maybe Core.Text)
cliInstanceId = Lens.field @"instanceId"
{-# INLINEABLE cliInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

-- | Any tags assigned to the instance.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cliTags :: Lens.Lens' ClassicLinkInstance (Core.Maybe [Types.Tag])
cliTags = Lens.field @"tags"
{-# INLINEABLE cliTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | The ID of the VPC.
--
-- /Note:/ Consider using 'vpcId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cliVpcId :: Lens.Lens' ClassicLinkInstance (Core.Maybe Core.Text)
cliVpcId = Lens.field @"vpcId"
{-# INLINEABLE cliVpcId #-}
{-# DEPRECATED vpcId "Use generic-lens or generic-optics with 'vpcId' instead"  #-}

instance Core.FromXML ClassicLinkInstance where
        parseXML x
          = ClassicLinkInstance' Core.<$>
              (x Core..@? "groupSet" Core..<@> Core.parseXMLList "item") Core.<*>
                x Core..@? "instanceId"
                Core.<*> x Core..@? "tagSet" Core..<@> Core.parseXMLList "item"
                Core.<*> x Core..@? "vpcId"
