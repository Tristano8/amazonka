{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.StopMonitoringSchedule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a previously started monitoring schedule.
module Network.AWS.SageMaker.StopMonitoringSchedule
    (
    -- * Creating a request
      StopMonitoringSchedule (..)
    , mkStopMonitoringSchedule
    -- ** Request lenses
    , smsMonitoringScheduleName

    -- * Destructuring the response
    , StopMonitoringScheduleResponse (..)
    , mkStopMonitoringScheduleResponse
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SageMaker.Types as Types

-- | /See:/ 'mkStopMonitoringSchedule' smart constructor.
newtype StopMonitoringSchedule = StopMonitoringSchedule'
  { monitoringScheduleName :: Types.MonitoringScheduleName
    -- ^ The name of the schedule to stop.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopMonitoringSchedule' value with any optional fields omitted.
mkStopMonitoringSchedule
    :: Types.MonitoringScheduleName -- ^ 'monitoringScheduleName'
    -> StopMonitoringSchedule
mkStopMonitoringSchedule monitoringScheduleName
  = StopMonitoringSchedule'{monitoringScheduleName}

-- | The name of the schedule to stop.
--
-- /Note:/ Consider using 'monitoringScheduleName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
smsMonitoringScheduleName :: Lens.Lens' StopMonitoringSchedule Types.MonitoringScheduleName
smsMonitoringScheduleName = Lens.field @"monitoringScheduleName"
{-# INLINEABLE smsMonitoringScheduleName #-}
{-# DEPRECATED monitoringScheduleName "Use generic-lens or generic-optics with 'monitoringScheduleName' instead"  #-}

instance Core.ToQuery StopMonitoringSchedule where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopMonitoringSchedule where
        toHeaders StopMonitoringSchedule{..}
          = Core.pure ("X-Amz-Target", "SageMaker.StopMonitoringSchedule")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopMonitoringSchedule where
        toJSON StopMonitoringSchedule{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("MonitoringScheduleName" Core..= monitoringScheduleName)])

instance Core.AWSRequest StopMonitoringSchedule where
        type Rs StopMonitoringSchedule = StopMonitoringScheduleResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveNull StopMonitoringScheduleResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStopMonitoringScheduleResponse' smart constructor.
data StopMonitoringScheduleResponse = StopMonitoringScheduleResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopMonitoringScheduleResponse' value with any optional fields omitted.
mkStopMonitoringScheduleResponse
    :: StopMonitoringScheduleResponse
mkStopMonitoringScheduleResponse = StopMonitoringScheduleResponse'
