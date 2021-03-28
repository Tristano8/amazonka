{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheSecurityGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElastiCache.Types.CacheSecurityGroup
  ( CacheSecurityGroup (..)
  -- * Smart constructor
  , mkCacheSecurityGroup
  -- * Lenses
  , cARN
  , cCacheSecurityGroupName
  , cDescription
  , cEC2SecurityGroups
  , cOwnerId
  ) where

import qualified Network.AWS.ElastiCache.Types.EC2SecurityGroup as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents the output of one of the following operations:
--
--
--     * @AuthorizeCacheSecurityGroupIngress@ 
--
--
--     * @CreateCacheSecurityGroup@ 
--
--
--     * @RevokeCacheSecurityGroupIngress@ 
--
--
--
-- /See:/ 'mkCacheSecurityGroup' smart constructor.
data CacheSecurityGroup = CacheSecurityGroup'
  { arn :: Core.Maybe Core.Text
    -- ^ The ARN of the cache security group,
  , cacheSecurityGroupName :: Core.Maybe Core.Text
    -- ^ The name of the cache security group.
  , description :: Core.Maybe Core.Text
    -- ^ The description of the cache security group.
  , eC2SecurityGroups :: Core.Maybe [Types.EC2SecurityGroup]
    -- ^ A list of Amazon EC2 security groups that are associated with this cache security group.
  , ownerId :: Core.Maybe Core.Text
    -- ^ The AWS account ID of the cache security group owner.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CacheSecurityGroup' value with any optional fields omitted.
mkCacheSecurityGroup
    :: CacheSecurityGroup
mkCacheSecurityGroup
  = CacheSecurityGroup'{arn = Core.Nothing,
                        cacheSecurityGroupName = Core.Nothing, description = Core.Nothing,
                        eC2SecurityGroups = Core.Nothing, ownerId = Core.Nothing}

-- | The ARN of the cache security group,
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cARN :: Lens.Lens' CacheSecurityGroup (Core.Maybe Core.Text)
cARN = Lens.field @"arn"
{-# INLINEABLE cARN #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The name of the cache security group.
--
-- /Note:/ Consider using 'cacheSecurityGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cCacheSecurityGroupName :: Lens.Lens' CacheSecurityGroup (Core.Maybe Core.Text)
cCacheSecurityGroupName = Lens.field @"cacheSecurityGroupName"
{-# INLINEABLE cCacheSecurityGroupName #-}
{-# DEPRECATED cacheSecurityGroupName "Use generic-lens or generic-optics with 'cacheSecurityGroupName' instead"  #-}

-- | The description of the cache security group.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cDescription :: Lens.Lens' CacheSecurityGroup (Core.Maybe Core.Text)
cDescription = Lens.field @"description"
{-# INLINEABLE cDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | A list of Amazon EC2 security groups that are associated with this cache security group.
--
-- /Note:/ Consider using 'eC2SecurityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cEC2SecurityGroups :: Lens.Lens' CacheSecurityGroup (Core.Maybe [Types.EC2SecurityGroup])
cEC2SecurityGroups = Lens.field @"eC2SecurityGroups"
{-# INLINEABLE cEC2SecurityGroups #-}
{-# DEPRECATED eC2SecurityGroups "Use generic-lens or generic-optics with 'eC2SecurityGroups' instead"  #-}

-- | The AWS account ID of the cache security group owner.
--
-- /Note:/ Consider using 'ownerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cOwnerId :: Lens.Lens' CacheSecurityGroup (Core.Maybe Core.Text)
cOwnerId = Lens.field @"ownerId"
{-# INLINEABLE cOwnerId #-}
{-# DEPRECATED ownerId "Use generic-lens or generic-optics with 'ownerId' instead"  #-}

instance Core.FromXML CacheSecurityGroup where
        parseXML x
          = CacheSecurityGroup' Core.<$>
              (x Core..@? "ARN") Core.<*> x Core..@? "CacheSecurityGroupName"
                Core.<*> x Core..@? "Description"
                Core.<*>
                x Core..@? "EC2SecurityGroups" Core..<@>
                  Core.parseXMLList "EC2SecurityGroup"
                Core.<*> x Core..@? "OwnerId"
