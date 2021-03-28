{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.DescribeDBClusterEndpoints
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about endpoints for an Amazon Aurora DB cluster.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterEndpoints
    (
    -- * Creating a request
      DescribeDBClusterEndpoints (..)
    , mkDescribeDBClusterEndpoints
    -- ** Request lenses
    , ddbcesDBClusterEndpointIdentifier
    , ddbcesDBClusterIdentifier
    , ddbcesFilters
    , ddbcesMarker
    , ddbcesMaxRecords

    -- * Destructuring the response
    , DescribeDBClusterEndpointsResponse (..)
    , mkDescribeDBClusterEndpointsResponse
    -- ** Response lenses
    , ddbcerrsDBClusterEndpoints
    , ddbcerrsMarker
    , ddbcerrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.RDS.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeDBClusterEndpoints' smart constructor.
data DescribeDBClusterEndpoints = DescribeDBClusterEndpoints'
  { dBClusterEndpointIdentifier :: Core.Maybe Core.Text
    -- ^ The identifier of the endpoint to describe. This parameter is stored as a lowercase string.
  , dBClusterIdentifier :: Core.Maybe Core.Text
    -- ^ The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
  , filters :: Core.Maybe [Types.Filter]
    -- ^ A set of name-value pairs that define which endpoints to include in the output. The filters are specified as name-value pairs, in the format @Name=/endpoint_type/ ,Values=/endpoint_type1/ ,/endpoint_type2/ ,...@ . @Name@ can be one of: @db-cluster-endpoint-type@ , @db-cluster-endpoint-custom-type@ , @db-cluster-endpoint-id@ , @db-cluster-endpoint-status@ . @Values@ for the @db-cluster-endpoint-type@ filter can be one or more of: @reader@ , @writer@ , @custom@ . @Values@ for the @db-cluster-endpoint-custom-type@ filter can be one or more of: @reader@ , @any@ . @Values@ for the @db-cluster-endpoint-status@ filter can be one or more of: @available@ , @creating@ , @deleting@ , @inactive@ , @modifying@ . 
  , marker :: Core.Maybe Core.Text
    -- ^ An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
  , maxRecords :: Core.Maybe Core.Int
    -- ^ The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results. 
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDBClusterEndpoints' value with any optional fields omitted.
mkDescribeDBClusterEndpoints
    :: DescribeDBClusterEndpoints
mkDescribeDBClusterEndpoints
  = DescribeDBClusterEndpoints'{dBClusterEndpointIdentifier =
                                  Core.Nothing,
                                dBClusterIdentifier = Core.Nothing, filters = Core.Nothing,
                                marker = Core.Nothing, maxRecords = Core.Nothing}

-- | The identifier of the endpoint to describe. This parameter is stored as a lowercase string.
--
-- /Note:/ Consider using 'dBClusterEndpointIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcesDBClusterEndpointIdentifier :: Lens.Lens' DescribeDBClusterEndpoints (Core.Maybe Core.Text)
ddbcesDBClusterEndpointIdentifier = Lens.field @"dBClusterEndpointIdentifier"
{-# INLINEABLE ddbcesDBClusterEndpointIdentifier #-}
{-# DEPRECATED dBClusterEndpointIdentifier "Use generic-lens or generic-optics with 'dBClusterEndpointIdentifier' instead"  #-}

-- | The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.
--
-- /Note:/ Consider using 'dBClusterIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcesDBClusterIdentifier :: Lens.Lens' DescribeDBClusterEndpoints (Core.Maybe Core.Text)
ddbcesDBClusterIdentifier = Lens.field @"dBClusterIdentifier"
{-# INLINEABLE ddbcesDBClusterIdentifier #-}
{-# DEPRECATED dBClusterIdentifier "Use generic-lens or generic-optics with 'dBClusterIdentifier' instead"  #-}

-- | A set of name-value pairs that define which endpoints to include in the output. The filters are specified as name-value pairs, in the format @Name=/endpoint_type/ ,Values=/endpoint_type1/ ,/endpoint_type2/ ,...@ . @Name@ can be one of: @db-cluster-endpoint-type@ , @db-cluster-endpoint-custom-type@ , @db-cluster-endpoint-id@ , @db-cluster-endpoint-status@ . @Values@ for the @db-cluster-endpoint-type@ filter can be one or more of: @reader@ , @writer@ , @custom@ . @Values@ for the @db-cluster-endpoint-custom-type@ filter can be one or more of: @reader@ , @any@ . @Values@ for the @db-cluster-endpoint-status@ filter can be one or more of: @available@ , @creating@ , @deleting@ , @inactive@ , @modifying@ . 
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcesFilters :: Lens.Lens' DescribeDBClusterEndpoints (Core.Maybe [Types.Filter])
ddbcesFilters = Lens.field @"filters"
{-# INLINEABLE ddbcesFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcesMarker :: Lens.Lens' DescribeDBClusterEndpoints (Core.Maybe Core.Text)
ddbcesMarker = Lens.field @"marker"
{-# INLINEABLE ddbcesMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so you can retrieve the remaining results. 
--
-- Default: 100
-- Constraints: Minimum 20, maximum 100.
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcesMaxRecords :: Lens.Lens' DescribeDBClusterEndpoints (Core.Maybe Core.Int)
ddbcesMaxRecords = Lens.field @"maxRecords"
{-# INLINEABLE ddbcesMaxRecords #-}
{-# DEPRECATED maxRecords "Use generic-lens or generic-optics with 'maxRecords' instead"  #-}

instance Core.ToQuery DescribeDBClusterEndpoints where
        toQuery DescribeDBClusterEndpoints{..}
          = Core.toQueryPair "Action"
              ("DescribeDBClusterEndpoints" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2014-10-31" :: Core.Text)
              Core.<>
              Core.maybe Core.mempty
                (Core.toQueryPair "DBClusterEndpointIdentifier")
                dBClusterEndpointIdentifier
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "DBClusterIdentifier")
                dBClusterIdentifier
              Core.<>
              Core.toQueryPair "Filters"
                (Core.maybe Core.mempty (Core.toQueryList "Filter") filters)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Marker") marker
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxRecords") maxRecords

instance Core.ToHeaders DescribeDBClusterEndpoints where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeDBClusterEndpoints where
        type Rs DescribeDBClusterEndpoints =
             DescribeDBClusterEndpointsResponse
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
          = Response.receiveXMLWrapper "DescribeDBClusterEndpointsResult"
              (\ s h x ->
                 DescribeDBClusterEndpointsResponse' Core.<$>
                   (x Core..@? "DBClusterEndpoints" Core..<@>
                      Core.parseXMLList "DBClusterEndpointList")
                     Core.<*> x Core..@? "Marker"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeDBClusterEndpoints where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"marker") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"dBClusterEndpoints" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"marker")

-- | /See:/ 'mkDescribeDBClusterEndpointsResponse' smart constructor.
data DescribeDBClusterEndpointsResponse = DescribeDBClusterEndpointsResponse'
  { dBClusterEndpoints :: Core.Maybe [Types.DBClusterEndpoint]
    -- ^ Contains the details of the endpoints associated with the cluster and matching any filter conditions.
  , marker :: Core.Maybe Core.Text
    -- ^ An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDBClusterEndpointsResponse' value with any optional fields omitted.
mkDescribeDBClusterEndpointsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeDBClusterEndpointsResponse
mkDescribeDBClusterEndpointsResponse responseStatus
  = DescribeDBClusterEndpointsResponse'{dBClusterEndpoints =
                                          Core.Nothing,
                                        marker = Core.Nothing, responseStatus}

-- | Contains the details of the endpoints associated with the cluster and matching any filter conditions.
--
-- /Note:/ Consider using 'dBClusterEndpoints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcerrsDBClusterEndpoints :: Lens.Lens' DescribeDBClusterEndpointsResponse (Core.Maybe [Types.DBClusterEndpoint])
ddbcerrsDBClusterEndpoints = Lens.field @"dBClusterEndpoints"
{-# INLINEABLE ddbcerrsDBClusterEndpoints #-}
{-# DEPRECATED dBClusterEndpoints "Use generic-lens or generic-optics with 'dBClusterEndpoints' instead"  #-}

-- | An optional pagination token provided by a previous @DescribeDBClusterEndpoints@ request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ . 
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcerrsMarker :: Lens.Lens' DescribeDBClusterEndpointsResponse (Core.Maybe Core.Text)
ddbcerrsMarker = Lens.field @"marker"
{-# INLINEABLE ddbcerrsMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddbcerrsResponseStatus :: Lens.Lens' DescribeDBClusterEndpointsResponse Core.Int
ddbcerrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ddbcerrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
