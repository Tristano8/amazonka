{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.AttachVolume
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Connects a volume to an iSCSI connection and then attaches the volume to the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.
module Network.AWS.StorageGateway.AttachVolume
    (
    -- * Creating a request
      AttachVolume (..)
    , mkAttachVolume
    -- ** Request lenses
    , avGatewayARN
    , avVolumeARN
    , avNetworkInterfaceId
    , avDiskId
    , avTargetName

    -- * Destructuring the response
    , AttachVolumeResponse (..)
    , mkAttachVolumeResponse
    -- ** Response lenses
    , avrrsTargetARN
    , avrrsVolumeARN
    , avrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | AttachVolumeInput
--
-- /See:/ 'mkAttachVolume' smart constructor.
data AttachVolume = AttachVolume'
  { gatewayARN :: Types.GatewayARN
    -- ^ The Amazon Resource Name (ARN) of the gateway that you want to attach the volume to.
  , volumeARN :: Types.VolumeARN
    -- ^ The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.
  , networkInterfaceId :: Types.NetworkInterfaceId
    -- ^ The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway.
--
-- Valid Values: A valid IP address.
  , diskId :: Core.Maybe Types.DiskId
    -- ^ The unique device ID or other distinguishing data that identifies the local disk used to create the volume. This value is only required when you are attaching a stored volume.
  , targetName :: Core.Maybe Types.TargetName
    -- ^ The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway.
--
-- If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachVolume' value with any optional fields omitted.
mkAttachVolume
    :: Types.GatewayARN -- ^ 'gatewayARN'
    -> Types.VolumeARN -- ^ 'volumeARN'
    -> Types.NetworkInterfaceId -- ^ 'networkInterfaceId'
    -> AttachVolume
mkAttachVolume gatewayARN volumeARN networkInterfaceId
  = AttachVolume'{gatewayARN, volumeARN, networkInterfaceId,
                  diskId = Core.Nothing, targetName = Core.Nothing}

-- | The Amazon Resource Name (ARN) of the gateway that you want to attach the volume to.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avGatewayARN :: Lens.Lens' AttachVolume Types.GatewayARN
avGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE avGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.
--
-- /Note:/ Consider using 'volumeARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avVolumeARN :: Lens.Lens' AttachVolume Types.VolumeARN
avVolumeARN = Lens.field @"volumeARN"
{-# INLINEABLE avVolumeARN #-}
{-# DEPRECATED volumeARN "Use generic-lens or generic-optics with 'volumeARN' instead"  #-}

-- | The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted. Use 'DescribeGatewayInformation' to get a list of the network interfaces available on a gateway.
--
-- Valid Values: A valid IP address.
--
-- /Note:/ Consider using 'networkInterfaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avNetworkInterfaceId :: Lens.Lens' AttachVolume Types.NetworkInterfaceId
avNetworkInterfaceId = Lens.field @"networkInterfaceId"
{-# INLINEABLE avNetworkInterfaceId #-}
{-# DEPRECATED networkInterfaceId "Use generic-lens or generic-optics with 'networkInterfaceId' instead"  #-}

-- | The unique device ID or other distinguishing data that identifies the local disk used to create the volume. This value is only required when you are attaching a stored volume.
--
-- /Note:/ Consider using 'diskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avDiskId :: Lens.Lens' AttachVolume (Core.Maybe Types.DiskId)
avDiskId = Lens.field @"diskId"
{-# INLINEABLE avDiskId #-}
{-# DEPRECATED diskId "Use generic-lens or generic-optics with 'diskId' instead"  #-}

-- | The name of the iSCSI target used by an initiator to connect to a volume and used as a suffix for the target ARN. For example, specifying @TargetName@ as /myvolume/ results in the target ARN of @arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume@ . The target name must be unique across all volumes on a gateway.
--
-- If you don't specify a value, Storage Gateway uses the value that was previously used for this volume as the new target name.
--
-- /Note:/ Consider using 'targetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avTargetName :: Lens.Lens' AttachVolume (Core.Maybe Types.TargetName)
avTargetName = Lens.field @"targetName"
{-# INLINEABLE avTargetName #-}
{-# DEPRECATED targetName "Use generic-lens or generic-optics with 'targetName' instead"  #-}

instance Core.ToQuery AttachVolume where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders AttachVolume where
        toHeaders AttachVolume{..}
          = Core.pure
              ("X-Amz-Target", "StorageGateway_20130630.AttachVolume")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON AttachVolume where
        toJSON AttachVolume{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("GatewayARN" Core..= gatewayARN),
                  Core.Just ("VolumeARN" Core..= volumeARN),
                  Core.Just ("NetworkInterfaceId" Core..= networkInterfaceId),
                  ("DiskId" Core..=) Core.<$> diskId,
                  ("TargetName" Core..=) Core.<$> targetName])

instance Core.AWSRequest AttachVolume where
        type Rs AttachVolume = AttachVolumeResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 AttachVolumeResponse' Core.<$>
                   (x Core..:? "TargetARN") Core.<*> x Core..:? "VolumeARN" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | AttachVolumeOutput
--
-- /See:/ 'mkAttachVolumeResponse' smart constructor.
data AttachVolumeResponse = AttachVolumeResponse'
  { targetARN :: Core.Maybe Types.TargetARN
    -- ^ The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name for the initiator that was used to connect to the target.
  , volumeARN :: Core.Maybe Types.VolumeARN
    -- ^ The Amazon Resource Name (ARN) of the volume that was attached to the gateway.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachVolumeResponse' value with any optional fields omitted.
mkAttachVolumeResponse
    :: Core.Int -- ^ 'responseStatus'
    -> AttachVolumeResponse
mkAttachVolumeResponse responseStatus
  = AttachVolumeResponse'{targetARN = Core.Nothing,
                          volumeARN = Core.Nothing, responseStatus}

-- | The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name for the initiator that was used to connect to the target.
--
-- /Note:/ Consider using 'targetARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avrrsTargetARN :: Lens.Lens' AttachVolumeResponse (Core.Maybe Types.TargetARN)
avrrsTargetARN = Lens.field @"targetARN"
{-# INLINEABLE avrrsTargetARN #-}
{-# DEPRECATED targetARN "Use generic-lens or generic-optics with 'targetARN' instead"  #-}

-- | The Amazon Resource Name (ARN) of the volume that was attached to the gateway.
--
-- /Note:/ Consider using 'volumeARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avrrsVolumeARN :: Lens.Lens' AttachVolumeResponse (Core.Maybe Types.VolumeARN)
avrrsVolumeARN = Lens.field @"volumeARN"
{-# INLINEABLE avrrsVolumeARN #-}
{-# DEPRECATED volumeARN "Use generic-lens or generic-optics with 'volumeARN' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avrrsResponseStatus :: Lens.Lens' AttachVolumeResponse Core.Int
avrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE avrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
