{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.DescribeConfigurations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves attributes for a list of configuration item IDs.
module Network.AWS.Discovery.DescribeConfigurations
    (
    -- * Creating a request
      DescribeConfigurations (..)
    , mkDescribeConfigurations
    -- ** Request lenses
    , dcConfigurationIds

    -- * Destructuring the response
    , DescribeConfigurationsResponse (..)
    , mkDescribeConfigurationsResponse
    -- ** Response lenses
    , dcrrsConfigurations
    , dcrrsResponseStatus
    ) where

import qualified Network.AWS.Discovery.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeConfigurations' smart constructor.
newtype DescribeConfigurations = DescribeConfigurations'
  { configurationIds :: [Types.ConfigurationId]
    -- ^ One or more configuration IDs.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeConfigurations' value with any optional fields omitted.
mkDescribeConfigurations
    :: DescribeConfigurations
mkDescribeConfigurations
  = DescribeConfigurations'{configurationIds = Core.mempty}

-- | One or more configuration IDs.
--
-- /Note:/ Consider using 'configurationIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcConfigurationIds :: Lens.Lens' DescribeConfigurations [Types.ConfigurationId]
dcConfigurationIds = Lens.field @"configurationIds"
{-# INLINEABLE dcConfigurationIds #-}
{-# DEPRECATED configurationIds "Use generic-lens or generic-optics with 'configurationIds' instead"  #-}

instance Core.ToQuery DescribeConfigurations where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeConfigurations where
        toHeaders DescribeConfigurations{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSPoseidonService_V2015_11_01.DescribeConfigurations")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeConfigurations where
        toJSON DescribeConfigurations{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("configurationIds" Core..= configurationIds)])

instance Core.AWSRequest DescribeConfigurations where
        type Rs DescribeConfigurations = DescribeConfigurationsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeConfigurationsResponse' Core.<$>
                   (x Core..:? "configurations") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeConfigurationsResponse' smart constructor.
data DescribeConfigurationsResponse = DescribeConfigurationsResponse'
  { configurations :: Core.Maybe [Core.HashMap Core.Text Core.Text]
    -- ^ A key in the response map. The value is an array of data.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeConfigurationsResponse' value with any optional fields omitted.
mkDescribeConfigurationsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeConfigurationsResponse
mkDescribeConfigurationsResponse responseStatus
  = DescribeConfigurationsResponse'{configurations = Core.Nothing,
                                    responseStatus}

-- | A key in the response map. The value is an array of data.
--
-- /Note:/ Consider using 'configurations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcrrsConfigurations :: Lens.Lens' DescribeConfigurationsResponse (Core.Maybe [Core.HashMap Core.Text Core.Text])
dcrrsConfigurations = Lens.field @"configurations"
{-# INLINEABLE dcrrsConfigurations #-}
{-# DEPRECATED configurations "Use generic-lens or generic-optics with 'configurations' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dcrrsResponseStatus :: Lens.Lens' DescribeConfigurationsResponse Core.Int
dcrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dcrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
