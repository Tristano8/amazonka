{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.GeoMatchSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WAFRegional.Types.GeoMatchSet
  ( GeoMatchSet (..)
  -- * Smart constructor
  , mkGeoMatchSet
  -- * Lenses
  , gmsGeoMatchSetId
  , gmsGeoMatchConstraints
  , gmsName
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WAFRegional.Types.GeoMatchConstraint as Types
import qualified Network.AWS.WAFRegional.Types.ResourceId as Types
import qualified Network.AWS.WAFRegional.Types.ResourceName as Types

-- | Contains one or more countries that AWS WAF will search for.
--
-- /See:/ 'mkGeoMatchSet' smart constructor.
data GeoMatchSet = GeoMatchSet'
  { geoMatchSetId :: Types.ResourceId
    -- ^ The @GeoMatchSetId@ for an @GeoMatchSet@ . You use @GeoMatchSetId@ to get information about a @GeoMatchSet@ (see 'GeoMatchSet' ), update a @GeoMatchSet@ (see 'UpdateGeoMatchSet' ), insert a @GeoMatchSet@ into a @Rule@ or delete one from a @Rule@ (see 'UpdateRule' ), and delete a @GeoMatchSet@ from AWS WAF (see 'DeleteGeoMatchSet' ).
--
-- @GeoMatchSetId@ is returned by 'CreateGeoMatchSet' and by 'ListGeoMatchSets' .
  , geoMatchConstraints :: [Types.GeoMatchConstraint]
    -- ^ An array of 'GeoMatchConstraint' objects, which contain the country that you want AWS WAF to search for.
  , name :: Core.Maybe Types.ResourceName
    -- ^ A friendly name or description of the 'GeoMatchSet' . You can't change the name of an @GeoMatchSet@ after you create it.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GeoMatchSet' value with any optional fields omitted.
mkGeoMatchSet
    :: Types.ResourceId -- ^ 'geoMatchSetId'
    -> GeoMatchSet
mkGeoMatchSet geoMatchSetId
  = GeoMatchSet'{geoMatchSetId, geoMatchConstraints = Core.mempty,
                 name = Core.Nothing}

-- | The @GeoMatchSetId@ for an @GeoMatchSet@ . You use @GeoMatchSetId@ to get information about a @GeoMatchSet@ (see 'GeoMatchSet' ), update a @GeoMatchSet@ (see 'UpdateGeoMatchSet' ), insert a @GeoMatchSet@ into a @Rule@ or delete one from a @Rule@ (see 'UpdateRule' ), and delete a @GeoMatchSet@ from AWS WAF (see 'DeleteGeoMatchSet' ).
--
-- @GeoMatchSetId@ is returned by 'CreateGeoMatchSet' and by 'ListGeoMatchSets' .
--
-- /Note:/ Consider using 'geoMatchSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmsGeoMatchSetId :: Lens.Lens' GeoMatchSet Types.ResourceId
gmsGeoMatchSetId = Lens.field @"geoMatchSetId"
{-# INLINEABLE gmsGeoMatchSetId #-}
{-# DEPRECATED geoMatchSetId "Use generic-lens or generic-optics with 'geoMatchSetId' instead"  #-}

-- | An array of 'GeoMatchConstraint' objects, which contain the country that you want AWS WAF to search for.
--
-- /Note:/ Consider using 'geoMatchConstraints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmsGeoMatchConstraints :: Lens.Lens' GeoMatchSet [Types.GeoMatchConstraint]
gmsGeoMatchConstraints = Lens.field @"geoMatchConstraints"
{-# INLINEABLE gmsGeoMatchConstraints #-}
{-# DEPRECATED geoMatchConstraints "Use generic-lens or generic-optics with 'geoMatchConstraints' instead"  #-}

-- | A friendly name or description of the 'GeoMatchSet' . You can't change the name of an @GeoMatchSet@ after you create it.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gmsName :: Lens.Lens' GeoMatchSet (Core.Maybe Types.ResourceName)
gmsName = Lens.field @"name"
{-# INLINEABLE gmsName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.FromJSON GeoMatchSet where
        parseJSON
          = Core.withObject "GeoMatchSet" Core.$
              \ x ->
                GeoMatchSet' Core.<$>
                  (x Core..: "GeoMatchSetId") Core.<*>
                    x Core..:? "GeoMatchConstraints" Core..!= Core.mempty
                    Core.<*> x Core..:? "Name"
