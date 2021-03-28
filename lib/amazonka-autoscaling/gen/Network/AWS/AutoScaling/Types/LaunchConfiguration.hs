{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.LaunchConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AutoScaling.Types.LaunchConfiguration
  ( LaunchConfiguration (..)
  -- * Smart constructor
  , mkLaunchConfiguration
  -- * Lenses
  , lcLaunchConfigurationName
  , lcImageId
  , lcInstanceType
  , lcCreatedTime
  , lcAssociatePublicIpAddress
  , lcBlockDeviceMappings
  , lcClassicLinkVPCId
  , lcClassicLinkVPCSecurityGroups
  , lcEbsOptimized
  , lcIamInstanceProfile
  , lcInstanceMonitoring
  , lcKernelId
  , lcKeyName
  , lcLaunchConfigurationARN
  , lcMetadataOptions
  , lcPlacementTenancy
  , lcRamdiskId
  , lcSecurityGroups
  , lcSpotPrice
  , lcUserData
  ) where

import qualified Network.AWS.AutoScaling.Types.BlockDeviceMapping as Types
import qualified Network.AWS.AutoScaling.Types.ClassicLinkVPCId as Types
import qualified Network.AWS.AutoScaling.Types.IamInstanceProfile as Types
import qualified Network.AWS.AutoScaling.Types.ImageId as Types
import qualified Network.AWS.AutoScaling.Types.InstanceMetadataOptions as Types
import qualified Network.AWS.AutoScaling.Types.InstanceMonitoring as Types
import qualified Network.AWS.AutoScaling.Types.InstanceType as Types
import qualified Network.AWS.AutoScaling.Types.KernelId as Types
import qualified Network.AWS.AutoScaling.Types.KeyName as Types
import qualified Network.AWS.AutoScaling.Types.LaunchConfigurationARN as Types
import qualified Network.AWS.AutoScaling.Types.LaunchConfigurationName as Types
import qualified Network.AWS.AutoScaling.Types.PlacementTenancy as Types
import qualified Network.AWS.AutoScaling.Types.RamdiskId as Types
import qualified Network.AWS.AutoScaling.Types.SpotPrice as Types
import qualified Network.AWS.AutoScaling.Types.UserData as Types
import qualified Network.AWS.AutoScaling.Types.XmlString as Types
import qualified Network.AWS.AutoScaling.Types.XmlStringMaxLen255 as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a launch configuration.
--
-- /See:/ 'mkLaunchConfiguration' smart constructor.
data LaunchConfiguration = LaunchConfiguration'
  { launchConfigurationName :: Types.LaunchConfigurationName
    -- ^ The name of the launch configuration.
  , imageId :: Types.ImageId
    -- ^ The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html Finding an AMI> in the /Amazon EC2 User Guide for Linux Instances/ .
  , instanceType :: Types.InstanceType
    -- ^ The instance type for the instances.
--
-- For information about available instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes Available Instance Types> in the /Amazon EC2 User Guide for Linux Instances./ 
  , createdTime :: Core.UTCTime
    -- ^ The creation date and time for the launch configuration.
  , associatePublicIpAddress :: Core.Maybe Core.Bool
    -- ^ For Auto Scaling groups that are running in a VPC, specifies whether to assign a public IP address to the group's instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html Launching Auto Scaling instances in a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
  , blockDeviceMappings :: Core.Maybe [Types.BlockDeviceMapping]
    -- ^ A block device mapping, which specifies the block devices for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html Block Device Mapping> in the /Amazon EC2 User Guide for Linux Instances/ .
  , classicLinkVPCId :: Core.Maybe Types.ClassicLinkVPCId
    -- ^ The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
  , classicLinkVPCSecurityGroups :: Core.Maybe [Types.XmlStringMaxLen255]
    -- ^ The IDs of one or more security groups for the VPC specified in @ClassicLinkVPCId@ .
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
  , ebsOptimized :: Core.Maybe Core.Bool
    -- ^ Specifies whether the launch configuration is optimized for EBS I/O (@true@ ) or not (@false@ ). For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-Optimized Instances> in the /Amazon EC2 User Guide for Linux Instances/ .
  , iamInstanceProfile :: Core.Maybe Types.IamInstanceProfile
    -- ^ The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance. The instance profile contains the IAM role. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html IAM role for applications that run on Amazon EC2 instances> in the /Amazon EC2 Auto Scaling User Guide/ .
  , instanceMonitoring :: Core.Maybe Types.InstanceMonitoring
    -- ^ Controls whether instances in this group are launched with detailed (@true@ ) or basic (@false@ ) monitoring.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html Configure Monitoring for Auto Scaling Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
  , kernelId :: Core.Maybe Types.KernelId
    -- ^ The ID of the kernel associated with the AMI.
  , keyName :: Core.Maybe Types.KeyName
    -- ^ The name of the key pair.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon EC2 User Guide for Linux Instances/ .
  , launchConfigurationARN :: Core.Maybe Types.LaunchConfigurationARN
    -- ^ The Amazon Resource Name (ARN) of the launch configuration.
  , metadataOptions :: Core.Maybe Types.InstanceMetadataOptions
    -- ^ The metadata options for the instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds Configuring the Instance Metadata Options> in the /Amazon EC2 Auto Scaling User Guide/ .
  , placementTenancy :: Core.Maybe Types.PlacementTenancy
    -- ^ The tenancy of the instance, either @default@ or @dedicated@ . An instance with @dedicated@ tenancy runs on isolated, single-tenant hardware and can only be launched into a VPC.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html Configuring instance tenancy with Amazon EC2 Auto Scaling> in the /Amazon EC2 Auto Scaling User Guide/ .
  , ramdiskId :: Core.Maybe Types.RamdiskId
    -- ^ The ID of the RAM disk associated with the AMI.
  , securityGroups :: Core.Maybe [Types.XmlString]
    -- ^ A list that contains the security groups to assign to the instances in the Auto Scaling group. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ .
  , spotPrice :: Core.Maybe Types.SpotPrice
    -- ^ The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot price. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html Requesting Spot Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
  , userData :: Core.Maybe Types.UserData
    -- ^ The Base64-encoded user data to make available to the launched EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> in the /Amazon EC2 User Guide for Linux Instances/ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'LaunchConfiguration' value with any optional fields omitted.
mkLaunchConfiguration
    :: Types.LaunchConfigurationName -- ^ 'launchConfigurationName'
    -> Types.ImageId -- ^ 'imageId'
    -> Types.InstanceType -- ^ 'instanceType'
    -> Core.UTCTime -- ^ 'createdTime'
    -> LaunchConfiguration
mkLaunchConfiguration launchConfigurationName imageId instanceType
  createdTime
  = LaunchConfiguration'{launchConfigurationName, imageId,
                         instanceType, createdTime, associatePublicIpAddress = Core.Nothing,
                         blockDeviceMappings = Core.Nothing,
                         classicLinkVPCId = Core.Nothing,
                         classicLinkVPCSecurityGroups = Core.Nothing,
                         ebsOptimized = Core.Nothing, iamInstanceProfile = Core.Nothing,
                         instanceMonitoring = Core.Nothing, kernelId = Core.Nothing,
                         keyName = Core.Nothing, launchConfigurationARN = Core.Nothing,
                         metadataOptions = Core.Nothing, placementTenancy = Core.Nothing,
                         ramdiskId = Core.Nothing, securityGroups = Core.Nothing,
                         spotPrice = Core.Nothing, userData = Core.Nothing}

-- | The name of the launch configuration.
--
-- /Note:/ Consider using 'launchConfigurationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcLaunchConfigurationName :: Lens.Lens' LaunchConfiguration Types.LaunchConfigurationName
lcLaunchConfigurationName = Lens.field @"launchConfigurationName"
{-# INLINEABLE lcLaunchConfigurationName #-}
{-# DEPRECATED launchConfigurationName "Use generic-lens or generic-optics with 'launchConfigurationName' instead"  #-}

-- | The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html Finding an AMI> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'imageId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcImageId :: Lens.Lens' LaunchConfiguration Types.ImageId
lcImageId = Lens.field @"imageId"
{-# INLINEABLE lcImageId #-}
{-# DEPRECATED imageId "Use generic-lens or generic-optics with 'imageId' instead"  #-}

-- | The instance type for the instances.
--
-- For information about available instance types, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes Available Instance Types> in the /Amazon EC2 User Guide for Linux Instances./ 
--
-- /Note:/ Consider using 'instanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcInstanceType :: Lens.Lens' LaunchConfiguration Types.InstanceType
lcInstanceType = Lens.field @"instanceType"
{-# INLINEABLE lcInstanceType #-}
{-# DEPRECATED instanceType "Use generic-lens or generic-optics with 'instanceType' instead"  #-}

-- | The creation date and time for the launch configuration.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcCreatedTime :: Lens.Lens' LaunchConfiguration Core.UTCTime
lcCreatedTime = Lens.field @"createdTime"
{-# INLINEABLE lcCreatedTime #-}
{-# DEPRECATED createdTime "Use generic-lens or generic-optics with 'createdTime' instead"  #-}

-- | For Auto Scaling groups that are running in a VPC, specifies whether to assign a public IP address to the group's instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html Launching Auto Scaling instances in a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'associatePublicIpAddress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcAssociatePublicIpAddress :: Lens.Lens' LaunchConfiguration (Core.Maybe Core.Bool)
lcAssociatePublicIpAddress = Lens.field @"associatePublicIpAddress"
{-# INLINEABLE lcAssociatePublicIpAddress #-}
{-# DEPRECATED associatePublicIpAddress "Use generic-lens or generic-optics with 'associatePublicIpAddress' instead"  #-}

-- | A block device mapping, which specifies the block devices for the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html Block Device Mapping> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'blockDeviceMappings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcBlockDeviceMappings :: Lens.Lens' LaunchConfiguration (Core.Maybe [Types.BlockDeviceMapping])
lcBlockDeviceMappings = Lens.field @"blockDeviceMappings"
{-# INLINEABLE lcBlockDeviceMappings #-}
{-# DEPRECATED blockDeviceMappings "Use generic-lens or generic-optics with 'blockDeviceMappings' instead"  #-}

-- | The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'classicLinkVPCId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcClassicLinkVPCId :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.ClassicLinkVPCId)
lcClassicLinkVPCId = Lens.field @"classicLinkVPCId"
{-# INLINEABLE lcClassicLinkVPCId #-}
{-# DEPRECATED classicLinkVPCId "Use generic-lens or generic-optics with 'classicLinkVPCId' instead"  #-}

-- | The IDs of one or more security groups for the VPC specified in @ClassicLinkVPCId@ .
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon EC2 User Guide for Linux Instances/ and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html#as-ClassicLink Linking EC2-Classic instances to a VPC> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'classicLinkVPCSecurityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcClassicLinkVPCSecurityGroups :: Lens.Lens' LaunchConfiguration (Core.Maybe [Types.XmlStringMaxLen255])
lcClassicLinkVPCSecurityGroups = Lens.field @"classicLinkVPCSecurityGroups"
{-# INLINEABLE lcClassicLinkVPCSecurityGroups #-}
{-# DEPRECATED classicLinkVPCSecurityGroups "Use generic-lens or generic-optics with 'classicLinkVPCSecurityGroups' instead"  #-}

-- | Specifies whether the launch configuration is optimized for EBS I/O (@true@ ) or not (@false@ ). For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html Amazon EBS-Optimized Instances> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'ebsOptimized' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcEbsOptimized :: Lens.Lens' LaunchConfiguration (Core.Maybe Core.Bool)
lcEbsOptimized = Lens.field @"ebsOptimized"
{-# INLINEABLE lcEbsOptimized #-}
{-# DEPRECATED ebsOptimized "Use generic-lens or generic-optics with 'ebsOptimized' instead"  #-}

-- | The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instance. The instance profile contains the IAM role. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html IAM role for applications that run on Amazon EC2 instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'iamInstanceProfile' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcIamInstanceProfile :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.IamInstanceProfile)
lcIamInstanceProfile = Lens.field @"iamInstanceProfile"
{-# INLINEABLE lcIamInstanceProfile #-}
{-# DEPRECATED iamInstanceProfile "Use generic-lens or generic-optics with 'iamInstanceProfile' instead"  #-}

-- | Controls whether instances in this group are launched with detailed (@true@ ) or basic (@false@ ) monitoring.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html Configure Monitoring for Auto Scaling Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'instanceMonitoring' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcInstanceMonitoring :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.InstanceMonitoring)
lcInstanceMonitoring = Lens.field @"instanceMonitoring"
{-# INLINEABLE lcInstanceMonitoring #-}
{-# DEPRECATED instanceMonitoring "Use generic-lens or generic-optics with 'instanceMonitoring' instead"  #-}

-- | The ID of the kernel associated with the AMI.
--
-- /Note:/ Consider using 'kernelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcKernelId :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.KernelId)
lcKernelId = Lens.field @"kernelId"
{-# INLINEABLE lcKernelId #-}
{-# DEPRECATED kernelId "Use generic-lens or generic-optics with 'kernelId' instead"  #-}

-- | The name of the key pair.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Amazon EC2 Key Pairs> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'keyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcKeyName :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.KeyName)
lcKeyName = Lens.field @"keyName"
{-# INLINEABLE lcKeyName #-}
{-# DEPRECATED keyName "Use generic-lens or generic-optics with 'keyName' instead"  #-}

-- | The Amazon Resource Name (ARN) of the launch configuration.
--
-- /Note:/ Consider using 'launchConfigurationARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcLaunchConfigurationARN :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.LaunchConfigurationARN)
lcLaunchConfigurationARN = Lens.field @"launchConfigurationARN"
{-# INLINEABLE lcLaunchConfigurationARN #-}
{-# DEPRECATED launchConfigurationARN "Use generic-lens or generic-optics with 'launchConfigurationARN' instead"  #-}

-- | The metadata options for the instances. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds Configuring the Instance Metadata Options> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'metadataOptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcMetadataOptions :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.InstanceMetadataOptions)
lcMetadataOptions = Lens.field @"metadataOptions"
{-# INLINEABLE lcMetadataOptions #-}
{-# DEPRECATED metadataOptions "Use generic-lens or generic-optics with 'metadataOptions' instead"  #-}

-- | The tenancy of the instance, either @default@ or @dedicated@ . An instance with @dedicated@ tenancy runs on isolated, single-tenant hardware and can only be launched into a VPC.
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html Configuring instance tenancy with Amazon EC2 Auto Scaling> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'placementTenancy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcPlacementTenancy :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.PlacementTenancy)
lcPlacementTenancy = Lens.field @"placementTenancy"
{-# INLINEABLE lcPlacementTenancy #-}
{-# DEPRECATED placementTenancy "Use generic-lens or generic-optics with 'placementTenancy' instead"  #-}

-- | The ID of the RAM disk associated with the AMI.
--
-- /Note:/ Consider using 'ramdiskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcRamdiskId :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.RamdiskId)
lcRamdiskId = Lens.field @"ramdiskId"
{-# INLINEABLE lcRamdiskId #-}
{-# DEPRECATED ramdiskId "Use generic-lens or generic-optics with 'ramdiskId' instead"  #-}

-- | A list that contains the security groups to assign to the instances in the Auto Scaling group. For more information, see <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- /Note:/ Consider using 'securityGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcSecurityGroups :: Lens.Lens' LaunchConfiguration (Core.Maybe [Types.XmlString])
lcSecurityGroups = Lens.field @"securityGroups"
{-# INLINEABLE lcSecurityGroups #-}
{-# DEPRECATED securityGroups "Use generic-lens or generic-optics with 'securityGroups' instead"  #-}

-- | The maximum hourly price to be paid for any Spot Instance launched to fulfill the request. Spot Instances are launched when the price you specify exceeds the current Spot price. For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html Requesting Spot Instances> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'spotPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcSpotPrice :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.SpotPrice)
lcSpotPrice = Lens.field @"spotPrice"
{-# INLINEABLE lcSpotPrice #-}
{-# DEPRECATED spotPrice "Use generic-lens or generic-optics with 'spotPrice' instead"  #-}

-- | The Base64-encoded user data to make available to the launched EC2 instances. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> in the /Amazon EC2 User Guide for Linux Instances/ .
--
-- /Note:/ Consider using 'userData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lcUserData :: Lens.Lens' LaunchConfiguration (Core.Maybe Types.UserData)
lcUserData = Lens.field @"userData"
{-# INLINEABLE lcUserData #-}
{-# DEPRECATED userData "Use generic-lens or generic-optics with 'userData' instead"  #-}

instance Core.FromXML LaunchConfiguration where
        parseXML x
          = LaunchConfiguration' Core.<$>
              (x Core..@ "LaunchConfigurationName") Core.<*> x Core..@ "ImageId"
                Core.<*> x Core..@ "InstanceType"
                Core.<*> x Core..@ "CreatedTime"
                Core.<*> x Core..@? "AssociatePublicIpAddress"
                Core.<*>
                x Core..@? "BlockDeviceMappings" Core..<@>
                  Core.parseXMLList "member"
                Core.<*> x Core..@? "ClassicLinkVPCId"
                Core.<*>
                x Core..@? "ClassicLinkVPCSecurityGroups" Core..<@>
                  Core.parseXMLList "member"
                Core.<*> x Core..@? "EbsOptimized"
                Core.<*> x Core..@? "IamInstanceProfile"
                Core.<*> x Core..@? "InstanceMonitoring"
                Core.<*> x Core..@? "KernelId"
                Core.<*> x Core..@? "KeyName"
                Core.<*> x Core..@? "LaunchConfigurationARN"
                Core.<*> x Core..@? "MetadataOptions"
                Core.<*> x Core..@? "PlacementTenancy"
                Core.<*> x Core..@? "RamdiskId"
                Core.<*>
                x Core..@? "SecurityGroups" Core..<@> Core.parseXMLList "member"
                Core.<*> x Core..@? "SpotPrice"
                Core.<*> x Core..@? "UserData"
