{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.StopDataCollectionByAgentIds
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Instructs the specified agents or connectors to stop collecting data.
module Network.AWS.Discovery.StopDataCollectionByAgentIds
    (
    -- * Creating a request
      StopDataCollectionByAgentIds (..)
    , mkStopDataCollectionByAgentIds
    -- ** Request lenses
    , sdcbaiAgentIds

    -- * Destructuring the response
    , StopDataCollectionByAgentIdsResponse (..)
    , mkStopDataCollectionByAgentIdsResponse
    -- ** Response lenses
    , sdcbairrsAgentsConfigurationStatus
    , sdcbairrsResponseStatus
    ) where

import qualified Network.AWS.Discovery.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopDataCollectionByAgentIds' smart constructor.
newtype StopDataCollectionByAgentIds = StopDataCollectionByAgentIds'
  { agentIds :: [Types.AgentId]
    -- ^ The IDs of the agents or connectors from which to stop collecting data.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopDataCollectionByAgentIds' value with any optional fields omitted.
mkStopDataCollectionByAgentIds
    :: StopDataCollectionByAgentIds
mkStopDataCollectionByAgentIds
  = StopDataCollectionByAgentIds'{agentIds = Core.mempty}

-- | The IDs of the agents or connectors from which to stop collecting data.
--
-- /Note:/ Consider using 'agentIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdcbaiAgentIds :: Lens.Lens' StopDataCollectionByAgentIds [Types.AgentId]
sdcbaiAgentIds = Lens.field @"agentIds"
{-# INLINEABLE sdcbaiAgentIds #-}
{-# DEPRECATED agentIds "Use generic-lens or generic-optics with 'agentIds' instead"  #-}

instance Core.ToQuery StopDataCollectionByAgentIds where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopDataCollectionByAgentIds where
        toHeaders StopDataCollectionByAgentIds{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSPoseidonService_V2015_11_01.StopDataCollectionByAgentIds")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopDataCollectionByAgentIds where
        toJSON StopDataCollectionByAgentIds{..}
          = Core.object
              (Core.catMaybes [Core.Just ("agentIds" Core..= agentIds)])

instance Core.AWSRequest StopDataCollectionByAgentIds where
        type Rs StopDataCollectionByAgentIds =
             StopDataCollectionByAgentIdsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 StopDataCollectionByAgentIdsResponse' Core.<$>
                   (x Core..:? "agentsConfigurationStatus") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStopDataCollectionByAgentIdsResponse' smart constructor.
data StopDataCollectionByAgentIdsResponse = StopDataCollectionByAgentIdsResponse'
  { agentsConfigurationStatus :: Core.Maybe [Types.AgentConfigurationStatus]
    -- ^ Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StopDataCollectionByAgentIdsResponse' value with any optional fields omitted.
mkStopDataCollectionByAgentIdsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StopDataCollectionByAgentIdsResponse
mkStopDataCollectionByAgentIdsResponse responseStatus
  = StopDataCollectionByAgentIdsResponse'{agentsConfigurationStatus =
                                            Core.Nothing,
                                          responseStatus}

-- | Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.
--
-- /Note:/ Consider using 'agentsConfigurationStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdcbairrsAgentsConfigurationStatus :: Lens.Lens' StopDataCollectionByAgentIdsResponse (Core.Maybe [Types.AgentConfigurationStatus])
sdcbairrsAgentsConfigurationStatus = Lens.field @"agentsConfigurationStatus"
{-# INLINEABLE sdcbairrsAgentsConfigurationStatus #-}
{-# DEPRECATED agentsConfigurationStatus "Use generic-lens or generic-optics with 'agentsConfigurationStatus' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdcbairrsResponseStatus :: Lens.Lens' StopDataCollectionByAgentIdsResponse Core.Int
sdcbairrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE sdcbairrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
