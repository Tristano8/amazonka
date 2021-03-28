{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.UpdateChapCredentials
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it. This operation is supported in the volume and tape gateway types.
--
-- /Important:/ When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.
module Network.AWS.StorageGateway.UpdateChapCredentials
    (
    -- * Creating a request
      UpdateChapCredentials (..)
    , mkUpdateChapCredentials
    -- ** Request lenses
    , uccTargetARN
    , uccSecretToAuthenticateInitiator
    , uccInitiatorName
    , uccSecretToAuthenticateTarget

    -- * Destructuring the response
    , UpdateChapCredentialsResponse (..)
    , mkUpdateChapCredentialsResponse
    -- ** Response lenses
    , uccrrsInitiatorName
    , uccrrsTargetARN
    , uccrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'UpdateChapCredentialsInput$InitiatorName' 
--
--
--     * 'UpdateChapCredentialsInput$SecretToAuthenticateInitiator' 
--
--
--     * 'UpdateChapCredentialsInput$SecretToAuthenticateTarget' 
--
--
--     * 'UpdateChapCredentialsInput$TargetARN' 
--
--
--
-- /See:/ 'mkUpdateChapCredentials' smart constructor.
data UpdateChapCredentials = UpdateChapCredentials'
  { targetARN :: Types.TargetARN
    -- ^ The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return the TargetARN for specified VolumeARN.
  , secretToAuthenticateInitiator :: Types.SecretToAuthenticateInitiator
    -- ^ The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.
  , initiatorName :: Types.InitiatorName
    -- ^ The iSCSI initiator that connects to the target.
  , secretToAuthenticateTarget :: Core.Maybe Types.SecretToAuthenticateTarget
    -- ^ The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).
--
-- Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateChapCredentials' value with any optional fields omitted.
mkUpdateChapCredentials
    :: Types.TargetARN -- ^ 'targetARN'
    -> Types.SecretToAuthenticateInitiator -- ^ 'secretToAuthenticateInitiator'
    -> Types.InitiatorName -- ^ 'initiatorName'
    -> UpdateChapCredentials
mkUpdateChapCredentials targetARN secretToAuthenticateInitiator
  initiatorName
  = UpdateChapCredentials'{targetARN, secretToAuthenticateInitiator,
                           initiatorName, secretToAuthenticateTarget = Core.Nothing}

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the 'DescribeStorediSCSIVolumes' operation to return the TargetARN for specified VolumeARN.
--
-- /Note:/ Consider using 'targetARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccTargetARN :: Lens.Lens' UpdateChapCredentials Types.TargetARN
uccTargetARN = Lens.field @"targetARN"
{-# INLINEABLE uccTargetARN #-}
{-# DEPRECATED targetARN "Use generic-lens or generic-optics with 'targetARN' instead"  #-}

-- | The secret key that the initiator (for example, the Windows client) must provide to participate in mutual CHAP with the target.
--
-- /Note:/ Consider using 'secretToAuthenticateInitiator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccSecretToAuthenticateInitiator :: Lens.Lens' UpdateChapCredentials Types.SecretToAuthenticateInitiator
uccSecretToAuthenticateInitiator = Lens.field @"secretToAuthenticateInitiator"
{-# INLINEABLE uccSecretToAuthenticateInitiator #-}
{-# DEPRECATED secretToAuthenticateInitiator "Use generic-lens or generic-optics with 'secretToAuthenticateInitiator' instead"  #-}

-- | The iSCSI initiator that connects to the target.
--
-- /Note:/ Consider using 'initiatorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccInitiatorName :: Lens.Lens' UpdateChapCredentials Types.InitiatorName
uccInitiatorName = Lens.field @"initiatorName"
{-# INLINEABLE uccInitiatorName #-}
{-# DEPRECATED initiatorName "Use generic-lens or generic-optics with 'initiatorName' instead"  #-}

-- | The secret key that the target must provide to participate in mutual CHAP with the initiator (e.g. Windows client).
--
-- Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
--
-- /Note:/ Consider using 'secretToAuthenticateTarget' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccSecretToAuthenticateTarget :: Lens.Lens' UpdateChapCredentials (Core.Maybe Types.SecretToAuthenticateTarget)
uccSecretToAuthenticateTarget = Lens.field @"secretToAuthenticateTarget"
{-# INLINEABLE uccSecretToAuthenticateTarget #-}
{-# DEPRECATED secretToAuthenticateTarget "Use generic-lens or generic-optics with 'secretToAuthenticateTarget' instead"  #-}

instance Core.ToQuery UpdateChapCredentials where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateChapCredentials where
        toHeaders UpdateChapCredentials{..}
          = Core.pure
              ("X-Amz-Target", "StorageGateway_20130630.UpdateChapCredentials")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateChapCredentials where
        toJSON UpdateChapCredentials{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("TargetARN" Core..= targetARN),
                  Core.Just
                    ("SecretToAuthenticateInitiator" Core..=
                       secretToAuthenticateInitiator),
                  Core.Just ("InitiatorName" Core..= initiatorName),
                  ("SecretToAuthenticateTarget" Core..=) Core.<$>
                    secretToAuthenticateTarget])

instance Core.AWSRequest UpdateChapCredentials where
        type Rs UpdateChapCredentials = UpdateChapCredentialsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateChapCredentialsResponse' Core.<$>
                   (x Core..:? "InitiatorName") Core.<*> x Core..:? "TargetARN"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | A JSON object containing the following fields:
--
-- /See:/ 'mkUpdateChapCredentialsResponse' smart constructor.
data UpdateChapCredentialsResponse = UpdateChapCredentialsResponse'
  { initiatorName :: Core.Maybe Types.IqnName
    -- ^ The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.
  , targetARN :: Core.Maybe Types.TargetARN
    -- ^ The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateChapCredentialsResponse' value with any optional fields omitted.
mkUpdateChapCredentialsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateChapCredentialsResponse
mkUpdateChapCredentialsResponse responseStatus
  = UpdateChapCredentialsResponse'{initiatorName = Core.Nothing,
                                   targetARN = Core.Nothing, responseStatus}

-- | The iSCSI initiator that connects to the target. This is the same initiator name specified in the request.
--
-- /Note:/ Consider using 'initiatorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrrsInitiatorName :: Lens.Lens' UpdateChapCredentialsResponse (Core.Maybe Types.IqnName)
uccrrsInitiatorName = Lens.field @"initiatorName"
{-# INLINEABLE uccrrsInitiatorName #-}
{-# DEPRECATED initiatorName "Use generic-lens or generic-optics with 'initiatorName' instead"  #-}

-- | The Amazon Resource Name (ARN) of the target. This is the same target specified in the request.
--
-- /Note:/ Consider using 'targetARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrrsTargetARN :: Lens.Lens' UpdateChapCredentialsResponse (Core.Maybe Types.TargetARN)
uccrrsTargetARN = Lens.field @"targetARN"
{-# INLINEABLE uccrrsTargetARN #-}
{-# DEPRECATED targetARN "Use generic-lens or generic-optics with 'targetARN' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrrsResponseStatus :: Lens.Lens' UpdateChapCredentialsResponse Core.Int
uccrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uccrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
