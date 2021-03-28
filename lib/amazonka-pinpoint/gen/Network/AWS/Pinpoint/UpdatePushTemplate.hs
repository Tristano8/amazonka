{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.UpdatePushTemplate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing message template for messages that are sent through a push notification channel.
module Network.AWS.Pinpoint.UpdatePushTemplate
    (
    -- * Creating a request
      UpdatePushTemplate (..)
    , mkUpdatePushTemplate
    -- ** Request lenses
    , uptTemplateName
    , uptPushNotificationTemplateRequest
    , uptCreateNewVersion
    , uptVersion

    -- * Destructuring the response
    , UpdatePushTemplateResponse (..)
    , mkUpdatePushTemplateResponse
    -- ** Response lenses
    , uptrrsMessageBody
    , uptrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdatePushTemplate' smart constructor.
data UpdatePushTemplate = UpdatePushTemplate'
  { templateName :: Core.Text
    -- ^ The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
  , pushNotificationTemplateRequest :: Types.PushNotificationTemplateRequest
  , createNewVersion :: Core.Maybe Core.Bool
    -- ^ Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.
--
-- If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.
  , version :: Core.Maybe Core.Text
    -- ^ The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link>Template Versions resource.
--
-- If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.
-- If you don't specify a value for this parameter, Amazon Pinpoint does the following:
--
--     * For a get operation, retrieves information about the active version of the template.
--
--
--     * For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.
--
--
--     * For a delete operation, deletes the template, including all versions of the template.
--
--
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdatePushTemplate' value with any optional fields omitted.
mkUpdatePushTemplate
    :: Core.Text -- ^ 'templateName'
    -> Types.PushNotificationTemplateRequest -- ^ 'pushNotificationTemplateRequest'
    -> UpdatePushTemplate
mkUpdatePushTemplate templateName pushNotificationTemplateRequest
  = UpdatePushTemplate'{templateName,
                        pushNotificationTemplateRequest, createNewVersion = Core.Nothing,
                        version = Core.Nothing}

-- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptTemplateName :: Lens.Lens' UpdatePushTemplate Core.Text
uptTemplateName = Lens.field @"templateName"
{-# INLINEABLE uptTemplateName #-}
{-# DEPRECATED templateName "Use generic-lens or generic-optics with 'templateName' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'pushNotificationTemplateRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptPushNotificationTemplateRequest :: Lens.Lens' UpdatePushTemplate Types.PushNotificationTemplateRequest
uptPushNotificationTemplateRequest = Lens.field @"pushNotificationTemplateRequest"
{-# INLINEABLE uptPushNotificationTemplateRequest #-}
{-# DEPRECATED pushNotificationTemplateRequest "Use generic-lens or generic-optics with 'pushNotificationTemplateRequest' instead"  #-}

-- | Specifies whether to save the updates as a new version of the message template. Valid values are: true, save the updates as a new version; and, false, save the updates to (overwrite) the latest existing version of the template.
--
-- If you don't specify a value for this parameter, Amazon Pinpoint saves the updates to (overwrites) the latest existing version of the template. If you specify a value of true for this parameter, don't specify a value for the version parameter. Otherwise, an error will occur.
--
-- /Note:/ Consider using 'createNewVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptCreateNewVersion :: Lens.Lens' UpdatePushTemplate (Core.Maybe Core.Bool)
uptCreateNewVersion = Lens.field @"createNewVersion"
{-# INLINEABLE uptCreateNewVersion #-}
{-# DEPRECATED createNewVersion "Use generic-lens or generic-optics with 'createNewVersion' instead"  #-}

-- | The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link>Template Versions resource.
--
-- If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.
-- If you don't specify a value for this parameter, Amazon Pinpoint does the following:
--
--     * For a get operation, retrieves information about the active version of the template.
--
--
--     * For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.
--
--
--     * For a delete operation, deletes the template, including all versions of the template.
--
--
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptVersion :: Lens.Lens' UpdatePushTemplate (Core.Maybe Core.Text)
uptVersion = Lens.field @"version"
{-# INLINEABLE uptVersion #-}
{-# DEPRECATED version "Use generic-lens or generic-optics with 'version' instead"  #-}

instance Core.ToQuery UpdatePushTemplate where
        toQuery UpdatePushTemplate{..}
          = Core.maybe Core.mempty (Core.toQueryPair "create-new-version")
              createNewVersion
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "version") version

instance Core.ToHeaders UpdatePushTemplate where
        toHeaders UpdatePushTemplate{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdatePushTemplate where
        toJSON UpdatePushTemplate{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("PushNotificationTemplateRequest" Core..=
                       pushNotificationTemplateRequest)])

instance Core.AWSRequest UpdatePushTemplate where
        type Rs UpdatePushTemplate = UpdatePushTemplateResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath =
                           "/v1/templates/" Core.<> Core.toText templateName Core.<> "/push",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdatePushTemplateResponse' Core.<$>
                   (Core.eitherParseJSON x) Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdatePushTemplateResponse' smart constructor.
data UpdatePushTemplateResponse = UpdatePushTemplateResponse'
  { messageBody :: Types.MessageBody
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdatePushTemplateResponse' value with any optional fields omitted.
mkUpdatePushTemplateResponse
    :: Types.MessageBody -- ^ 'messageBody'
    -> Core.Int -- ^ 'responseStatus'
    -> UpdatePushTemplateResponse
mkUpdatePushTemplateResponse messageBody responseStatus
  = UpdatePushTemplateResponse'{messageBody, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'messageBody' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptrrsMessageBody :: Lens.Lens' UpdatePushTemplateResponse Types.MessageBody
uptrrsMessageBody = Lens.field @"messageBody"
{-# INLINEABLE uptrrsMessageBody #-}
{-# DEPRECATED messageBody "Use generic-lens or generic-optics with 'messageBody' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uptrrsResponseStatus :: Lens.Lens' UpdatePushTemplateResponse Core.Int
uptrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uptrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
