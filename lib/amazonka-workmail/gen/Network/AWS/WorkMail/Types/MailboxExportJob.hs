{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.MailboxExportJob
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WorkMail.Types.MailboxExportJob
  ( MailboxExportJob (..)
  -- * Smart constructor
  , mkMailboxExportJob
  -- * Lenses
  , mejDescription
  , mejEndTime
  , mejEntityId
  , mejEstimatedProgress
  , mejJobId
  , mejS3BucketName
  , mejS3Path
  , mejStartTime
  , mejState
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WorkMail.Types.Description as Types
import qualified Network.AWS.WorkMail.Types.MailboxExportJobId as Types
import qualified Network.AWS.WorkMail.Types.MailboxExportJobState as Types
import qualified Network.AWS.WorkMail.Types.S3BucketName as Types
import qualified Network.AWS.WorkMail.Types.S3ObjectKey as Types
import qualified Network.AWS.WorkMail.Types.WorkMailIdentifier as Types

-- | The details of a mailbox export job, including the user or resource ID associated with the mailbox and the S3 bucket that the mailbox contents are exported to.
--
-- /See:/ 'mkMailboxExportJob' smart constructor.
data MailboxExportJob = MailboxExportJob'
  { description :: Core.Maybe Types.Description
    -- ^ The mailbox export job description.
  , endTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The mailbox export job end timestamp.
  , entityId :: Core.Maybe Types.WorkMailIdentifier
    -- ^ The identifier of the user or resource associated with the mailbox.
  , estimatedProgress :: Core.Maybe Core.Natural
    -- ^ The estimated progress of the mailbox export job, in percentage points.
  , jobId :: Core.Maybe Types.MailboxExportJobId
    -- ^ The identifier of the mailbox export job.
  , s3BucketName :: Core.Maybe Types.S3BucketName
    -- ^ The name of the S3 bucket.
  , s3Path :: Core.Maybe Types.S3ObjectKey
    -- ^ The path to the S3 bucket and file that the mailbox export job exports to.
  , startTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The mailbox export job start timestamp.
  , state :: Core.Maybe Types.MailboxExportJobState
    -- ^ The state of the mailbox export job.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'MailboxExportJob' value with any optional fields omitted.
mkMailboxExportJob
    :: MailboxExportJob
mkMailboxExportJob
  = MailboxExportJob'{description = Core.Nothing,
                      endTime = Core.Nothing, entityId = Core.Nothing,
                      estimatedProgress = Core.Nothing, jobId = Core.Nothing,
                      s3BucketName = Core.Nothing, s3Path = Core.Nothing,
                      startTime = Core.Nothing, state = Core.Nothing}

-- | The mailbox export job description.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejDescription :: Lens.Lens' MailboxExportJob (Core.Maybe Types.Description)
mejDescription = Lens.field @"description"
{-# INLINEABLE mejDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The mailbox export job end timestamp.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejEndTime :: Lens.Lens' MailboxExportJob (Core.Maybe Core.NominalDiffTime)
mejEndTime = Lens.field @"endTime"
{-# INLINEABLE mejEndTime #-}
{-# DEPRECATED endTime "Use generic-lens or generic-optics with 'endTime' instead"  #-}

-- | The identifier of the user or resource associated with the mailbox.
--
-- /Note:/ Consider using 'entityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejEntityId :: Lens.Lens' MailboxExportJob (Core.Maybe Types.WorkMailIdentifier)
mejEntityId = Lens.field @"entityId"
{-# INLINEABLE mejEntityId #-}
{-# DEPRECATED entityId "Use generic-lens or generic-optics with 'entityId' instead"  #-}

-- | The estimated progress of the mailbox export job, in percentage points.
--
-- /Note:/ Consider using 'estimatedProgress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejEstimatedProgress :: Lens.Lens' MailboxExportJob (Core.Maybe Core.Natural)
mejEstimatedProgress = Lens.field @"estimatedProgress"
{-# INLINEABLE mejEstimatedProgress #-}
{-# DEPRECATED estimatedProgress "Use generic-lens or generic-optics with 'estimatedProgress' instead"  #-}

-- | The identifier of the mailbox export job.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejJobId :: Lens.Lens' MailboxExportJob (Core.Maybe Types.MailboxExportJobId)
mejJobId = Lens.field @"jobId"
{-# INLINEABLE mejJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | The name of the S3 bucket.
--
-- /Note:/ Consider using 's3BucketName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejS3BucketName :: Lens.Lens' MailboxExportJob (Core.Maybe Types.S3BucketName)
mejS3BucketName = Lens.field @"s3BucketName"
{-# INLINEABLE mejS3BucketName #-}
{-# DEPRECATED s3BucketName "Use generic-lens or generic-optics with 's3BucketName' instead"  #-}

-- | The path to the S3 bucket and file that the mailbox export job exports to.
--
-- /Note:/ Consider using 's3Path' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejS3Path :: Lens.Lens' MailboxExportJob (Core.Maybe Types.S3ObjectKey)
mejS3Path = Lens.field @"s3Path"
{-# INLINEABLE mejS3Path #-}
{-# DEPRECATED s3Path "Use generic-lens or generic-optics with 's3Path' instead"  #-}

-- | The mailbox export job start timestamp.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejStartTime :: Lens.Lens' MailboxExportJob (Core.Maybe Core.NominalDiffTime)
mejStartTime = Lens.field @"startTime"
{-# INLINEABLE mejStartTime #-}
{-# DEPRECATED startTime "Use generic-lens or generic-optics with 'startTime' instead"  #-}

-- | The state of the mailbox export job.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mejState :: Lens.Lens' MailboxExportJob (Core.Maybe Types.MailboxExportJobState)
mejState = Lens.field @"state"
{-# INLINEABLE mejState #-}
{-# DEPRECATED state "Use generic-lens or generic-optics with 'state' instead"  #-}

instance Core.FromJSON MailboxExportJob where
        parseJSON
          = Core.withObject "MailboxExportJob" Core.$
              \ x ->
                MailboxExportJob' Core.<$>
                  (x Core..:? "Description") Core.<*> x Core..:? "EndTime" Core.<*>
                    x Core..:? "EntityId"
                    Core.<*> x Core..:? "EstimatedProgress"
                    Core.<*> x Core..:? "JobId"
                    Core.<*> x Core..:? "S3BucketName"
                    Core.<*> x Core..:? "S3Path"
                    Core.<*> x Core..:? "StartTime"
                    Core.<*> x Core..:? "State"
