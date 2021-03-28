{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.PutQueryDefinition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a query definition for CloudWatch Logs Insights. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html Analyzing Log Data with CloudWatch Logs Insights> .
--
-- To update a query definition, specify its @queryDefinitionId@ in your request. The values of @name@ , @queryString@ , and @logGroupNames@ are changed to the values that you specify in your update operation. No current values are retained from the current query definition. For example, if you update a current query definition that includes log groups, and you don't specify the @logGroupNames@ parameter in your update operation, the query definition changes to contain no log groups.
-- You must have the @logs:PutQueryDefinition@ permission to be able to perform this operation.
module Network.AWS.CloudWatchLogs.PutQueryDefinition
    (
    -- * Creating a request
      PutQueryDefinition (..)
    , mkPutQueryDefinition
    -- ** Request lenses
    , pqdName
    , pqdQueryString
    , pqdLogGroupNames
    , pqdQueryDefinitionId

    -- * Destructuring the response
    , PutQueryDefinitionResponse (..)
    , mkPutQueryDefinitionResponse
    -- ** Response lenses
    , pqdrrsQueryDefinitionId
    , pqdrrsResponseStatus
    ) where

import qualified Network.AWS.CloudWatchLogs.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutQueryDefinition' smart constructor.
data PutQueryDefinition = PutQueryDefinition'
  { name :: Types.Name
    -- ^ A name for the query definition. If you are saving a lot of query definitions, we recommend that you name them so that you can easily find the ones you want by using the first part of the name as a filter in the @queryDefinitionNamePrefix@ parameter of <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html DescribeQueryDefinitions> .
  , queryString :: Types.QueryDefinitionString
    -- ^ The query string to use for this definition. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
  , logGroupNames :: Core.Maybe [Types.LogGroupName]
    -- ^ Use this parameter to include specific log groups as part of your query definition.
--
-- If you are updating a query definition and you omit this parameter, then the updated definition will contain no log groups.
  , queryDefinitionId :: Core.Maybe Types.QueryId
    -- ^ If you are updating a query definition, use this parameter to specify the ID of the query definition that you want to update. You can use <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html DescribeQueryDefinitions> to retrieve the IDs of your saved query definitions.
--
-- If you are creating a query definition, do not specify this parameter. CloudWatch generates a unique ID for the new query definition and include it in the response to this operation.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutQueryDefinition' value with any optional fields omitted.
mkPutQueryDefinition
    :: Types.Name -- ^ 'name'
    -> Types.QueryDefinitionString -- ^ 'queryString'
    -> PutQueryDefinition
mkPutQueryDefinition name queryString
  = PutQueryDefinition'{name, queryString,
                        logGroupNames = Core.Nothing, queryDefinitionId = Core.Nothing}

-- | A name for the query definition. If you are saving a lot of query definitions, we recommend that you name them so that you can easily find the ones you want by using the first part of the name as a filter in the @queryDefinitionNamePrefix@ parameter of <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html DescribeQueryDefinitions> .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdName :: Lens.Lens' PutQueryDefinition Types.Name
pqdName = Lens.field @"name"
{-# INLINEABLE pqdName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The query string to use for this definition. For more information, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax> .
--
-- /Note:/ Consider using 'queryString' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdQueryString :: Lens.Lens' PutQueryDefinition Types.QueryDefinitionString
pqdQueryString = Lens.field @"queryString"
{-# INLINEABLE pqdQueryString #-}
{-# DEPRECATED queryString "Use generic-lens or generic-optics with 'queryString' instead"  #-}

-- | Use this parameter to include specific log groups as part of your query definition.
--
-- If you are updating a query definition and you omit this parameter, then the updated definition will contain no log groups.
--
-- /Note:/ Consider using 'logGroupNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdLogGroupNames :: Lens.Lens' PutQueryDefinition (Core.Maybe [Types.LogGroupName])
pqdLogGroupNames = Lens.field @"logGroupNames"
{-# INLINEABLE pqdLogGroupNames #-}
{-# DEPRECATED logGroupNames "Use generic-lens or generic-optics with 'logGroupNames' instead"  #-}

-- | If you are updating a query definition, use this parameter to specify the ID of the query definition that you want to update. You can use <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeQueryDefinitions.html DescribeQueryDefinitions> to retrieve the IDs of your saved query definitions.
--
-- If you are creating a query definition, do not specify this parameter. CloudWatch generates a unique ID for the new query definition and include it in the response to this operation.
--
-- /Note:/ Consider using 'queryDefinitionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdQueryDefinitionId :: Lens.Lens' PutQueryDefinition (Core.Maybe Types.QueryId)
pqdQueryDefinitionId = Lens.field @"queryDefinitionId"
{-# INLINEABLE pqdQueryDefinitionId #-}
{-# DEPRECATED queryDefinitionId "Use generic-lens or generic-optics with 'queryDefinitionId' instead"  #-}

instance Core.ToQuery PutQueryDefinition where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PutQueryDefinition where
        toHeaders PutQueryDefinition{..}
          = Core.pure ("X-Amz-Target", "Logs_20140328.PutQueryDefinition")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PutQueryDefinition where
        toJSON PutQueryDefinition{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("name" Core..= name),
                  Core.Just ("queryString" Core..= queryString),
                  ("logGroupNames" Core..=) Core.<$> logGroupNames,
                  ("queryDefinitionId" Core..=) Core.<$> queryDefinitionId])

instance Core.AWSRequest PutQueryDefinition where
        type Rs PutQueryDefinition = PutQueryDefinitionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 PutQueryDefinitionResponse' Core.<$>
                   (x Core..:? "queryDefinitionId") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutQueryDefinitionResponse' smart constructor.
data PutQueryDefinitionResponse = PutQueryDefinitionResponse'
  { queryDefinitionId :: Core.Maybe Types.QueryId
    -- ^ The ID of the query definition.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutQueryDefinitionResponse' value with any optional fields omitted.
mkPutQueryDefinitionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PutQueryDefinitionResponse
mkPutQueryDefinitionResponse responseStatus
  = PutQueryDefinitionResponse'{queryDefinitionId = Core.Nothing,
                                responseStatus}

-- | The ID of the query definition.
--
-- /Note:/ Consider using 'queryDefinitionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdrrsQueryDefinitionId :: Lens.Lens' PutQueryDefinitionResponse (Core.Maybe Types.QueryId)
pqdrrsQueryDefinitionId = Lens.field @"queryDefinitionId"
{-# INLINEABLE pqdrrsQueryDefinitionId #-}
{-# DEPRECATED queryDefinitionId "Use generic-lens or generic-optics with 'queryDefinitionId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pqdrrsResponseStatus :: Lens.Lens' PutQueryDefinitionResponse Core.Int
pqdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE pqdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
