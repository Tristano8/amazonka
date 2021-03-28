{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.ListAggregateDiscoveredResources
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.
--
-- For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type @AWS::EC2::Instance@ then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.
--
-- This operation returns paginated results.
module Network.AWS.Config.ListAggregateDiscoveredResources
    (
    -- * Creating a request
      ListAggregateDiscoveredResources (..)
    , mkListAggregateDiscoveredResources
    -- ** Request lenses
    , ladrConfigurationAggregatorName
    , ladrResourceType
    , ladrFilters
    , ladrLimit
    , ladrNextToken

    -- * Destructuring the response
    , ListAggregateDiscoveredResourcesResponse (..)
    , mkListAggregateDiscoveredResourcesResponse
    -- ** Response lenses
    , ladrrrsNextToken
    , ladrrrsResourceIdentifiers
    , ladrrrsResponseStatus
    ) where

import qualified Network.AWS.Config.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListAggregateDiscoveredResources' smart constructor.
data ListAggregateDiscoveredResources = ListAggregateDiscoveredResources'
  { configurationAggregatorName :: Types.ConfigurationAggregatorName
    -- ^ The name of the configuration aggregator. 
  , resourceType :: Types.ResourceType
    -- ^ The type of resources that you want AWS Config to list in the response.
  , filters :: Core.Maybe Types.ResourceFilters
    -- ^ Filters the results based on the @ResourceFilters@ object.
  , limit :: Core.Maybe Core.Natural
    -- ^ The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAggregateDiscoveredResources' value with any optional fields omitted.
mkListAggregateDiscoveredResources
    :: Types.ConfigurationAggregatorName -- ^ 'configurationAggregatorName'
    -> Types.ResourceType -- ^ 'resourceType'
    -> ListAggregateDiscoveredResources
mkListAggregateDiscoveredResources configurationAggregatorName
  resourceType
  = ListAggregateDiscoveredResources'{configurationAggregatorName,
                                      resourceType, filters = Core.Nothing, limit = Core.Nothing,
                                      nextToken = Core.Nothing}

-- | The name of the configuration aggregator. 
--
-- /Note:/ Consider using 'configurationAggregatorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrConfigurationAggregatorName :: Lens.Lens' ListAggregateDiscoveredResources Types.ConfigurationAggregatorName
ladrConfigurationAggregatorName = Lens.field @"configurationAggregatorName"
{-# INLINEABLE ladrConfigurationAggregatorName #-}
{-# DEPRECATED configurationAggregatorName "Use generic-lens or generic-optics with 'configurationAggregatorName' instead"  #-}

-- | The type of resources that you want AWS Config to list in the response.
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrResourceType :: Lens.Lens' ListAggregateDiscoveredResources Types.ResourceType
ladrResourceType = Lens.field @"resourceType"
{-# INLINEABLE ladrResourceType #-}
{-# DEPRECATED resourceType "Use generic-lens or generic-optics with 'resourceType' instead"  #-}

-- | Filters the results based on the @ResourceFilters@ object.
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrFilters :: Lens.Lens' ListAggregateDiscoveredResources (Core.Maybe Types.ResourceFilters)
ladrFilters = Lens.field @"filters"
{-# INLINEABLE ladrFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrLimit :: Lens.Lens' ListAggregateDiscoveredResources (Core.Maybe Core.Natural)
ladrLimit = Lens.field @"limit"
{-# INLINEABLE ladrLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrNextToken :: Lens.Lens' ListAggregateDiscoveredResources (Core.Maybe Types.NextToken)
ladrNextToken = Lens.field @"nextToken"
{-# INLINEABLE ladrNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListAggregateDiscoveredResources where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListAggregateDiscoveredResources where
        toHeaders ListAggregateDiscoveredResources{..}
          = Core.pure
              ("X-Amz-Target",
               "StarlingDoveService.ListAggregateDiscoveredResources")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListAggregateDiscoveredResources where
        toJSON ListAggregateDiscoveredResources{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just
                    ("ConfigurationAggregatorName" Core..=
                       configurationAggregatorName),
                  Core.Just ("ResourceType" Core..= resourceType),
                  ("Filters" Core..=) Core.<$> filters,
                  ("Limit" Core..=) Core.<$> limit,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest ListAggregateDiscoveredResources where
        type Rs ListAggregateDiscoveredResources =
             ListAggregateDiscoveredResourcesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListAggregateDiscoveredResourcesResponse' Core.<$>
                   (x Core..:? "NextToken") Core.<*> x Core..:? "ResourceIdentifiers"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListAggregateDiscoveredResources where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"resourceIdentifiers" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListAggregateDiscoveredResourcesResponse' smart constructor.
data ListAggregateDiscoveredResourcesResponse = ListAggregateDiscoveredResourcesResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
  , resourceIdentifiers :: Core.Maybe [Types.AggregateResourceIdentifier]
    -- ^ Returns a list of @ResourceIdentifiers@ objects.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListAggregateDiscoveredResourcesResponse' value with any optional fields omitted.
mkListAggregateDiscoveredResourcesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListAggregateDiscoveredResourcesResponse
mkListAggregateDiscoveredResourcesResponse responseStatus
  = ListAggregateDiscoveredResourcesResponse'{nextToken =
                                                Core.Nothing,
                                              resourceIdentifiers = Core.Nothing, responseStatus}

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrrrsNextToken :: Lens.Lens' ListAggregateDiscoveredResourcesResponse (Core.Maybe Types.NextToken)
ladrrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ladrrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Returns a list of @ResourceIdentifiers@ objects.
--
-- /Note:/ Consider using 'resourceIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrrrsResourceIdentifiers :: Lens.Lens' ListAggregateDiscoveredResourcesResponse (Core.Maybe [Types.AggregateResourceIdentifier])
ladrrrsResourceIdentifiers = Lens.field @"resourceIdentifiers"
{-# INLINEABLE ladrrrsResourceIdentifiers #-}
{-# DEPRECATED resourceIdentifiers "Use generic-lens or generic-optics with 'resourceIdentifiers' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ladrrrsResponseStatus :: Lens.Lens' ListAggregateDiscoveredResourcesResponse Core.Int
ladrrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ladrrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
