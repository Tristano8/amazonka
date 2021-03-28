{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.DescribeDataSources
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DataSource@ that match the search criteria in the request.
--
-- This operation returns paginated results.
module Network.AWS.MachineLearning.DescribeDataSources
    (
    -- * Creating a request
      DescribeDataSources (..)
    , mkDescribeDataSources
    -- ** Request lenses
    , ddsEQ
    , ddsFilterVariable
    , ddsGE
    , ddsGT
    , ddsLE
    , ddsLT
    , ddsLimit
    , ddsNE
    , ddsNextToken
    , ddsPrefix
    , ddsSortOrder

    -- * Destructuring the response
    , DescribeDataSourcesResponse (..)
    , mkDescribeDataSourcesResponse
    -- ** Response lenses
    , ddsrfrsNextToken
    , ddsrfrsResults
    , ddsrfrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MachineLearning.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeDataSources' smart constructor.
data DescribeDataSources = DescribeDataSources'
  { eq :: Core.Maybe Types.EQ
    -- ^ The equal to operator. The @DataSource@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
  , filterVariable :: Core.Maybe Types.DataSourceFilterVariable
    -- ^ Use one of the following variables to filter a list of @DataSource@ :
--
--
--     * @CreatedAt@ - Sets the search criteria to @DataSource@ creation dates.
--
--     * @Status@ - Sets the search criteria to @DataSource@ statuses.
--
--     * @Name@ - Sets the search criteria to the contents of @DataSource@ ____ @Name@ .
--
--     * @DataUri@ - Sets the search criteria to the URI of data files used to create the @DataSource@ . The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
--
--     * @IAMUser@ - Sets the search criteria to the user account that invoked the @DataSource@ creation.
--
  , ge :: Core.Maybe Types.GE
    -- ^ The greater than or equal to operator. The @DataSource@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ . 
  , gt :: Core.Maybe Types.GT
    -- ^ The greater than operator. The @DataSource@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
  , le :: Core.Maybe Types.LE
    -- ^ The less than or equal to operator. The @DataSource@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
  , lt :: Core.Maybe Types.LT
    -- ^ The less than operator. The @DataSource@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
  , limit :: Core.Maybe Core.Natural
    -- ^ The maximum number of @DataSource@ to include in the result.
  , ne :: Core.Maybe Types.NE
    -- ^ The not equal to operator. The @DataSource@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
  , nextToken :: Core.Maybe Types.StringType
    -- ^ The ID of the page in the paginated results.
  , prefix :: Core.Maybe Types.Prefix
    -- ^ A string that is found at the beginning of a variable, such as @Name@ or @Id@ .
--
-- For example, a @DataSource@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @DataSource@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ : 
--
--     * 2014-09
--
--
--     * 2014-09-09
--
--
--     * 2014-09-09-Holiday
--
--
  , sortOrder :: Core.Maybe Types.SortOrder
    -- ^ A two-value parameter that determines the sequence of the resulting list of @DataSource@ .
--
--
--     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).
--
--     * @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeDataSources' value with any optional fields omitted.
mkDescribeDataSources
    :: DescribeDataSources
mkDescribeDataSources
  = DescribeDataSources'{eq = Core.Nothing,
                         filterVariable = Core.Nothing, ge = Core.Nothing,
                         gt = Core.Nothing, le = Core.Nothing, lt = Core.Nothing,
                         limit = Core.Nothing, ne = Core.Nothing, nextToken = Core.Nothing,
                         prefix = Core.Nothing, sortOrder = Core.Nothing}

-- | The equal to operator. The @DataSource@ results will have @FilterVariable@ values that exactly match the value specified with @EQ@ .
--
-- /Note:/ Consider using 'eq' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsEQ :: Lens.Lens' DescribeDataSources (Core.Maybe Types.EQ)
ddsEQ = Lens.field @"eq"
{-# INLINEABLE ddsEQ #-}
{-# DEPRECATED eq "Use generic-lens or generic-optics with 'eq' instead"  #-}

-- | Use one of the following variables to filter a list of @DataSource@ :
--
--
--     * @CreatedAt@ - Sets the search criteria to @DataSource@ creation dates.
--
--     * @Status@ - Sets the search criteria to @DataSource@ statuses.
--
--     * @Name@ - Sets the search criteria to the contents of @DataSource@ ____ @Name@ .
--
--     * @DataUri@ - Sets the search criteria to the URI of data files used to create the @DataSource@ . The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.
--
--     * @IAMUser@ - Sets the search criteria to the user account that invoked the @DataSource@ creation.
--
--
-- /Note:/ Consider using 'filterVariable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsFilterVariable :: Lens.Lens' DescribeDataSources (Core.Maybe Types.DataSourceFilterVariable)
ddsFilterVariable = Lens.field @"filterVariable"
{-# INLINEABLE ddsFilterVariable #-}
{-# DEPRECATED filterVariable "Use generic-lens or generic-optics with 'filterVariable' instead"  #-}

-- | The greater than or equal to operator. The @DataSource@ results will have @FilterVariable@ values that are greater than or equal to the value specified with @GE@ . 
--
-- /Note:/ Consider using 'ge' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsGE :: Lens.Lens' DescribeDataSources (Core.Maybe Types.GE)
ddsGE = Lens.field @"ge"
{-# INLINEABLE ddsGE #-}
{-# DEPRECATED ge "Use generic-lens or generic-optics with 'ge' instead"  #-}

-- | The greater than operator. The @DataSource@ results will have @FilterVariable@ values that are greater than the value specified with @GT@ .
--
-- /Note:/ Consider using 'gt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsGT :: Lens.Lens' DescribeDataSources (Core.Maybe Types.GT)
ddsGT = Lens.field @"gt"
{-# INLINEABLE ddsGT #-}
{-# DEPRECATED gt "Use generic-lens or generic-optics with 'gt' instead"  #-}

-- | The less than or equal to operator. The @DataSource@ results will have @FilterVariable@ values that are less than or equal to the value specified with @LE@ .
--
-- /Note:/ Consider using 'le' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsLE :: Lens.Lens' DescribeDataSources (Core.Maybe Types.LE)
ddsLE = Lens.field @"le"
{-# INLINEABLE ddsLE #-}
{-# DEPRECATED le "Use generic-lens or generic-optics with 'le' instead"  #-}

-- | The less than operator. The @DataSource@ results will have @FilterVariable@ values that are less than the value specified with @LT@ .
--
-- /Note:/ Consider using 'lt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsLT :: Lens.Lens' DescribeDataSources (Core.Maybe Types.LT)
ddsLT = Lens.field @"lt"
{-# INLINEABLE ddsLT #-}
{-# DEPRECATED lt "Use generic-lens or generic-optics with 'lt' instead"  #-}

-- | The maximum number of @DataSource@ to include in the result.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsLimit :: Lens.Lens' DescribeDataSources (Core.Maybe Core.Natural)
ddsLimit = Lens.field @"limit"
{-# INLINEABLE ddsLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

-- | The not equal to operator. The @DataSource@ results will have @FilterVariable@ values not equal to the value specified with @NE@ .
--
-- /Note:/ Consider using 'ne' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsNE :: Lens.Lens' DescribeDataSources (Core.Maybe Types.NE)
ddsNE = Lens.field @"ne"
{-# INLINEABLE ddsNE #-}
{-# DEPRECATED ne "Use generic-lens or generic-optics with 'ne' instead"  #-}

-- | The ID of the page in the paginated results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsNextToken :: Lens.Lens' DescribeDataSources (Core.Maybe Types.StringType)
ddsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ddsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A string that is found at the beginning of a variable, such as @Name@ or @Id@ .
--
-- For example, a @DataSource@ could have the @Name@ @2014-09-09-HolidayGiftMailer@ . To search for this @DataSource@ , select @Name@ for the @FilterVariable@ and any of the following strings for the @Prefix@ : 
--
--     * 2014-09
--
--
--     * 2014-09-09
--
--
--     * 2014-09-09-Holiday
--
--
--
-- /Note:/ Consider using 'prefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsPrefix :: Lens.Lens' DescribeDataSources (Core.Maybe Types.Prefix)
ddsPrefix = Lens.field @"prefix"
{-# INLINEABLE ddsPrefix #-}
{-# DEPRECATED prefix "Use generic-lens or generic-optics with 'prefix' instead"  #-}

-- | A two-value parameter that determines the sequence of the resulting list of @DataSource@ .
--
--
--     * @asc@ - Arranges the list in ascending order (A-Z, 0-9).
--
--     * @dsc@ - Arranges the list in descending order (Z-A, 9-0).
--
-- Results are sorted by @FilterVariable@ .
--
-- /Note:/ Consider using 'sortOrder' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsSortOrder :: Lens.Lens' DescribeDataSources (Core.Maybe Types.SortOrder)
ddsSortOrder = Lens.field @"sortOrder"
{-# INLINEABLE ddsSortOrder #-}
{-# DEPRECATED sortOrder "Use generic-lens or generic-optics with 'sortOrder' instead"  #-}

instance Core.ToQuery DescribeDataSources where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeDataSources where
        toHeaders DescribeDataSources{..}
          = Core.pure
              ("X-Amz-Target", "AmazonML_20141212.DescribeDataSources")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeDataSources where
        toJSON DescribeDataSources{..}
          = Core.object
              (Core.catMaybes
                 [("EQ" Core..=) Core.<$> eq,
                  ("FilterVariable" Core..=) Core.<$> filterVariable,
                  ("GE" Core..=) Core.<$> ge, ("GT" Core..=) Core.<$> gt,
                  ("LE" Core..=) Core.<$> le, ("LT" Core..=) Core.<$> lt,
                  ("Limit" Core..=) Core.<$> limit, ("NE" Core..=) Core.<$> ne,
                  ("NextToken" Core..=) Core.<$> nextToken,
                  ("Prefix" Core..=) Core.<$> prefix,
                  ("SortOrder" Core..=) Core.<$> sortOrder])

instance Core.AWSRequest DescribeDataSources where
        type Rs DescribeDataSources = DescribeDataSourcesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeDataSourcesResponse' Core.<$>
                   (x Core..:? "NextToken") Core.<*> x Core..:? "Results" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeDataSources where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"results" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | Represents the query results from a 'DescribeDataSources' operation. The content is essentially a list of @DataSource@ .
--
-- /See:/ 'mkDescribeDataSourcesResponse' smart constructor.
data DescribeDataSourcesResponse = DescribeDataSourcesResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ An ID of the next page in the paginated results that indicates at least one more page follows.
  , results :: Core.Maybe [Types.DataSource]
    -- ^ A list of @DataSource@ that meet the search criteria. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeDataSourcesResponse' value with any optional fields omitted.
mkDescribeDataSourcesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeDataSourcesResponse
mkDescribeDataSourcesResponse responseStatus
  = DescribeDataSourcesResponse'{nextToken = Core.Nothing,
                                 results = Core.Nothing, responseStatus}

-- | An ID of the next page in the paginated results that indicates at least one more page follows.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsrfrsNextToken :: Lens.Lens' DescribeDataSourcesResponse (Core.Maybe Types.NextToken)
ddsrfrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ddsrfrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of @DataSource@ that meet the search criteria. 
--
-- /Note:/ Consider using 'results' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsrfrsResults :: Lens.Lens' DescribeDataSourcesResponse (Core.Maybe [Types.DataSource])
ddsrfrsResults = Lens.field @"results"
{-# INLINEABLE ddsrfrsResults #-}
{-# DEPRECATED results "Use generic-lens or generic-optics with 'results' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddsrfrsResponseStatus :: Lens.Lens' DescribeDataSourcesResponse Core.Int
ddsrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ddsrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
