{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ScheduledInstancesLaunchSpecification
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.ScheduledInstancesLaunchSpecification
  ( ScheduledInstancesLaunchSpecification (..)
  -- * Smart constructor
  , mkScheduledInstancesLaunchSpecification
  -- * Lenses
  , silsImageId
  , silsBlockDeviceMappings
  , silsEbsOptimized
  , silsIamInstanceProfile
  , silsInstanceType
  , silsKernelId
  , silsKeyName
  , silsMonitoring
  , silsNetworkInterfaces
  , silsPlacement
  , silsRamdiskId
  , silsSecurityGroupIds
  , silsSubnetId
  , silsUserData
  ) where

import qualified Network.AWS.EC2.Types.ImageId as Types
import qualified Network.AWS.EC2.Types.KernelId as Types
import qualified Network.AWS.EC2.Types.KeyPairName as Types
import qualified Network.AWS.EC2.Types.RamdiskId as Types
import qualified Network.AWS.EC2.Types.ScheduledInstancesBlockDeviceMapping as Types
import qualified Network.AWS.EC2.Types.ScheduledInstancesIamInstanceProfile as Types
import qualified Network.AWS.EC2.Types.ScheduledInstancesMonitoring as Types
import qualified Network.AWS.EC2.Types.ScheduledInstancesNetworkInterface as Types
import qualified Network.AWS.EC2.Types.ScheduledInstancesPlacement as Types
import qualified Network.AWS.EC2.Types.SecurityGroupId as Types
import qualified Network.AWS.EC2.Types.SubnetId as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes the launch specification for a Scheduled Instance.
--
-- If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either @SubnetId@ or @NetworkInterface@ .
--
-- /See:/ 'mkScheduledInstancesLaunchSpecification' smart constructor.
data ScheduledInstancesLaunchSpecification = ScheduledInstancesLaunchSpecification'
  { imageId :: Types.ImageId
    -- ^ The ID of the Amazon Machine Image (AMI).
  , blockDeviceMappings :: Core.Maybe [Types.ScheduledInstancesBlockDeviceMapping]
    -- ^ The block device mapping entries.
  , ebsOptimized :: Core.Maybe Core.Bool
    -- ^ Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
--
-- Default: @false@ 
  , iamInstanceProfile :: Core.Maybe Types.ScheduledInstancesIamInstanceProfile
    -- ^ The IAM instance profile.
  , instanceType :: Core.Maybe Core.Text
    -- ^ The instance type.
  , kernelId :: Core.Maybe Types.KernelId
    -- ^ The ID of the kernel.
  , keyName :: Core.Maybe Types.KeyPairName
    -- ^ The name of the key pair.
  , monitoring :: Core.Maybe Types.ScheduledInstancesMonitoring
    -- ^ Enable or disable monitoring for the instances.
  , networkInterfaces :: Core.Maybe [Types.ScheduledInstancesNetworkInterface]
    -- ^ The network interfaces.
  , placement :: Core.Maybe Types.ScheduledInstancesPlacement
    -- ^ The placement information.
  , ramdiskId :: Core.Maybe Types.RamdiskId
    -- ^ The ID of the RAM disk.
  , securityGroupIds :: Core.Maybe [Types.SecurityGroupId]
    -- ^ The IDs of the security groups.
  , subnetId :: Core.Maybe Types.SubnetId
    -- ^ The ID of the subnet in which to launch the instances.
  , userData :: Core.Maybe Core.Text
    -- ^ The base64-encoded MIME user data.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ScheduledInstancesLaunchSpecification' value with any optional fields omitted.
mkScheduledInstancesLaunchSpecification
    :: Types.ImageId -- ^ 'imageId'
    -> ScheduledInstancesLaunchSpecification
mkScheduledInstancesLaunchSpecification imageId
  = ScheduledInstancesLaunchSpecification'{imageId,
                                           blockDeviceMappings = Core.Nothing,
                                           ebsOptimized = Core.Nothing,
                                           iamInstanceProfile = Core.Nothing,
                                           instanceType = Core.Nothing, kernelId = Core.Nothing,
                                           keyName = Core.Nothing, monitoring = Core.Nothing,
                                           networkInterfaces = Core.Nothing,
                                           placement = Core.Nothing, ramdiskId = Core.Nothing,
                                           securityGroupIds = Core.Nothing, subnetId = Core.Nothing,
                                           userData = Core.Nothing}

-- | The ID of the Amazon Machine Image (AMI).
--
-- /Note:/ Consider using 'imageId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsImageId :: Lens.Lens' ScheduledInstancesLaunchSpecification Types.ImageId
silsImageId = Lens.field @"imageId"
{-# INLINEABLE silsImageId #-}
{-# DEPRECATED imageId "Use generic-lens or generic-optics with 'imageId' instead"  #-}

-- | The block device mapping entries.
--
-- /Note:/ Consider using 'blockDeviceMappings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsBlockDeviceMappings :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe [Types.ScheduledInstancesBlockDeviceMapping])
silsBlockDeviceMappings = Lens.field @"blockDeviceMappings"
{-# INLINEABLE silsBlockDeviceMappings #-}
{-# DEPRECATED blockDeviceMappings "Use generic-lens or generic-optics with 'blockDeviceMappings' instead"  #-}

-- | Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
--
-- Default: @false@ 
--
-- /Note:/ Consider using 'ebsOptimized' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsEbsOptimized :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Core.Bool)
silsEbsOptimized = Lens.field @"ebsOptimized"
{-# INLINEABLE silsEbsOptimized #-}
{-# DEPRECATED ebsOptimized "Use generic-lens or generic-optics with 'ebsOptimized' instead"  #-}

-- | The IAM instance profile.
--
-- /Note:/ Consider using 'iamInstanceProfile' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsIamInstanceProfile :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.ScheduledInstancesIamInstanceProfile)
silsIamInstanceProfile = Lens.field @"iamInstanceProfile"
{-# INLINEABLE silsIamInstanceProfile #-}
{-# DEPRECATED iamInstanceProfile "Use generic-lens or generic-optics with 'iamInstanceProfile' instead"  #-}

-- | The instance type.
--
-- /Note:/ Consider using 'instanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsInstanceType :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Core.Text)
silsInstanceType = Lens.field @"instanceType"
{-# INLINEABLE silsInstanceType #-}
{-# DEPRECATED instanceType "Use generic-lens or generic-optics with 'instanceType' instead"  #-}

-- | The ID of the kernel.
--
-- /Note:/ Consider using 'kernelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsKernelId :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.KernelId)
silsKernelId = Lens.field @"kernelId"
{-# INLINEABLE silsKernelId #-}
{-# DEPRECATED kernelId "Use generic-lens or generic-optics with 'kernelId' instead"  #-}

-- | The name of the key pair.
--
-- /Note:/ Consider using 'keyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsKeyName :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.KeyPairName)
silsKeyName = Lens.field @"keyName"
{-# INLINEABLE silsKeyName #-}
{-# DEPRECATED keyName "Use generic-lens or generic-optics with 'keyName' instead"  #-}

-- | Enable or disable monitoring for the instances.
--
-- /Note:/ Consider using 'monitoring' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsMonitoring :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.ScheduledInstancesMonitoring)
silsMonitoring = Lens.field @"monitoring"
{-# INLINEABLE silsMonitoring #-}
{-# DEPRECATED monitoring "Use generic-lens or generic-optics with 'monitoring' instead"  #-}

-- | The network interfaces.
--
-- /Note:/ Consider using 'networkInterfaces' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsNetworkInterfaces :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe [Types.ScheduledInstancesNetworkInterface])
silsNetworkInterfaces = Lens.field @"networkInterfaces"
{-# INLINEABLE silsNetworkInterfaces #-}
{-# DEPRECATED networkInterfaces "Use generic-lens or generic-optics with 'networkInterfaces' instead"  #-}

-- | The placement information.
--
-- /Note:/ Consider using 'placement' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsPlacement :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.ScheduledInstancesPlacement)
silsPlacement = Lens.field @"placement"
{-# INLINEABLE silsPlacement #-}
{-# DEPRECATED placement "Use generic-lens or generic-optics with 'placement' instead"  #-}

-- | The ID of the RAM disk.
--
-- /Note:/ Consider using 'ramdiskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsRamdiskId :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.RamdiskId)
silsRamdiskId = Lens.field @"ramdiskId"
{-# INLINEABLE silsRamdiskId #-}
{-# DEPRECATED ramdiskId "Use generic-lens or generic-optics with 'ramdiskId' instead"  #-}

-- | The IDs of the security groups.
--
-- /Note:/ Consider using 'securityGroupIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsSecurityGroupIds :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe [Types.SecurityGroupId])
silsSecurityGroupIds = Lens.field @"securityGroupIds"
{-# INLINEABLE silsSecurityGroupIds #-}
{-# DEPRECATED securityGroupIds "Use generic-lens or generic-optics with 'securityGroupIds' instead"  #-}

-- | The ID of the subnet in which to launch the instances.
--
-- /Note:/ Consider using 'subnetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsSubnetId :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Types.SubnetId)
silsSubnetId = Lens.field @"subnetId"
{-# INLINEABLE silsSubnetId #-}
{-# DEPRECATED subnetId "Use generic-lens or generic-optics with 'subnetId' instead"  #-}

-- | The base64-encoded MIME user data.
--
-- /Note:/ Consider using 'userData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
silsUserData :: Lens.Lens' ScheduledInstancesLaunchSpecification (Core.Maybe Core.Text)
silsUserData = Lens.field @"userData"
{-# INLINEABLE silsUserData #-}
{-# DEPRECATED userData "Use generic-lens or generic-optics with 'userData' instead"  #-}

instance Core.ToQuery ScheduledInstancesLaunchSpecification where
        toQuery ScheduledInstancesLaunchSpecification{..}
          = Core.toQueryPair "ImageId" imageId Core.<>
              Core.maybe Core.mempty (Core.toQueryList "BlockDeviceMapping")
                blockDeviceMappings
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "EbsOptimized")
                ebsOptimized
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "IamInstanceProfile")
                iamInstanceProfile
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "InstanceType")
                instanceType
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "KernelId") kernelId
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "KeyName") keyName
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "Monitoring") monitoring
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "NetworkInterface")
                networkInterfaces
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "Placement") placement
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "RamdiskId") ramdiskId
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "SecurityGroupId")
                securityGroupIds
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SubnetId") subnetId
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "UserData") userData
