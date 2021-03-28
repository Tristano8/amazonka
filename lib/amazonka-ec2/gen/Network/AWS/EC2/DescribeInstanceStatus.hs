{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeInstanceStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the specified instances or all of your instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.
--
-- Instance status includes the following components:
--
--     * __Status checks__ - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html Status checks for your instances> and <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html Troubleshooting instances with failed status checks> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
--     * __Scheduled events__ - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html Scheduled events for your instances> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
--     * __Instance state__ - You can manage your instances from the moment you launch them through their termination. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html Instance lifecycle> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeInstanceStatus
    (
    -- * Creating a request
      DescribeInstanceStatus (..)
    , mkDescribeInstanceStatus
    -- ** Request lenses
    , disDryRun
    , disFilters
    , disIncludeAllInstances
    , disInstanceIds
    , disMaxResults
    , disNextToken

    -- * Destructuring the response
    , DescribeInstanceStatusResponse (..)
    , mkDescribeInstanceStatusResponse
    -- ** Response lenses
    , disrrsInstanceStatuses
    , disrrsNextToken
    , disrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeInstanceStatus' smart constructor.
data DescribeInstanceStatus = DescribeInstanceStatus'
  { dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , filters :: Core.Maybe [Types.Filter]
    -- ^ The filters.
--
--
--     * @availability-zone@ - The Availability Zone of the instance.
--
--
--     * @event.code@ - The code for the scheduled event (@instance-reboot@ | @system-reboot@ | @system-maintenance@ | @instance-retirement@ | @instance-stop@ ).
--
--
--     * @event.description@ - A description of the event.
--
--
--     * @event.instance-event-id@ - The ID of the event whose date and time you are modifying.
--
--
--     * @event.not-after@ - The latest end time for the scheduled event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @event.not-before@ - The earliest start time for the scheduled event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @event.not-before-deadline@ - The deadline for starting the event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @instance-state-code@ - The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
--
--
--     * @instance-state-name@ - The state of the instance (@pending@ | @running@ | @shutting-down@ | @terminated@ | @stopping@ | @stopped@ ).
--
--
--     * @instance-status.reachability@ - Filters on instance status where the name is @reachability@ (@passed@ | @failed@ | @initializing@ | @insufficient-data@ ).
--
--
--     * @instance-status.status@ - The status of the instance (@ok@ | @impaired@ | @initializing@ | @insufficient-data@ | @not-applicable@ ).
--
--
--     * @system-status.reachability@ - Filters on system status where the name is @reachability@ (@passed@ | @failed@ | @initializing@ | @insufficient-data@ ).
--
--
--     * @system-status.status@ - The system status of the instance (@ok@ | @impaired@ | @initializing@ | @insufficient-data@ | @not-applicable@ ).
--
--
  , includeAllInstances :: Core.Maybe Core.Bool
    -- ^ When @true@ , includes the health status for all instances. When @false@ , includes the health status for running instances only.
--
-- Default: @false@ 
  , instanceIds :: Core.Maybe [Types.InstanceId]
    -- ^ The instance IDs.
--
-- Default: Describes all your instances.
-- Constraints: Maximum 100 explicitly specified instance IDs.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token to retrieve the next page of results.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeInstanceStatus' value with any optional fields omitted.
mkDescribeInstanceStatus
    :: DescribeInstanceStatus
mkDescribeInstanceStatus
  = DescribeInstanceStatus'{dryRun = Core.Nothing,
                            filters = Core.Nothing, includeAllInstances = Core.Nothing,
                            instanceIds = Core.Nothing, maxResults = Core.Nothing,
                            nextToken = Core.Nothing}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disDryRun :: Lens.Lens' DescribeInstanceStatus (Core.Maybe Core.Bool)
disDryRun = Lens.field @"dryRun"
{-# INLINEABLE disDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The filters.
--
--
--     * @availability-zone@ - The Availability Zone of the instance.
--
--
--     * @event.code@ - The code for the scheduled event (@instance-reboot@ | @system-reboot@ | @system-maintenance@ | @instance-retirement@ | @instance-stop@ ).
--
--
--     * @event.description@ - A description of the event.
--
--
--     * @event.instance-event-id@ - The ID of the event whose date and time you are modifying.
--
--
--     * @event.not-after@ - The latest end time for the scheduled event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @event.not-before@ - The earliest start time for the scheduled event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @event.not-before-deadline@ - The deadline for starting the event (for example, @2014-09-15T17:15:20.000Z@ ).
--
--
--     * @instance-state-code@ - The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
--
--
--     * @instance-state-name@ - The state of the instance (@pending@ | @running@ | @shutting-down@ | @terminated@ | @stopping@ | @stopped@ ).
--
--
--     * @instance-status.reachability@ - Filters on instance status where the name is @reachability@ (@passed@ | @failed@ | @initializing@ | @insufficient-data@ ).
--
--
--     * @instance-status.status@ - The status of the instance (@ok@ | @impaired@ | @initializing@ | @insufficient-data@ | @not-applicable@ ).
--
--
--     * @system-status.reachability@ - Filters on system status where the name is @reachability@ (@passed@ | @failed@ | @initializing@ | @insufficient-data@ ).
--
--
--     * @system-status.status@ - The system status of the instance (@ok@ | @impaired@ | @initializing@ | @insufficient-data@ | @not-applicable@ ).
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disFilters :: Lens.Lens' DescribeInstanceStatus (Core.Maybe [Types.Filter])
disFilters = Lens.field @"filters"
{-# INLINEABLE disFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | When @true@ , includes the health status for all instances. When @false@ , includes the health status for running instances only.
--
-- Default: @false@ 
--
-- /Note:/ Consider using 'includeAllInstances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disIncludeAllInstances :: Lens.Lens' DescribeInstanceStatus (Core.Maybe Core.Bool)
disIncludeAllInstances = Lens.field @"includeAllInstances"
{-# INLINEABLE disIncludeAllInstances #-}
{-# DEPRECATED includeAllInstances "Use generic-lens or generic-optics with 'includeAllInstances' instead"  #-}

-- | The instance IDs.
--
-- Default: Describes all your instances.
-- Constraints: Maximum 100 explicitly specified instance IDs.
--
-- /Note:/ Consider using 'instanceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disInstanceIds :: Lens.Lens' DescribeInstanceStatus (Core.Maybe [Types.InstanceId])
disInstanceIds = Lens.field @"instanceIds"
{-# INLINEABLE disInstanceIds #-}
{-# DEPRECATED instanceIds "Use generic-lens or generic-optics with 'instanceIds' instead"  #-}

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disMaxResults :: Lens.Lens' DescribeInstanceStatus (Core.Maybe Core.Int)
disMaxResults = Lens.field @"maxResults"
{-# INLINEABLE disMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token to retrieve the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disNextToken :: Lens.Lens' DescribeInstanceStatus (Core.Maybe Core.Text)
disNextToken = Lens.field @"nextToken"
{-# INLINEABLE disNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeInstanceStatus where
        toQuery DescribeInstanceStatus{..}
          = Core.toQueryPair "Action" ("DescribeInstanceStatus" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Filter") filters
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "IncludeAllInstances")
                includeAllInstances
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "InstanceId") instanceIds
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders DescribeInstanceStatus where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeInstanceStatus where
        type Rs DescribeInstanceStatus = DescribeInstanceStatusResponse
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
          = Response.receiveXML
              (\ s h x ->
                 DescribeInstanceStatusResponse' Core.<$>
                   (x Core..@? "instanceStatusSet" Core..<@> Core.parseXMLList "item")
                     Core.<*> x Core..@? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeInstanceStatus where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"instanceStatuses" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeInstanceStatusResponse' smart constructor.
data DescribeInstanceStatusResponse = DescribeInstanceStatusResponse'
  { instanceStatuses :: Core.Maybe [Types.InstanceStatus]
    -- ^ Information about the status of the instances.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeInstanceStatusResponse' value with any optional fields omitted.
mkDescribeInstanceStatusResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeInstanceStatusResponse
mkDescribeInstanceStatusResponse responseStatus
  = DescribeInstanceStatusResponse'{instanceStatuses = Core.Nothing,
                                    nextToken = Core.Nothing, responseStatus}

-- | Information about the status of the instances.
--
-- /Note:/ Consider using 'instanceStatuses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsInstanceStatuses :: Lens.Lens' DescribeInstanceStatusResponse (Core.Maybe [Types.InstanceStatus])
disrrsInstanceStatuses = Lens.field @"instanceStatuses"
{-# INLINEABLE disrrsInstanceStatuses #-}
{-# DEPRECATED instanceStatuses "Use generic-lens or generic-optics with 'instanceStatuses' instead"  #-}

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsNextToken :: Lens.Lens' DescribeInstanceStatusResponse (Core.Maybe Core.Text)
disrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE disrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsResponseStatus :: Lens.Lens' DescribeInstanceStatusResponse Core.Int
disrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE disrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
