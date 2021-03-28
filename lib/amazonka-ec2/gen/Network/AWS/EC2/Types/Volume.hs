{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Volume
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.Volume
  ( Volume (..)
  -- * Smart constructor
  , mkVolume
  -- * Lenses
  , vAttachments
  , vAvailabilityZone
  , vCreateTime
  , vEncrypted
  , vFastRestored
  , vIops
  , vKmsKeyId
  , vMultiAttachEnabled
  , vOutpostArn
  , vSize
  , vSnapshotId
  , vState
  , vTags
  , vVolumeId
  , vVolumeType
  ) where

import qualified Network.AWS.EC2.Types.Tag as Types
import qualified Network.AWS.EC2.Types.VolumeAttachment as Types
import qualified Network.AWS.EC2.Types.VolumeState as Types
import qualified Network.AWS.EC2.Types.VolumeType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a volume.
--
-- /See:/ 'mkVolume' smart constructor.
data Volume = Volume'
  { attachments :: Core.Maybe [Types.VolumeAttachment]
    -- ^ Information about the volume attachments.
  , availabilityZone :: Core.Text
    -- ^ The Availability Zone for the volume.
  , createTime :: Core.UTCTime
    -- ^ The time stamp when volume creation was initiated.
  , encrypted :: Core.Bool
    -- ^ Indicates whether the volume is encrypted.
  , fastRestored :: Core.Maybe Core.Bool
    -- ^ Indicates whether the volume was created using fast snapshot restore.
  , iops :: Core.Maybe Core.Int
    -- ^ The number of I/O operations per second (IOPS) that the volume supports. For Provisioned IOPS SSD volumes, this represents the number of IOPS that are provisioned for the volume. For General Purpose SSD volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- Constraints: Range is 100-16,000 IOPS for @gp2@ volumes and 100 to 64,000 IOPS for @io1@ and @io2@ volumes, in most Regions. The maximum IOPS for @io1@ and @io2@ of 64,000 is guaranteed only on <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> . Other instance families guarantee performance up to 32,000 IOPS.
-- Condition: This parameter is required for requests to create @io1@ and @io2@ volumes; it is not used in requests to create @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
  , kmsKeyId :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the volume.
  , multiAttachEnabled :: Core.Maybe Core.Bool
    -- ^ Indicates whether Amazon EBS Multi-Attach is enabled.
  , outpostArn :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the Outpost.
  , size :: Core.Int
    -- ^ The size of the volume, in GiBs.
  , snapshotId :: Core.Text
    -- ^ The snapshot from which the volume was created, if applicable.
  , state :: Types.VolumeState
    -- ^ The volume state.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ Any tags assigned to the volume.
  , volumeId :: Core.Text
    -- ^ The ID of the volume.
  , volumeType :: Types.VolumeType
    -- ^ The volume type. This can be @gp2@ for General Purpose SSD, @io1@ or @io2@ for Provisioned IOPS SSD, @st1@ for Throughput Optimized HDD, @sc1@ for Cold HDD, or @standard@ for Magnetic volumes.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'Volume' value with any optional fields omitted.
mkVolume
    :: Core.Text -- ^ 'availabilityZone'
    -> Core.UTCTime -- ^ 'createTime'
    -> Core.Bool -- ^ 'encrypted'
    -> Core.Int -- ^ 'size'
    -> Core.Text -- ^ 'snapshotId'
    -> Types.VolumeState -- ^ 'state'
    -> Core.Text -- ^ 'volumeId'
    -> Types.VolumeType -- ^ 'volumeType'
    -> Volume
mkVolume availabilityZone createTime encrypted size snapshotId
  state volumeId volumeType
  = Volume'{attachments = Core.Nothing, availabilityZone, createTime,
            encrypted, fastRestored = Core.Nothing, iops = Core.Nothing,
            kmsKeyId = Core.Nothing, multiAttachEnabled = Core.Nothing,
            outpostArn = Core.Nothing, size, snapshotId, state,
            tags = Core.Nothing, volumeId, volumeType}

-- | Information about the volume attachments.
--
-- /Note:/ Consider using 'attachments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vAttachments :: Lens.Lens' Volume (Core.Maybe [Types.VolumeAttachment])
vAttachments = Lens.field @"attachments"
{-# INLINEABLE vAttachments #-}
{-# DEPRECATED attachments "Use generic-lens or generic-optics with 'attachments' instead"  #-}

-- | The Availability Zone for the volume.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vAvailabilityZone :: Lens.Lens' Volume Core.Text
vAvailabilityZone = Lens.field @"availabilityZone"
{-# INLINEABLE vAvailabilityZone #-}
{-# DEPRECATED availabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead"  #-}

-- | The time stamp when volume creation was initiated.
--
-- /Note:/ Consider using 'createTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vCreateTime :: Lens.Lens' Volume Core.UTCTime
vCreateTime = Lens.field @"createTime"
{-# INLINEABLE vCreateTime #-}
{-# DEPRECATED createTime "Use generic-lens or generic-optics with 'createTime' instead"  #-}

-- | Indicates whether the volume is encrypted.
--
-- /Note:/ Consider using 'encrypted' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vEncrypted :: Lens.Lens' Volume Core.Bool
vEncrypted = Lens.field @"encrypted"
{-# INLINEABLE vEncrypted #-}
{-# DEPRECATED encrypted "Use generic-lens or generic-optics with 'encrypted' instead"  #-}

-- | Indicates whether the volume was created using fast snapshot restore.
--
-- /Note:/ Consider using 'fastRestored' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vFastRestored :: Lens.Lens' Volume (Core.Maybe Core.Bool)
vFastRestored = Lens.field @"fastRestored"
{-# INLINEABLE vFastRestored #-}
{-# DEPRECATED fastRestored "Use generic-lens or generic-optics with 'fastRestored' instead"  #-}

-- | The number of I/O operations per second (IOPS) that the volume supports. For Provisioned IOPS SSD volumes, this represents the number of IOPS that are provisioned for the volume. For General Purpose SSD volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html Amazon EBS volume types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- Constraints: Range is 100-16,000 IOPS for @gp2@ volumes and 100 to 64,000 IOPS for @io1@ and @io2@ volumes, in most Regions. The maximum IOPS for @io1@ and @io2@ of 64,000 is guaranteed only on <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances Nitro-based instances> . Other instance families guarantee performance up to 32,000 IOPS.
-- Condition: This parameter is required for requests to create @io1@ and @io2@ volumes; it is not used in requests to create @gp2@ , @st1@ , @sc1@ , or @standard@ volumes.
--
-- /Note:/ Consider using 'iops' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vIops :: Lens.Lens' Volume (Core.Maybe Core.Int)
vIops = Lens.field @"iops"
{-# INLINEABLE vIops #-}
{-# DEPRECATED iops "Use generic-lens or generic-optics with 'iops' instead"  #-}

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the volume encryption key for the volume.
--
-- /Note:/ Consider using 'kmsKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vKmsKeyId :: Lens.Lens' Volume (Core.Maybe Core.Text)
vKmsKeyId = Lens.field @"kmsKeyId"
{-# INLINEABLE vKmsKeyId #-}
{-# DEPRECATED kmsKeyId "Use generic-lens or generic-optics with 'kmsKeyId' instead"  #-}

-- | Indicates whether Amazon EBS Multi-Attach is enabled.
--
-- /Note:/ Consider using 'multiAttachEnabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vMultiAttachEnabled :: Lens.Lens' Volume (Core.Maybe Core.Bool)
vMultiAttachEnabled = Lens.field @"multiAttachEnabled"
{-# INLINEABLE vMultiAttachEnabled #-}
{-# DEPRECATED multiAttachEnabled "Use generic-lens or generic-optics with 'multiAttachEnabled' instead"  #-}

-- | The Amazon Resource Name (ARN) of the Outpost.
--
-- /Note:/ Consider using 'outpostArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vOutpostArn :: Lens.Lens' Volume (Core.Maybe Core.Text)
vOutpostArn = Lens.field @"outpostArn"
{-# INLINEABLE vOutpostArn #-}
{-# DEPRECATED outpostArn "Use generic-lens or generic-optics with 'outpostArn' instead"  #-}

-- | The size of the volume, in GiBs.
--
-- /Note:/ Consider using 'size' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vSize :: Lens.Lens' Volume Core.Int
vSize = Lens.field @"size"
{-# INLINEABLE vSize #-}
{-# DEPRECATED size "Use generic-lens or generic-optics with 'size' instead"  #-}

-- | The snapshot from which the volume was created, if applicable.
--
-- /Note:/ Consider using 'snapshotId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vSnapshotId :: Lens.Lens' Volume Core.Text
vSnapshotId = Lens.field @"snapshotId"
{-# INLINEABLE vSnapshotId #-}
{-# DEPRECATED snapshotId "Use generic-lens or generic-optics with 'snapshotId' instead"  #-}

-- | The volume state.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vState :: Lens.Lens' Volume Types.VolumeState
vState = Lens.field @"state"
{-# INLINEABLE vState #-}
{-# DEPRECATED state "Use generic-lens or generic-optics with 'state' instead"  #-}

-- | Any tags assigned to the volume.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vTags :: Lens.Lens' Volume (Core.Maybe [Types.Tag])
vTags = Lens.field @"tags"
{-# INLINEABLE vTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

-- | The ID of the volume.
--
-- /Note:/ Consider using 'volumeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vVolumeId :: Lens.Lens' Volume Core.Text
vVolumeId = Lens.field @"volumeId"
{-# INLINEABLE vVolumeId #-}
{-# DEPRECATED volumeId "Use generic-lens or generic-optics with 'volumeId' instead"  #-}

-- | The volume type. This can be @gp2@ for General Purpose SSD, @io1@ or @io2@ for Provisioned IOPS SSD, @st1@ for Throughput Optimized HDD, @sc1@ for Cold HDD, or @standard@ for Magnetic volumes.
--
-- /Note:/ Consider using 'volumeType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vVolumeType :: Lens.Lens' Volume Types.VolumeType
vVolumeType = Lens.field @"volumeType"
{-# INLINEABLE vVolumeType #-}
{-# DEPRECATED volumeType "Use generic-lens or generic-optics with 'volumeType' instead"  #-}

instance Core.FromXML Volume where
        parseXML x
          = Volume' Core.<$>
              (x Core..@? "attachmentSet" Core..<@> Core.parseXMLList "item")
                Core.<*> x Core..@ "availabilityZone"
                Core.<*> x Core..@ "createTime"
                Core.<*> x Core..@ "encrypted"
                Core.<*> x Core..@? "fastRestored"
                Core.<*> x Core..@? "iops"
                Core.<*> x Core..@? "kmsKeyId"
                Core.<*> x Core..@? "multiAttachEnabled"
                Core.<*> x Core..@? "outpostArn"
                Core.<*> x Core..@ "size"
                Core.<*> x Core..@ "snapshotId"
                Core.<*> x Core..@ "status"
                Core.<*> x Core..@? "tagSet" Core..<@> Core.parseXMLList "item"
                Core.<*> x Core..@ "volumeId"
                Core.<*> x Core..@ "volumeType"
