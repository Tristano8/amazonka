{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.UpdateConfigurationSetEventDestination
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the event destination of a configuration set. Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Monitoring Your Amazon SES Sending Activity> in the /Amazon SES Developer Guide./ 
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.UpdateConfigurationSetEventDestination
    (
    -- * Creating a request
      UpdateConfigurationSetEventDestination (..)
    , mkUpdateConfigurationSetEventDestination
    -- ** Request lenses
    , ucsedConfigurationSetName
    , ucsedEventDestination

    -- * Destructuring the response
    , UpdateConfigurationSetEventDestinationResponse (..)
    , mkUpdateConfigurationSetEventDestinationResponse
    -- ** Response lenses
    , ucsedrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkUpdateConfigurationSetEventDestination' smart constructor.
data UpdateConfigurationSetEventDestination = UpdateConfigurationSetEventDestination'
  { configurationSetName :: Types.ConfigurationSetName
    -- ^ The name of the configuration set that contains the event destination that you want to update.
  , eventDestination :: Types.EventDestination
    -- ^ The event destination object that you want to apply to the specified configuration set.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateConfigurationSetEventDestination' value with any optional fields omitted.
mkUpdateConfigurationSetEventDestination
    :: Types.ConfigurationSetName -- ^ 'configurationSetName'
    -> Types.EventDestination -- ^ 'eventDestination'
    -> UpdateConfigurationSetEventDestination
mkUpdateConfigurationSetEventDestination configurationSetName
  eventDestination
  = UpdateConfigurationSetEventDestination'{configurationSetName,
                                            eventDestination}

-- | The name of the configuration set that contains the event destination that you want to update.
--
-- /Note:/ Consider using 'configurationSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucsedConfigurationSetName :: Lens.Lens' UpdateConfigurationSetEventDestination Types.ConfigurationSetName
ucsedConfigurationSetName = Lens.field @"configurationSetName"
{-# INLINEABLE ucsedConfigurationSetName #-}
{-# DEPRECATED configurationSetName "Use generic-lens or generic-optics with 'configurationSetName' instead"  #-}

-- | The event destination object that you want to apply to the specified configuration set.
--
-- /Note:/ Consider using 'eventDestination' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucsedEventDestination :: Lens.Lens' UpdateConfigurationSetEventDestination Types.EventDestination
ucsedEventDestination = Lens.field @"eventDestination"
{-# INLINEABLE ucsedEventDestination #-}
{-# DEPRECATED eventDestination "Use generic-lens or generic-optics with 'eventDestination' instead"  #-}

instance Core.ToQuery UpdateConfigurationSetEventDestination where
        toQuery UpdateConfigurationSetEventDestination{..}
          = Core.toQueryPair "Action"
              ("UpdateConfigurationSetEventDestination" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<>
              Core.toQueryPair "ConfigurationSetName" configurationSetName
              Core.<> Core.toQueryPair "EventDestination" eventDestination

instance Core.ToHeaders UpdateConfigurationSetEventDestination
         where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest UpdateConfigurationSetEventDestination
         where
        type Rs UpdateConfigurationSetEventDestination =
             UpdateConfigurationSetEventDestinationResponse
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
              "UpdateConfigurationSetEventDestinationResult"
              (\ s h x ->
                 UpdateConfigurationSetEventDestinationResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | An empty element returned on a successful request.
--
-- /See:/ 'mkUpdateConfigurationSetEventDestinationResponse' smart constructor.
newtype UpdateConfigurationSetEventDestinationResponse = UpdateConfigurationSetEventDestinationResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateConfigurationSetEventDestinationResponse' value with any optional fields omitted.
mkUpdateConfigurationSetEventDestinationResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateConfigurationSetEventDestinationResponse
mkUpdateConfigurationSetEventDestinationResponse responseStatus
  = UpdateConfigurationSetEventDestinationResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucsedrrsResponseStatus :: Lens.Lens' UpdateConfigurationSetEventDestinationResponse Core.Int
ucsedrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ucsedrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
