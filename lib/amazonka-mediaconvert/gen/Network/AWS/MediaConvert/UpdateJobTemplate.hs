{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.UpdateJobTemplate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify one of your existing job templates.
module Network.AWS.MediaConvert.UpdateJobTemplate
    (
    -- * Creating a request
      UpdateJobTemplate (..)
    , mkUpdateJobTemplate
    -- ** Request lenses
    , ujtName
    , ujtAccelerationSettings
    , ujtCategory
    , ujtDescription
    , ujtHopDestinations
    , ujtPriority
    , ujtQueue
    , ujtSettings
    , ujtStatusUpdateInterval

    -- * Destructuring the response
    , UpdateJobTemplateResponse (..)
    , mkUpdateJobTemplateResponse
    -- ** Response lenses
    , ujtrrsJobTemplate
    , ujtrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaConvert.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateJobTemplate' smart constructor.
data UpdateJobTemplate = UpdateJobTemplate'
  { name :: Core.Text
    -- ^ The name of the job template you are modifying
  , accelerationSettings :: Core.Maybe Types.AccelerationSettings
    -- ^ Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
  , category :: Core.Maybe Core.Text
    -- ^ The new category for the job template, if you are changing it.
  , description :: Core.Maybe Core.Text
    -- ^ The new description for the job template, if you are changing it.
  , hopDestinations :: Core.Maybe [Types.HopDestination]
    -- ^ Optional list of hop destinations.
  , priority :: Core.Maybe Core.Int
    -- ^ Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
  , queue :: Core.Maybe Core.Text
    -- ^ The new queue for the job template, if you are changing it.
  , settings :: Core.Maybe Types.JobTemplateSettings
    -- ^ JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
  , statusUpdateInterval :: Core.Maybe Types.StatusUpdateInterval
    -- ^ Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateJobTemplate' value with any optional fields omitted.
mkUpdateJobTemplate
    :: Core.Text -- ^ 'name'
    -> UpdateJobTemplate
mkUpdateJobTemplate name
  = UpdateJobTemplate'{name, accelerationSettings = Core.Nothing,
                       category = Core.Nothing, description = Core.Nothing,
                       hopDestinations = Core.Nothing, priority = Core.Nothing,
                       queue = Core.Nothing, settings = Core.Nothing,
                       statusUpdateInterval = Core.Nothing}

-- | The name of the job template you are modifying
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtName :: Lens.Lens' UpdateJobTemplate Core.Text
ujtName = Lens.field @"name"
{-# INLINEABLE ujtName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | Accelerated transcoding can significantly speed up jobs with long, visually complex content. Outputs that use this feature incur pro-tier pricing. For information about feature limitations, see the AWS Elemental MediaConvert User Guide.
--
-- /Note:/ Consider using 'accelerationSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtAccelerationSettings :: Lens.Lens' UpdateJobTemplate (Core.Maybe Types.AccelerationSettings)
ujtAccelerationSettings = Lens.field @"accelerationSettings"
{-# INLINEABLE ujtAccelerationSettings #-}
{-# DEPRECATED accelerationSettings "Use generic-lens or generic-optics with 'accelerationSettings' instead"  #-}

-- | The new category for the job template, if you are changing it.
--
-- /Note:/ Consider using 'category' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtCategory :: Lens.Lens' UpdateJobTemplate (Core.Maybe Core.Text)
ujtCategory = Lens.field @"category"
{-# INLINEABLE ujtCategory #-}
{-# DEPRECATED category "Use generic-lens or generic-optics with 'category' instead"  #-}

-- | The new description for the job template, if you are changing it.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtDescription :: Lens.Lens' UpdateJobTemplate (Core.Maybe Core.Text)
ujtDescription = Lens.field @"description"
{-# INLINEABLE ujtDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | Optional list of hop destinations.
--
-- /Note:/ Consider using 'hopDestinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtHopDestinations :: Lens.Lens' UpdateJobTemplate (Core.Maybe [Types.HopDestination])
ujtHopDestinations = Lens.field @"hopDestinations"
{-# INLINEABLE ujtHopDestinations #-}
{-# DEPRECATED hopDestinations "Use generic-lens or generic-optics with 'hopDestinations' instead"  #-}

-- | Specify the relative priority for this job. In any given queue, the service begins processing the job with the highest value first. When more than one job has the same priority, the service begins processing the job that you submitted first. If you don't specify a priority, the service uses the default value 0.
--
-- /Note:/ Consider using 'priority' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtPriority :: Lens.Lens' UpdateJobTemplate (Core.Maybe Core.Int)
ujtPriority = Lens.field @"priority"
{-# INLINEABLE ujtPriority #-}
{-# DEPRECATED priority "Use generic-lens or generic-optics with 'priority' instead"  #-}

-- | The new queue for the job template, if you are changing it.
--
-- /Note:/ Consider using 'queue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtQueue :: Lens.Lens' UpdateJobTemplate (Core.Maybe Core.Text)
ujtQueue = Lens.field @"queue"
{-# INLINEABLE ujtQueue #-}
{-# DEPRECATED queue "Use generic-lens or generic-optics with 'queue' instead"  #-}

-- | JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
--
-- /Note:/ Consider using 'settings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtSettings :: Lens.Lens' UpdateJobTemplate (Core.Maybe Types.JobTemplateSettings)
ujtSettings = Lens.field @"settings"
{-# INLINEABLE ujtSettings #-}
{-# DEPRECATED settings "Use generic-lens or generic-optics with 'settings' instead"  #-}

-- | Specify how often MediaConvert sends STATUS_UPDATE events to Amazon CloudWatch Events. Set the interval, in seconds, between status updates. MediaConvert sends an update at this interval from the time the service begins processing your job to the time it completes the transcode or encounters an error.
--
-- /Note:/ Consider using 'statusUpdateInterval' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtStatusUpdateInterval :: Lens.Lens' UpdateJobTemplate (Core.Maybe Types.StatusUpdateInterval)
ujtStatusUpdateInterval = Lens.field @"statusUpdateInterval"
{-# INLINEABLE ujtStatusUpdateInterval #-}
{-# DEPRECATED statusUpdateInterval "Use generic-lens or generic-optics with 'statusUpdateInterval' instead"  #-}

instance Core.ToQuery UpdateJobTemplate where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateJobTemplate where
        toHeaders UpdateJobTemplate{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateJobTemplate where
        toJSON UpdateJobTemplate{..}
          = Core.object
              (Core.catMaybes
                 [("accelerationSettings" Core..=) Core.<$> accelerationSettings,
                  ("category" Core..=) Core.<$> category,
                  ("description" Core..=) Core.<$> description,
                  ("hopDestinations" Core..=) Core.<$> hopDestinations,
                  ("priority" Core..=) Core.<$> priority,
                  ("queue" Core..=) Core.<$> queue,
                  ("settings" Core..=) Core.<$> settings,
                  ("statusUpdateInterval" Core..=) Core.<$> statusUpdateInterval])

instance Core.AWSRequest UpdateJobTemplate where
        type Rs UpdateJobTemplate = UpdateJobTemplateResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath =
                           "/2017-08-29/jobTemplates/" Core.<> Core.toText name,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateJobTemplateResponse' Core.<$>
                   (x Core..:? "jobTemplate") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateJobTemplateResponse' smart constructor.
data UpdateJobTemplateResponse = UpdateJobTemplateResponse'
  { jobTemplate :: Core.Maybe Types.JobTemplate
    -- ^ A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'UpdateJobTemplateResponse' value with any optional fields omitted.
mkUpdateJobTemplateResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateJobTemplateResponse
mkUpdateJobTemplateResponse responseStatus
  = UpdateJobTemplateResponse'{jobTemplate = Core.Nothing,
                               responseStatus}

-- | A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
--
-- /Note:/ Consider using 'jobTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtrrsJobTemplate :: Lens.Lens' UpdateJobTemplateResponse (Core.Maybe Types.JobTemplate)
ujtrrsJobTemplate = Lens.field @"jobTemplate"
{-# INLINEABLE ujtrrsJobTemplate #-}
{-# DEPRECATED jobTemplate "Use generic-lens or generic-optics with 'jobTemplate' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ujtrrsResponseStatus :: Lens.Lens' UpdateJobTemplateResponse Core.Int
ujtrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ujtrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
