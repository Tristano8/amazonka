{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutConfigurationAggregator
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.
module Network.AWS.Config.PutConfigurationAggregator
    (
    -- * Creating a request
      PutConfigurationAggregator (..)
    , mkPutConfigurationAggregator
    -- ** Request lenses
    , pcaConfigurationAggregatorName
    , pcaAccountAggregationSources
    , pcaOrganizationAggregationSource
    , pcaTags

    -- * Destructuring the response
    , PutConfigurationAggregatorResponse (..)
    , mkPutConfigurationAggregatorResponse
    -- ** Response lenses
    , pcarrsConfigurationAggregator
    , pcarrsResponseStatus
    ) where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutConfigurationAggregator' smart constructor.
data PutConfigurationAggregator = PutConfigurationAggregator'
  { configurationAggregatorName :: Types.ConfigurationAggregatorName
    -- ^ The name of the configuration aggregator.
  , accountAggregationSources :: Core.Maybe [Types.AccountAggregationSource]
    -- ^ A list of AccountAggregationSource object. 
  , organizationAggregationSource :: Core.Maybe Types.OrganizationAggregationSource
    -- ^ An OrganizationAggregationSource object.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ An array of tag object.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutConfigurationAggregator' value with any optional fields omitted.
mkPutConfigurationAggregator
    :: Types.ConfigurationAggregatorName -- ^ 'configurationAggregatorName'
    -> PutConfigurationAggregator
mkPutConfigurationAggregator configurationAggregatorName
  = PutConfigurationAggregator'{configurationAggregatorName,
                                accountAggregationSources = Core.Nothing,
                                organizationAggregationSource = Core.Nothing, tags = Core.Nothing}

-- | The name of the configuration aggregator.
--
-- /Note:/ Consider using 'configurationAggregatorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcaConfigurationAggregatorName :: Lens.Lens' PutConfigurationAggregator Types.ConfigurationAggregatorName
pcaConfigurationAggregatorName = Lens.field @"configurationAggregatorName"
{-# INLINEABLE pcaConfigurationAggregatorName #-}
{-# DEPRECATED configurationAggregatorName "Use generic-lens or generic-optics with 'configurationAggregatorName' instead"  #-}

-- | A list of AccountAggregationSource object. 
--
-- /Note:/ Consider using 'accountAggregationSources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcaAccountAggregationSources :: Lens.Lens' PutConfigurationAggregator (Core.Maybe [Types.AccountAggregationSource])
pcaAccountAggregationSources = Lens.field @"accountAggregationSources"
{-# INLINEABLE pcaAccountAggregationSources #-}
{-# DEPRECATED accountAggregationSources "Use generic-lens or generic-optics with 'accountAggregationSources' instead"  #-}

-- | An OrganizationAggregationSource object.
--
-- /Note:/ Consider using 'organizationAggregationSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcaOrganizationAggregationSource :: Lens.Lens' PutConfigurationAggregator (Core.Maybe Types.OrganizationAggregationSource)
pcaOrganizationAggregationSource = Lens.field @"organizationAggregationSource"
{-# INLINEABLE pcaOrganizationAggregationSource #-}
{-# DEPRECATED organizationAggregationSource "Use generic-lens or generic-optics with 'organizationAggregationSource' instead"  #-}

-- | An array of tag object.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcaTags :: Lens.Lens' PutConfigurationAggregator (Core.Maybe [Types.Tag])
pcaTags = Lens.field @"tags"
{-# INLINEABLE pcaTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.ToQuery PutConfigurationAggregator where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PutConfigurationAggregator where
        toHeaders PutConfigurationAggregator{..}
          = Core.pure
              ("X-Amz-Target", "StarlingDoveService.PutConfigurationAggregator")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PutConfigurationAggregator where
        toJSON PutConfigurationAggregator{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("ConfigurationAggregatorName" Core..=
                       configurationAggregatorName),
                  ("AccountAggregationSources" Core..=) Core.<$>
                    accountAggregationSources,
                  ("OrganizationAggregationSource" Core..=) Core.<$>
                    organizationAggregationSource,
                  ("Tags" Core..=) Core.<$> tags])

instance Core.AWSRequest PutConfigurationAggregator where
        type Rs PutConfigurationAggregator =
             PutConfigurationAggregatorResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 PutConfigurationAggregatorResponse' Core.<$>
                   (x Core..:? "ConfigurationAggregator") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutConfigurationAggregatorResponse' smart constructor.
data PutConfigurationAggregatorResponse = PutConfigurationAggregatorResponse'
  { configurationAggregator :: Core.Maybe Types.ConfigurationAggregator
    -- ^ Returns a ConfigurationAggregator object.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'PutConfigurationAggregatorResponse' value with any optional fields omitted.
mkPutConfigurationAggregatorResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PutConfigurationAggregatorResponse
mkPutConfigurationAggregatorResponse responseStatus
  = PutConfigurationAggregatorResponse'{configurationAggregator =
                                          Core.Nothing,
                                        responseStatus}

-- | Returns a ConfigurationAggregator object.
--
-- /Note:/ Consider using 'configurationAggregator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcarrsConfigurationAggregator :: Lens.Lens' PutConfigurationAggregatorResponse (Core.Maybe Types.ConfigurationAggregator)
pcarrsConfigurationAggregator = Lens.field @"configurationAggregator"
{-# INLINEABLE pcarrsConfigurationAggregator #-}
{-# DEPRECATED configurationAggregator "Use generic-lens or generic-optics with 'configurationAggregator' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pcarrsResponseStatus :: Lens.Lens' PutConfigurationAggregatorResponse Core.Int
pcarrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE pcarrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
