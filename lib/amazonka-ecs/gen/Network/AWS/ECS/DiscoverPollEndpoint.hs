{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.DiscoverPollEndpoint
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an endpoint for the Amazon ECS agent to poll for updates.
module Network.AWS.ECS.DiscoverPollEndpoint
    (
    -- * Creating a request
      DiscoverPollEndpoint (..)
    , mkDiscoverPollEndpoint
    -- ** Request lenses
    , dpeCluster
    , dpeContainerInstance

    -- * Destructuring the response
    , DiscoverPollEndpointResponse (..)
    , mkDiscoverPollEndpointResponse
    -- ** Response lenses
    , dperrsEndpoint
    , dperrsTelemetryEndpoint
    , dperrsResponseStatus
    ) where

import qualified Network.AWS.ECS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDiscoverPollEndpoint' smart constructor.
data DiscoverPollEndpoint = DiscoverPollEndpoint'
  { cluster :: Core.Maybe Core.Text
    -- ^ The short name or full Amazon Resource Name (ARN) of the cluster to which the container instance belongs.
  , containerInstance :: Core.Maybe Core.Text
    -- ^ The container instance ID or full ARN of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DiscoverPollEndpoint' value with any optional fields omitted.
mkDiscoverPollEndpoint
    :: DiscoverPollEndpoint
mkDiscoverPollEndpoint
  = DiscoverPollEndpoint'{cluster = Core.Nothing,
                          containerInstance = Core.Nothing}

-- | The short name or full Amazon Resource Name (ARN) of the cluster to which the container instance belongs.
--
-- /Note:/ Consider using 'cluster' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpeCluster :: Lens.Lens' DiscoverPollEndpoint (Core.Maybe Core.Text)
dpeCluster = Lens.field @"cluster"
{-# INLINEABLE dpeCluster #-}
{-# DEPRECATED cluster "Use generic-lens or generic-optics with 'cluster' instead"  #-}

-- | The container instance ID or full ARN of the container instance. The ARN contains the @arn:aws:ecs@ namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the @container-instance@ namespace, and then the container instance ID. For example, @arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID@ .
--
-- /Note:/ Consider using 'containerInstance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpeContainerInstance :: Lens.Lens' DiscoverPollEndpoint (Core.Maybe Core.Text)
dpeContainerInstance = Lens.field @"containerInstance"
{-# INLINEABLE dpeContainerInstance #-}
{-# DEPRECATED containerInstance "Use generic-lens or generic-optics with 'containerInstance' instead"  #-}

instance Core.ToQuery DiscoverPollEndpoint where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DiscoverPollEndpoint where
        toHeaders DiscoverPollEndpoint{..}
          = Core.pure
              ("X-Amz-Target",
               "AmazonEC2ContainerServiceV20141113.DiscoverPollEndpoint")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DiscoverPollEndpoint where
        toJSON DiscoverPollEndpoint{..}
          = Core.object
              (Core.catMaybes
                 [("cluster" Core..=) Core.<$> cluster,
                  ("containerInstance" Core..=) Core.<$> containerInstance])

instance Core.AWSRequest DiscoverPollEndpoint where
        type Rs DiscoverPollEndpoint = DiscoverPollEndpointResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DiscoverPollEndpointResponse' Core.<$>
                   (x Core..:? "endpoint") Core.<*> x Core..:? "telemetryEndpoint"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDiscoverPollEndpointResponse' smart constructor.
data DiscoverPollEndpointResponse = DiscoverPollEndpointResponse'
  { endpoint :: Core.Maybe Core.Text
    -- ^ The endpoint for the Amazon ECS agent to poll.
  , telemetryEndpoint :: Core.Maybe Core.Text
    -- ^ The telemetry endpoint for the Amazon ECS agent.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DiscoverPollEndpointResponse' value with any optional fields omitted.
mkDiscoverPollEndpointResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DiscoverPollEndpointResponse
mkDiscoverPollEndpointResponse responseStatus
  = DiscoverPollEndpointResponse'{endpoint = Core.Nothing,
                                  telemetryEndpoint = Core.Nothing, responseStatus}

-- | The endpoint for the Amazon ECS agent to poll.
--
-- /Note:/ Consider using 'endpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dperrsEndpoint :: Lens.Lens' DiscoverPollEndpointResponse (Core.Maybe Core.Text)
dperrsEndpoint = Lens.field @"endpoint"
{-# INLINEABLE dperrsEndpoint #-}
{-# DEPRECATED endpoint "Use generic-lens or generic-optics with 'endpoint' instead"  #-}

-- | The telemetry endpoint for the Amazon ECS agent.
--
-- /Note:/ Consider using 'telemetryEndpoint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dperrsTelemetryEndpoint :: Lens.Lens' DiscoverPollEndpointResponse (Core.Maybe Core.Text)
dperrsTelemetryEndpoint = Lens.field @"telemetryEndpoint"
{-# INLINEABLE dperrsTelemetryEndpoint #-}
{-# DEPRECATED telemetryEndpoint "Use generic-lens or generic-optics with 'telemetryEndpoint' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dperrsResponseStatus :: Lens.Lens' DiscoverPollEndpointResponse Core.Int
dperrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dperrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
