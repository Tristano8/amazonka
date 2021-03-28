{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.SentimentDetectionJobFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Comprehend.Types.SentimentDetectionJobFilter
  ( SentimentDetectionJobFilter (..)
  -- * Smart constructor
  , mkSentimentDetectionJobFilter
  -- * Lenses
  , sdjfJobName
  , sdjfJobStatus
  , sdjfSubmitTimeAfter
  , sdjfSubmitTimeBefore
  ) where

import qualified Network.AWS.Comprehend.Types.JobName as Types
import qualified Network.AWS.Comprehend.Types.JobStatus as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
-- /See:/ 'mkSentimentDetectionJobFilter' smart constructor.
data SentimentDetectionJobFilter = SentimentDetectionJobFilter'
  { jobName :: Core.Maybe Types.JobName
    -- ^ Filters on the name of the job.
  , jobStatus :: Core.Maybe Types.JobStatus
    -- ^ Filters the list of jobs based on job status. Returns only jobs with the specified status.
  , submitTimeAfter :: Core.Maybe Core.NominalDiffTime
    -- ^ Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
  , submitTimeBefore :: Core.Maybe Core.NominalDiffTime
    -- ^ Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'SentimentDetectionJobFilter' value with any optional fields omitted.
mkSentimentDetectionJobFilter
    :: SentimentDetectionJobFilter
mkSentimentDetectionJobFilter
  = SentimentDetectionJobFilter'{jobName = Core.Nothing,
                                 jobStatus = Core.Nothing, submitTimeAfter = Core.Nothing,
                                 submitTimeBefore = Core.Nothing}

-- | Filters on the name of the job.
--
-- /Note:/ Consider using 'jobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdjfJobName :: Lens.Lens' SentimentDetectionJobFilter (Core.Maybe Types.JobName)
sdjfJobName = Lens.field @"jobName"
{-# INLINEABLE sdjfJobName #-}
{-# DEPRECATED jobName "Use generic-lens or generic-optics with 'jobName' instead"  #-}

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
--
-- /Note:/ Consider using 'jobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdjfJobStatus :: Lens.Lens' SentimentDetectionJobFilter (Core.Maybe Types.JobStatus)
sdjfJobStatus = Lens.field @"jobStatus"
{-# INLINEABLE sdjfJobStatus #-}
{-# DEPRECATED jobStatus "Use generic-lens or generic-optics with 'jobStatus' instead"  #-}

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- /Note:/ Consider using 'submitTimeAfter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdjfSubmitTimeAfter :: Lens.Lens' SentimentDetectionJobFilter (Core.Maybe Core.NominalDiffTime)
sdjfSubmitTimeAfter = Lens.field @"submitTimeAfter"
{-# INLINEABLE sdjfSubmitTimeAfter #-}
{-# DEPRECATED submitTimeAfter "Use generic-lens or generic-optics with 'submitTimeAfter' instead"  #-}

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- /Note:/ Consider using 'submitTimeBefore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdjfSubmitTimeBefore :: Lens.Lens' SentimentDetectionJobFilter (Core.Maybe Core.NominalDiffTime)
sdjfSubmitTimeBefore = Lens.field @"submitTimeBefore"
{-# INLINEABLE sdjfSubmitTimeBefore #-}
{-# DEPRECATED submitTimeBefore "Use generic-lens or generic-optics with 'submitTimeBefore' instead"  #-}

instance Core.FromJSON SentimentDetectionJobFilter where
        toJSON SentimentDetectionJobFilter{..}
          = Core.object
              (Core.catMaybes
                 [("JobName" Core..=) Core.<$> jobName,
                  ("JobStatus" Core..=) Core.<$> jobStatus,
                  ("SubmitTimeAfter" Core..=) Core.<$> submitTimeAfter,
                  ("SubmitTimeBefore" Core..=) Core.<$> submitTimeBefore])
