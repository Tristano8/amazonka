{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.EnableEnhancedMonitoring
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables enhanced Kinesis data stream monitoring for shard-level metrics.
module Network.AWS.Kinesis.EnableEnhancedMonitoring
    (
    -- * Creating a request
      EnableEnhancedMonitoring (..)
    , mkEnableEnhancedMonitoring
    -- ** Request lenses
    , eemStreamName
    , eemShardLevelMetrics

     -- * Destructuring the response
    , Types.EnhancedMonitoringOutput (..)
    , Types.mkEnhancedMonitoringOutput
    -- ** Response lenses
    , Types.emoCurrentShardLevelMetrics
    , Types.emoDesiredShardLevelMetrics
    , Types.emoStreamName
    ) where

import qualified Network.AWS.Kinesis.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for 'EnableEnhancedMonitoring' .
--
-- /See:/ 'mkEnableEnhancedMonitoring' smart constructor.
data EnableEnhancedMonitoring = EnableEnhancedMonitoring'
  { streamName :: Types.StreamName
    -- ^ The name of the stream for which to enable enhanced monitoring.
  , shardLevelMetrics :: [Types.MetricsName]
    -- ^ List of shard-level metrics to enable.
--
-- The following are the valid shard-level metrics. The value "@ALL@ " enables every metric.
--
--     * @IncomingBytes@ 
--
--
--     * @IncomingRecords@ 
--
--
--     * @OutgoingBytes@ 
--
--
--     * @OutgoingRecords@ 
--
--
--     * @WriteProvisionedThroughputExceeded@ 
--
--
--     * @ReadProvisionedThroughputExceeded@ 
--
--
--     * @IteratorAgeMilliseconds@ 
--
--
--     * @ALL@ 
--
--
-- For more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch> in the /Amazon Kinesis Data Streams Developer Guide/ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EnableEnhancedMonitoring' value with any optional fields omitted.
mkEnableEnhancedMonitoring
    :: Types.StreamName -- ^ 'streamName'
    -> EnableEnhancedMonitoring
mkEnableEnhancedMonitoring streamName
  = EnableEnhancedMonitoring'{streamName,
                              shardLevelMetrics = Core.mempty}

-- | The name of the stream for which to enable enhanced monitoring.
--
-- /Note:/ Consider using 'streamName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eemStreamName :: Lens.Lens' EnableEnhancedMonitoring Types.StreamName
eemStreamName = Lens.field @"streamName"
{-# INLINEABLE eemStreamName #-}
{-# DEPRECATED streamName "Use generic-lens or generic-optics with 'streamName' instead"  #-}

-- | List of shard-level metrics to enable.
--
-- The following are the valid shard-level metrics. The value "@ALL@ " enables every metric.
--
--     * @IncomingBytes@ 
--
--
--     * @IncomingRecords@ 
--
--
--     * @OutgoingBytes@ 
--
--
--     * @OutgoingRecords@ 
--
--
--     * @WriteProvisionedThroughputExceeded@ 
--
--
--     * @ReadProvisionedThroughputExceeded@ 
--
--
--     * @IteratorAgeMilliseconds@ 
--
--
--     * @ALL@ 
--
--
-- For more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch> in the /Amazon Kinesis Data Streams Developer Guide/ .
--
-- /Note:/ Consider using 'shardLevelMetrics' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eemShardLevelMetrics :: Lens.Lens' EnableEnhancedMonitoring [Types.MetricsName]
eemShardLevelMetrics = Lens.field @"shardLevelMetrics"
{-# INLINEABLE eemShardLevelMetrics #-}
{-# DEPRECATED shardLevelMetrics "Use generic-lens or generic-optics with 'shardLevelMetrics' instead"  #-}

instance Core.ToQuery EnableEnhancedMonitoring where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders EnableEnhancedMonitoring where
        toHeaders EnableEnhancedMonitoring{..}
          = Core.pure
              ("X-Amz-Target", "Kinesis_20131202.EnableEnhancedMonitoring")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON EnableEnhancedMonitoring where
        toJSON EnableEnhancedMonitoring{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("StreamName" Core..= streamName),
                  Core.Just ("ShardLevelMetrics" Core..= shardLevelMetrics)])

instance Core.AWSRequest EnableEnhancedMonitoring where
        type Rs EnableEnhancedMonitoring = Types.EnhancedMonitoringOutput
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON (\ s h x -> Core.eitherParseJSON x)
        
        {-# INLINE parseResponse #-}
