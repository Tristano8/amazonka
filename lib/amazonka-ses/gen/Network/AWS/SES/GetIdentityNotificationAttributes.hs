{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.GetIdentityNotificationAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes.
--
-- This operation is throttled at one request per second and can only get notification attributes for up to 100 identities at a time.
-- For more information about using notifications with Amazon SES, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html Amazon SES Developer Guide> .
module Network.AWS.SES.GetIdentityNotificationAttributes
    (
    -- * Creating a request
      GetIdentityNotificationAttributes (..)
    , mkGetIdentityNotificationAttributes
    -- ** Request lenses
    , ginaIdentities

    -- * Destructuring the response
    , GetIdentityNotificationAttributesResponse (..)
    , mkGetIdentityNotificationAttributesResponse
    -- ** Response lenses
    , ginarrsNotificationAttributes
    , ginarrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkGetIdentityNotificationAttributes' smart constructor.
newtype GetIdentityNotificationAttributes = GetIdentityNotificationAttributes'
  { identities :: [Types.Identity]
    -- ^ A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: @user@example.com@ , @example.com@ , @arn:aws:ses:us-east-1:123456789012:identity/example.com@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetIdentityNotificationAttributes' value with any optional fields omitted.
mkGetIdentityNotificationAttributes
    :: GetIdentityNotificationAttributes
mkGetIdentityNotificationAttributes
  = GetIdentityNotificationAttributes'{identities = Core.mempty}

-- | A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: @user@example.com@ , @example.com@ , @arn:aws:ses:us-east-1:123456789012:identity/example.com@ .
--
-- /Note:/ Consider using 'identities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ginaIdentities :: Lens.Lens' GetIdentityNotificationAttributes [Types.Identity]
ginaIdentities = Lens.field @"identities"
{-# INLINEABLE ginaIdentities #-}
{-# DEPRECATED identities "Use generic-lens or generic-optics with 'identities' instead"  #-}

instance Core.ToQuery GetIdentityNotificationAttributes where
        toQuery GetIdentityNotificationAttributes{..}
          = Core.toQueryPair "Action"
              ("GetIdentityNotificationAttributes" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<>
              Core.toQueryPair "Identities"
                (Core.toQueryList "member" identities)

instance Core.ToHeaders GetIdentityNotificationAttributes where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest GetIdentityNotificationAttributes where
        type Rs GetIdentityNotificationAttributes =
             GetIdentityNotificationAttributesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper
              "GetIdentityNotificationAttributesResult"
              (\ s h x ->
                 GetIdentityNotificationAttributesResponse' Core.<$>
                   (x Core..@ "NotificationAttributes" Core..@! Core.mempty Core..<@>
                      Core.parseXMLMap "entry" "key" "value")
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the notification attributes for a list of identities.
--
-- /See:/ 'mkGetIdentityNotificationAttributesResponse' smart constructor.
data GetIdentityNotificationAttributesResponse = GetIdentityNotificationAttributesResponse'
  { notificationAttributes :: Core.HashMap Types.Identity Types.IdentityNotificationAttributes
    -- ^ A map of Identity to IdentityNotificationAttributes.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetIdentityNotificationAttributesResponse' value with any optional fields omitted.
mkGetIdentityNotificationAttributesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetIdentityNotificationAttributesResponse
mkGetIdentityNotificationAttributesResponse responseStatus
  = GetIdentityNotificationAttributesResponse'{notificationAttributes
                                                 = Core.mempty,
                                               responseStatus}

-- | A map of Identity to IdentityNotificationAttributes.
--
-- /Note:/ Consider using 'notificationAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ginarrsNotificationAttributes :: Lens.Lens' GetIdentityNotificationAttributesResponse (Core.HashMap Types.Identity Types.IdentityNotificationAttributes)
ginarrsNotificationAttributes = Lens.field @"notificationAttributes"
{-# INLINEABLE ginarrsNotificationAttributes #-}
{-# DEPRECATED notificationAttributes "Use generic-lens or generic-optics with 'notificationAttributes' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ginarrsResponseStatus :: Lens.Lens' GetIdentityNotificationAttributesResponse Core.Int
ginarrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ginarrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
