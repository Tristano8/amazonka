{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.BlockDeviceMapping
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.OpsWorks.Types.BlockDeviceMapping
  ( BlockDeviceMapping (..)
  -- * Smart constructor
  , mkBlockDeviceMapping
  -- * Lenses
  , bdmDeviceName
  , bdmEbs
  , bdmNoDevice
  , bdmVirtualName
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.OpsWorks.Types.EbsBlockDevice as Types
import qualified Network.AWS.Prelude as Core

-- | Describes a block device mapping. This data type maps directly to the Amazon EC2 <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html BlockDeviceMapping> data type. 
--
-- /See:/ 'mkBlockDeviceMapping' smart constructor.
data BlockDeviceMapping = BlockDeviceMapping'
  { deviceName :: Core.Maybe Core.Text
    -- ^ The device name that is exposed to the instance, such as @/dev/sdh@ . For the root device, you can use the explicit device name or you can set this parameter to @ROOT_DEVICE@ and AWS OpsWorks Stacks will provide the correct device name.
  , ebs :: Core.Maybe Types.EbsBlockDevice
    -- ^ An @EBSBlockDevice@ that defines how to configure an Amazon EBS volume when the instance is launched.
  , noDevice :: Core.Maybe Core.Text
    -- ^ Suppresses the specified device included in the AMI's block device mapping.
  , virtualName :: Core.Maybe Core.Text
    -- ^ The virtual device name. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html BlockDeviceMapping> .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BlockDeviceMapping' value with any optional fields omitted.
mkBlockDeviceMapping
    :: BlockDeviceMapping
mkBlockDeviceMapping
  = BlockDeviceMapping'{deviceName = Core.Nothing,
                        ebs = Core.Nothing, noDevice = Core.Nothing,
                        virtualName = Core.Nothing}

-- | The device name that is exposed to the instance, such as @/dev/sdh@ . For the root device, you can use the explicit device name or you can set this parameter to @ROOT_DEVICE@ and AWS OpsWorks Stacks will provide the correct device name.
--
-- /Note:/ Consider using 'deviceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdmDeviceName :: Lens.Lens' BlockDeviceMapping (Core.Maybe Core.Text)
bdmDeviceName = Lens.field @"deviceName"
{-# INLINEABLE bdmDeviceName #-}
{-# DEPRECATED deviceName "Use generic-lens or generic-optics with 'deviceName' instead"  #-}

-- | An @EBSBlockDevice@ that defines how to configure an Amazon EBS volume when the instance is launched.
--
-- /Note:/ Consider using 'ebs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdmEbs :: Lens.Lens' BlockDeviceMapping (Core.Maybe Types.EbsBlockDevice)
bdmEbs = Lens.field @"ebs"
{-# INLINEABLE bdmEbs #-}
{-# DEPRECATED ebs "Use generic-lens or generic-optics with 'ebs' instead"  #-}

-- | Suppresses the specified device included in the AMI's block device mapping.
--
-- /Note:/ Consider using 'noDevice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdmNoDevice :: Lens.Lens' BlockDeviceMapping (Core.Maybe Core.Text)
bdmNoDevice = Lens.field @"noDevice"
{-# INLINEABLE bdmNoDevice #-}
{-# DEPRECATED noDevice "Use generic-lens or generic-optics with 'noDevice' instead"  #-}

-- | The virtual device name. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html BlockDeviceMapping> .
--
-- /Note:/ Consider using 'virtualName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bdmVirtualName :: Lens.Lens' BlockDeviceMapping (Core.Maybe Core.Text)
bdmVirtualName = Lens.field @"virtualName"
{-# INLINEABLE bdmVirtualName #-}
{-# DEPRECATED virtualName "Use generic-lens or generic-optics with 'virtualName' instead"  #-}

instance Core.FromJSON BlockDeviceMapping where
        toJSON BlockDeviceMapping{..}
          = Core.object
              (Core.catMaybes
                 [("DeviceName" Core..=) Core.<$> deviceName,
                  ("Ebs" Core..=) Core.<$> ebs,
                  ("NoDevice" Core..=) Core.<$> noDevice,
                  ("VirtualName" Core..=) Core.<$> virtualName])

instance Core.FromJSON BlockDeviceMapping where
        parseJSON
          = Core.withObject "BlockDeviceMapping" Core.$
              \ x ->
                BlockDeviceMapping' Core.<$>
                  (x Core..:? "DeviceName") Core.<*> x Core..:? "Ebs" Core.<*>
                    x Core..:? "NoDevice"
                    Core.<*> x Core..:? "VirtualName"
