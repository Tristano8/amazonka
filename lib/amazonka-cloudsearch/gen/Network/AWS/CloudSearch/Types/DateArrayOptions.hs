{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DateArrayOptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudSearch.Types.DateArrayOptions
  ( DateArrayOptions (..)
  -- * Smart constructor
  , mkDateArrayOptions
  -- * Lenses
  , dDefaultValue
  , dFacetEnabled
  , dReturnEnabled
  , dSearchEnabled
  , dSourceFields
  ) where

import qualified Network.AWS.CloudSearch.Types.FieldNameCommaList as Types
import qualified Network.AWS.CloudSearch.Types.FieldValue as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Options for a field that contains an array of dates. Present if @IndexFieldType@ specifies the field is of type @date-array@ . All options are enabled by default.
--
-- /See:/ 'mkDateArrayOptions' smart constructor.
data DateArrayOptions = DateArrayOptions'
  { defaultValue :: Core.Maybe Types.FieldValue
    -- ^ A value to use for the field if the field isn't specified for a document.
  , facetEnabled :: Core.Maybe Core.Bool
    -- ^ Whether facet information can be returned for the field.
  , returnEnabled :: Core.Maybe Core.Bool
    -- ^ Whether the contents of the field can be returned in the search results.
  , searchEnabled :: Core.Maybe Core.Bool
    -- ^ Whether the contents of the field are searchable.
  , sourceFields :: Core.Maybe Types.FieldNameCommaList
    -- ^ A list of source fields to map to the field. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DateArrayOptions' value with any optional fields omitted.
mkDateArrayOptions
    :: DateArrayOptions
mkDateArrayOptions
  = DateArrayOptions'{defaultValue = Core.Nothing,
                      facetEnabled = Core.Nothing, returnEnabled = Core.Nothing,
                      searchEnabled = Core.Nothing, sourceFields = Core.Nothing}

-- | A value to use for the field if the field isn't specified for a document.
--
-- /Note:/ Consider using 'defaultValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDefaultValue :: Lens.Lens' DateArrayOptions (Core.Maybe Types.FieldValue)
dDefaultValue = Lens.field @"defaultValue"
{-# INLINEABLE dDefaultValue #-}
{-# DEPRECATED defaultValue "Use generic-lens or generic-optics with 'defaultValue' instead"  #-}

-- | Whether facet information can be returned for the field.
--
-- /Note:/ Consider using 'facetEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dFacetEnabled :: Lens.Lens' DateArrayOptions (Core.Maybe Core.Bool)
dFacetEnabled = Lens.field @"facetEnabled"
{-# INLINEABLE dFacetEnabled #-}
{-# DEPRECATED facetEnabled "Use generic-lens or generic-optics with 'facetEnabled' instead"  #-}

-- | Whether the contents of the field can be returned in the search results.
--
-- /Note:/ Consider using 'returnEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dReturnEnabled :: Lens.Lens' DateArrayOptions (Core.Maybe Core.Bool)
dReturnEnabled = Lens.field @"returnEnabled"
{-# INLINEABLE dReturnEnabled #-}
{-# DEPRECATED returnEnabled "Use generic-lens or generic-optics with 'returnEnabled' instead"  #-}

-- | Whether the contents of the field are searchable.
--
-- /Note:/ Consider using 'searchEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dSearchEnabled :: Lens.Lens' DateArrayOptions (Core.Maybe Core.Bool)
dSearchEnabled = Lens.field @"searchEnabled"
{-# INLINEABLE dSearchEnabled #-}
{-# DEPRECATED searchEnabled "Use generic-lens or generic-optics with 'searchEnabled' instead"  #-}

-- | A list of source fields to map to the field. 
--
-- /Note:/ Consider using 'sourceFields' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dSourceFields :: Lens.Lens' DateArrayOptions (Core.Maybe Types.FieldNameCommaList)
dSourceFields = Lens.field @"sourceFields"
{-# INLINEABLE dSourceFields #-}
{-# DEPRECATED sourceFields "Use generic-lens or generic-optics with 'sourceFields' instead"  #-}

instance Core.ToQuery DateArrayOptions where
        toQuery DateArrayOptions{..}
          = Core.maybe Core.mempty (Core.toQueryPair "DefaultValue")
              defaultValue
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "FacetEnabled")
                facetEnabled
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "ReturnEnabled")
                returnEnabled
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SearchEnabled")
                searchEnabled
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SourceFields")
                sourceFields

instance Core.FromXML DateArrayOptions where
        parseXML x
          = DateArrayOptions' Core.<$>
              (x Core..@? "DefaultValue") Core.<*> x Core..@? "FacetEnabled"
                Core.<*> x Core..@? "ReturnEnabled"
                Core.<*> x Core..@? "SearchEnabled"
                Core.<*> x Core..@? "SourceFields"
