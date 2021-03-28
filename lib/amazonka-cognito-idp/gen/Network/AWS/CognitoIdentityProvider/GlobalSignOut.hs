{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.GlobalSignOut
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs out users from all devices. It also invalidates all refresh tokens issued to a user. The user's current access and Id tokens remain valid until their expiry. Access and Id tokens expire one hour after they are issued.
module Network.AWS.CognitoIdentityProvider.GlobalSignOut
    (
    -- * Creating a request
      GlobalSignOut (..)
    , mkGlobalSignOut
    -- ** Request lenses
    , gsoAccessToken

    -- * Destructuring the response
    , GlobalSignOutResponse (..)
    , mkGlobalSignOutResponse
    -- ** Response lenses
    , gsorrsResponseStatus
    ) where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to sign out all devices.
--
-- /See:/ 'mkGlobalSignOut' smart constructor.
newtype GlobalSignOut = GlobalSignOut'
  { accessToken :: Types.TokenModelType
    -- ^ The access token.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GlobalSignOut' value with any optional fields omitted.
mkGlobalSignOut
    :: Types.TokenModelType -- ^ 'accessToken'
    -> GlobalSignOut
mkGlobalSignOut accessToken = GlobalSignOut'{accessToken}

-- | The access token.
--
-- /Note:/ Consider using 'accessToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsoAccessToken :: Lens.Lens' GlobalSignOut Types.TokenModelType
gsoAccessToken = Lens.field @"accessToken"
{-# INLINEABLE gsoAccessToken #-}
{-# DEPRECATED accessToken "Use generic-lens or generic-optics with 'accessToken' instead"  #-}

instance Core.ToQuery GlobalSignOut where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GlobalSignOut where
        toHeaders GlobalSignOut{..}
          = Core.pure
              ("X-Amz-Target", "AWSCognitoIdentityProviderService.GlobalSignOut")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GlobalSignOut where
        toJSON GlobalSignOut{..}
          = Core.object
              (Core.catMaybes [Core.Just ("AccessToken" Core..= accessToken)])

instance Core.AWSRequest GlobalSignOut where
        type Rs GlobalSignOut = GlobalSignOutResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 GlobalSignOutResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | The response to the request to sign out all devices.
--
-- /See:/ 'mkGlobalSignOutResponse' smart constructor.
newtype GlobalSignOutResponse = GlobalSignOutResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GlobalSignOutResponse' value with any optional fields omitted.
mkGlobalSignOutResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GlobalSignOutResponse
mkGlobalSignOutResponse responseStatus
  = GlobalSignOutResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsorrsResponseStatus :: Lens.Lens' GlobalSignOutResponse Core.Int
gsorrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gsorrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
