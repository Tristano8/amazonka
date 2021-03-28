{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.DiscoverInputSchema
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.
--
-- You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html Configuring Application Input> . Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. 
-- This operation requires permissions to perform the @kinesisanalytics:DiscoverInputSchema@ action. 
module Network.AWS.KinesisAnalytics.DiscoverInputSchema
    (
    -- * Creating a request
      DiscoverInputSchema (..)
    , mkDiscoverInputSchema
    -- ** Request lenses
    , disInputProcessingConfiguration
    , disInputStartingPositionConfiguration
    , disResourceARN
    , disRoleARN
    , disS3Configuration

    -- * Destructuring the response
    , DiscoverInputSchemaResponse (..)
    , mkDiscoverInputSchemaResponse
    -- ** Response lenses
    , disrrsInputSchema
    , disrrsParsedInputRecords
    , disrrsProcessedInputRecords
    , disrrsRawInputRecords
    , disrrsResponseStatus
    ) where

import qualified Network.AWS.KinesisAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDiscoverInputSchema' smart constructor.
data DiscoverInputSchema = DiscoverInputSchema'
  { inputProcessingConfiguration :: Core.Maybe Types.InputProcessingConfiguration
    -- ^ The <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html InputProcessingConfiguration> to use to preprocess the records before discovering the schema of the records.
  , inputStartingPositionConfiguration :: Core.Maybe Types.InputStartingPositionConfiguration
    -- ^ Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.
  , resourceARN :: Core.Maybe Types.ResourceARN
    -- ^ Amazon Resource Name (ARN) of the streaming source.
  , roleARN :: Core.Maybe Types.RoleARN
    -- ^ ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.
  , s3Configuration :: Core.Maybe Types.S3Configuration
    -- ^ Specify this parameter to discover a schema from data in an Amazon S3 object.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DiscoverInputSchema' value with any optional fields omitted.
mkDiscoverInputSchema
    :: DiscoverInputSchema
mkDiscoverInputSchema
  = DiscoverInputSchema'{inputProcessingConfiguration = Core.Nothing,
                         inputStartingPositionConfiguration = Core.Nothing,
                         resourceARN = Core.Nothing, roleARN = Core.Nothing,
                         s3Configuration = Core.Nothing}

-- | The <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html InputProcessingConfiguration> to use to preprocess the records before discovering the schema of the records.
--
-- /Note:/ Consider using 'inputProcessingConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disInputProcessingConfiguration :: Lens.Lens' DiscoverInputSchema (Core.Maybe Types.InputProcessingConfiguration)
disInputProcessingConfiguration = Lens.field @"inputProcessingConfiguration"
{-# INLINEABLE disInputProcessingConfiguration #-}
{-# DEPRECATED inputProcessingConfiguration "Use generic-lens or generic-optics with 'inputProcessingConfiguration' instead"  #-}

-- | Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.
--
-- /Note:/ Consider using 'inputStartingPositionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disInputStartingPositionConfiguration :: Lens.Lens' DiscoverInputSchema (Core.Maybe Types.InputStartingPositionConfiguration)
disInputStartingPositionConfiguration = Lens.field @"inputStartingPositionConfiguration"
{-# INLINEABLE disInputStartingPositionConfiguration #-}
{-# DEPRECATED inputStartingPositionConfiguration "Use generic-lens or generic-optics with 'inputStartingPositionConfiguration' instead"  #-}

-- | Amazon Resource Name (ARN) of the streaming source.
--
-- /Note:/ Consider using 'resourceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disResourceARN :: Lens.Lens' DiscoverInputSchema (Core.Maybe Types.ResourceARN)
disResourceARN = Lens.field @"resourceARN"
{-# INLINEABLE disResourceARN #-}
{-# DEPRECATED resourceARN "Use generic-lens or generic-optics with 'resourceARN' instead"  #-}

-- | ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disRoleARN :: Lens.Lens' DiscoverInputSchema (Core.Maybe Types.RoleARN)
disRoleARN = Lens.field @"roleARN"
{-# INLINEABLE disRoleARN #-}
{-# DEPRECATED roleARN "Use generic-lens or generic-optics with 'roleARN' instead"  #-}

-- | Specify this parameter to discover a schema from data in an Amazon S3 object.
--
-- /Note:/ Consider using 's3Configuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disS3Configuration :: Lens.Lens' DiscoverInputSchema (Core.Maybe Types.S3Configuration)
disS3Configuration = Lens.field @"s3Configuration"
{-# INLINEABLE disS3Configuration #-}
{-# DEPRECATED s3Configuration "Use generic-lens or generic-optics with 's3Configuration' instead"  #-}

instance Core.ToQuery DiscoverInputSchema where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DiscoverInputSchema where
        toHeaders DiscoverInputSchema{..}
          = Core.pure
              ("X-Amz-Target", "KinesisAnalytics_20150814.DiscoverInputSchema")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DiscoverInputSchema where
        toJSON DiscoverInputSchema{..}
          = Core.object
              (Core.catMaybes
                 [("InputProcessingConfiguration" Core..=) Core.<$>
                    inputProcessingConfiguration,
                  ("InputStartingPositionConfiguration" Core..=) Core.<$>
                    inputStartingPositionConfiguration,
                  ("ResourceARN" Core..=) Core.<$> resourceARN,
                  ("RoleARN" Core..=) Core.<$> roleARN,
                  ("S3Configuration" Core..=) Core.<$> s3Configuration])

instance Core.AWSRequest DiscoverInputSchema where
        type Rs DiscoverInputSchema = DiscoverInputSchemaResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DiscoverInputSchemaResponse' Core.<$>
                   (x Core..:? "InputSchema") Core.<*> x Core..:? "ParsedInputRecords"
                     Core.<*> x Core..:? "ProcessedInputRecords"
                     Core.<*> x Core..:? "RawInputRecords"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | 
--
-- /See:/ 'mkDiscoverInputSchemaResponse' smart constructor.
data DiscoverInputSchemaResponse = DiscoverInputSchemaResponse'
  { inputSchema :: Core.Maybe Types.SourceSchema
    -- ^ Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.
  , parsedInputRecords :: Core.Maybe [[Types.ParsedInputRecordField]]
    -- ^ An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).
  , processedInputRecords :: Core.Maybe [Types.ProcessedInputRecord]
    -- ^ Stream data that was modified by the processor specified in the @InputProcessingConfiguration@ parameter.
  , rawInputRecords :: Core.Maybe [Types.RawInputRecord]
    -- ^ Raw stream data that was sampled to infer the schema.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DiscoverInputSchemaResponse' value with any optional fields omitted.
mkDiscoverInputSchemaResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DiscoverInputSchemaResponse
mkDiscoverInputSchemaResponse responseStatus
  = DiscoverInputSchemaResponse'{inputSchema = Core.Nothing,
                                 parsedInputRecords = Core.Nothing,
                                 processedInputRecords = Core.Nothing,
                                 rawInputRecords = Core.Nothing, responseStatus}

-- | Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.
--
-- /Note:/ Consider using 'inputSchema' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsInputSchema :: Lens.Lens' DiscoverInputSchemaResponse (Core.Maybe Types.SourceSchema)
disrrsInputSchema = Lens.field @"inputSchema"
{-# INLINEABLE disrrsInputSchema #-}
{-# DEPRECATED inputSchema "Use generic-lens or generic-optics with 'inputSchema' instead"  #-}

-- | An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).
--
-- /Note:/ Consider using 'parsedInputRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsParsedInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Core.Maybe [[Types.ParsedInputRecordField]])
disrrsParsedInputRecords = Lens.field @"parsedInputRecords"
{-# INLINEABLE disrrsParsedInputRecords #-}
{-# DEPRECATED parsedInputRecords "Use generic-lens or generic-optics with 'parsedInputRecords' instead"  #-}

-- | Stream data that was modified by the processor specified in the @InputProcessingConfiguration@ parameter.
--
-- /Note:/ Consider using 'processedInputRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsProcessedInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Core.Maybe [Types.ProcessedInputRecord])
disrrsProcessedInputRecords = Lens.field @"processedInputRecords"
{-# INLINEABLE disrrsProcessedInputRecords #-}
{-# DEPRECATED processedInputRecords "Use generic-lens or generic-optics with 'processedInputRecords' instead"  #-}

-- | Raw stream data that was sampled to infer the schema.
--
-- /Note:/ Consider using 'rawInputRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsRawInputRecords :: Lens.Lens' DiscoverInputSchemaResponse (Core.Maybe [Types.RawInputRecord])
disrrsRawInputRecords = Lens.field @"rawInputRecords"
{-# INLINEABLE disrrsRawInputRecords #-}
{-# DEPRECATED rawInputRecords "Use generic-lens or generic-optics with 'rawInputRecords' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
disrrsResponseStatus :: Lens.Lens' DiscoverInputSchemaResponse Core.Int
disrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE disrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
