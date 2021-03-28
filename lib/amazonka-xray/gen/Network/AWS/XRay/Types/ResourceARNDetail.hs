{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ResourceARNDetail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.XRay.Types.ResourceARNDetail
  ( ResourceARNDetail (..)
  -- * Smart constructor
  , mkResourceARNDetail
  -- * Lenses
  , rarndARN
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A list of resources ARNs corresponding to the segments in a trace.
--
-- /See:/ 'mkResourceARNDetail' smart constructor.
newtype ResourceARNDetail = ResourceARNDetail'
  { arn :: Core.Maybe Core.Text
    -- ^ The ARN of a corresponding resource.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ResourceARNDetail' value with any optional fields omitted.
mkResourceARNDetail
    :: ResourceARNDetail
mkResourceARNDetail = ResourceARNDetail'{arn = Core.Nothing}

-- | The ARN of a corresponding resource.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rarndARN :: Lens.Lens' ResourceARNDetail (Core.Maybe Core.Text)
rarndARN = Lens.field @"arn"
{-# INLINEABLE rarndARN #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

instance Core.FromJSON ResourceARNDetail where
        parseJSON
          = Core.withObject "ResourceARNDetail" Core.$
              \ x -> ResourceARNDetail' Core.<$> (x Core..:? "ARN")
