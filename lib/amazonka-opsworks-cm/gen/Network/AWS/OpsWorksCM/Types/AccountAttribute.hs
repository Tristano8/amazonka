{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.AccountAttribute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorksCM.Types.AccountAttribute
  ( AccountAttribute (..)
  -- * Smart constructor
  , mkAccountAttribute
  -- * Lenses
  , aaMaximum
  , aaName
  , aaUsed
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Stores account attributes. 
--
-- /See:/ 'mkAccountAttribute' smart constructor.
data AccountAttribute = AccountAttribute'
  { maximum :: Core.Maybe Core.Int
    -- ^ The maximum allowed value. 
  , name :: Core.Maybe Core.Text
    -- ^ The attribute name. The following are supported attribute names. 
--
--
--     * /ServerLimit:/ The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. 
--
--
--     * /ManualBackupLimit:/ The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. 
--
--
  , used :: Core.Maybe Core.Int
    -- ^ The current usage, such as the current number of servers that are associated with the account. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AccountAttribute' value with any optional fields omitted.
mkAccountAttribute
    :: AccountAttribute
mkAccountAttribute
  = AccountAttribute'{maximum = Core.Nothing, name = Core.Nothing,
                      used = Core.Nothing}

-- | The maximum allowed value. 
--
-- /Note:/ Consider using 'maximum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aaMaximum :: Lens.Lens' AccountAttribute (Core.Maybe Core.Int)
aaMaximum = Lens.field @"maximum"
{-# INLINEABLE aaMaximum #-}
{-# DEPRECATED maximum "Use generic-lens or generic-optics with 'maximum' instead"  #-}

-- | The attribute name. The following are supported attribute names. 
--
--
--     * /ServerLimit:/ The number of current servers/maximum number of servers allowed. By default, you can have a maximum of 10 servers. 
--
--
--     * /ManualBackupLimit:/ The number of current manual backups/maximum number of backups allowed. By default, you can have a maximum of 50 manual backups saved. 
--
--
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aaName :: Lens.Lens' AccountAttribute (Core.Maybe Core.Text)
aaName = Lens.field @"name"
{-# INLINEABLE aaName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The current usage, such as the current number of servers that are associated with the account. 
--
-- /Note:/ Consider using 'used' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aaUsed :: Lens.Lens' AccountAttribute (Core.Maybe Core.Int)
aaUsed = Lens.field @"used"
{-# INLINEABLE aaUsed #-}
{-# DEPRECATED used "Use generic-lens or generic-optics with 'used' instead"  #-}

instance Core.FromJSON AccountAttribute where
        parseJSON
          = Core.withObject "AccountAttribute" Core.$
              \ x ->
                AccountAttribute' Core.<$>
                  (x Core..:? "Maximum") Core.<*> x Core..:? "Name" Core.<*>
                    x Core..:? "Used"
