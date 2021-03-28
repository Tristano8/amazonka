{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.ByteMatchSetSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WAFRegional.Types.ByteMatchSetSummary
  ( ByteMatchSetSummary (..)
  -- * Smart constructor
  , mkByteMatchSetSummary
  -- * Lenses
  , bmssByteMatchSetId
  , bmssName
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WAFRegional.Types.ResourceId as Types
import qualified Network.AWS.WAFRegional.Types.ResourceName as Types

-- | Returned by 'ListByteMatchSets' . Each @ByteMatchSetSummary@ object includes the @Name@ and @ByteMatchSetId@ for one 'ByteMatchSet' .
--
-- /See:/ 'mkByteMatchSetSummary' smart constructor.
data ByteMatchSetSummary = ByteMatchSetSummary'
  { byteMatchSetId :: Types.ResourceId
    -- ^ The @ByteMatchSetId@ for a @ByteMatchSet@ . You use @ByteMatchSetId@ to get information about a @ByteMatchSet@ , update a @ByteMatchSet@ , remove a @ByteMatchSet@ from a @Rule@ , and delete a @ByteMatchSet@ from AWS WAF.
--
-- @ByteMatchSetId@ is returned by 'CreateByteMatchSet' and by 'ListByteMatchSets' .
  , name :: Types.ResourceName
    -- ^ A friendly name or description of the 'ByteMatchSet' . You can't change @Name@ after you create a @ByteMatchSet@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ByteMatchSetSummary' value with any optional fields omitted.
mkByteMatchSetSummary
    :: Types.ResourceId -- ^ 'byteMatchSetId'
    -> Types.ResourceName -- ^ 'name'
    -> ByteMatchSetSummary
mkByteMatchSetSummary byteMatchSetId name
  = ByteMatchSetSummary'{byteMatchSetId, name}

-- | The @ByteMatchSetId@ for a @ByteMatchSet@ . You use @ByteMatchSetId@ to get information about a @ByteMatchSet@ , update a @ByteMatchSet@ , remove a @ByteMatchSet@ from a @Rule@ , and delete a @ByteMatchSet@ from AWS WAF.
--
-- @ByteMatchSetId@ is returned by 'CreateByteMatchSet' and by 'ListByteMatchSets' .
--
-- /Note:/ Consider using 'byteMatchSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bmssByteMatchSetId :: Lens.Lens' ByteMatchSetSummary Types.ResourceId
bmssByteMatchSetId = Lens.field @"byteMatchSetId"
{-# INLINEABLE bmssByteMatchSetId #-}
{-# DEPRECATED byteMatchSetId "Use generic-lens or generic-optics with 'byteMatchSetId' instead"  #-}

-- | A friendly name or description of the 'ByteMatchSet' . You can't change @Name@ after you create a @ByteMatchSet@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bmssName :: Lens.Lens' ByteMatchSetSummary Types.ResourceName
bmssName = Lens.field @"name"
{-# INLINEABLE bmssName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.FromJSON ByteMatchSetSummary where
        parseJSON
          = Core.withObject "ByteMatchSetSummary" Core.$
              \ x ->
                ByteMatchSetSummary' Core.<$>
                  (x Core..: "ByteMatchSetId") Core.<*> x Core..: "Name"
