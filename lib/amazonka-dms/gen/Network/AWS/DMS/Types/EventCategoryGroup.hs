{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.EventCategoryGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.EventCategoryGroup
  ( EventCategoryGroup (..)
  -- * Smart constructor
  , mkEventCategoryGroup
  -- * Lenses
  , ecgEventCategories
  , ecgSourceType
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Lists categories of events subscribed to, and generated by, the applicable AWS DMS resource type. This data type appears in response to the <https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html @DescribeEventCategories@ > action.
--
-- /See:/ 'mkEventCategoryGroup' smart constructor.
data EventCategoryGroup = EventCategoryGroup'
  { eventCategories :: Core.Maybe [Core.Text]
    -- ^ A list of event categories from a source type that you've chosen.
  , sourceType :: Core.Maybe Core.Text
    -- ^ The type of AWS DMS resource that generates events. 
--
-- Valid values: replication-instance | replication-server | security-group | replication-task
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EventCategoryGroup' value with any optional fields omitted.
mkEventCategoryGroup
    :: EventCategoryGroup
mkEventCategoryGroup
  = EventCategoryGroup'{eventCategories = Core.Nothing,
                        sourceType = Core.Nothing}

-- | A list of event categories from a source type that you've chosen.
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecgEventCategories :: Lens.Lens' EventCategoryGroup (Core.Maybe [Core.Text])
ecgEventCategories = Lens.field @"eventCategories"
{-# INLINEABLE ecgEventCategories #-}
{-# DEPRECATED eventCategories "Use generic-lens or generic-optics with 'eventCategories' instead"  #-}

-- | The type of AWS DMS resource that generates events. 
--
-- Valid values: replication-instance | replication-server | security-group | replication-task
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ecgSourceType :: Lens.Lens' EventCategoryGroup (Core.Maybe Core.Text)
ecgSourceType = Lens.field @"sourceType"
{-# INLINEABLE ecgSourceType #-}
{-# DEPRECATED sourceType "Use generic-lens or generic-optics with 'sourceType' instead"  #-}

instance Core.FromJSON EventCategoryGroup where
        parseJSON
          = Core.withObject "EventCategoryGroup" Core.$
              \ x ->
                EventCategoryGroup' Core.<$>
                  (x Core..:? "EventCategories") Core.<*> x Core..:? "SourceType"
