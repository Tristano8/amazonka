{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.PutBucketRequestPayment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html Requester Pays Buckets> .
--
-- The following operations are related to @PutBucketRequestPayment@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html CreateBucket> 
--
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketRequestPayment.html GetBucketRequestPayment> 
--
--
module Network.AWS.S3.PutBucketRequestPayment
    (
    -- * Creating a request
      PutBucketRequestPayment (..)
    , mkPutBucketRequestPayment
    -- ** Request lenses
    , pbrpBucket
    , pbrpRequestPaymentConfiguration
    , pbrpContentMD5
    , pbrpExpectedBucketOwner

    -- * Destructuring the response
    , PutBucketRequestPaymentResponse (..)
    , mkPutBucketRequestPaymentResponse
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.S3.Types as Types

-- | /See:/ 'mkPutBucketRequestPayment' smart constructor.
data PutBucketRequestPayment = PutBucketRequestPayment'
  { bucket :: Types.BucketName
    -- ^ The bucket name.
  , requestPaymentConfiguration :: Types.RequestPaymentConfiguration
    -- ^ Container for Payer.
  , contentMD5 :: Core.Maybe Types.ContentMD5
    -- ^ >The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see <http://www.ietf.org/rfc/rfc1864.txt RFC 1864> .
--
-- For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.
  , expectedBucketOwner :: Core.Maybe Types.AccountId
    -- ^ The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutBucketRequestPayment' value with any optional fields omitted.
mkPutBucketRequestPayment
    :: Types.BucketName -- ^ 'bucket'
    -> Types.RequestPaymentConfiguration -- ^ 'requestPaymentConfiguration'
    -> PutBucketRequestPayment
mkPutBucketRequestPayment bucket requestPaymentConfiguration
  = PutBucketRequestPayment'{bucket, requestPaymentConfiguration,
                             contentMD5 = Core.Nothing, expectedBucketOwner = Core.Nothing}

-- | The bucket name.
--
-- /Note:/ Consider using 'bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pbrpBucket :: Lens.Lens' PutBucketRequestPayment Types.BucketName
pbrpBucket = Lens.field @"bucket"
{-# INLINEABLE pbrpBucket #-}
{-# DEPRECATED bucket "Use generic-lens or generic-optics with 'bucket' instead"  #-}

-- | Container for Payer.
--
-- /Note:/ Consider using 'requestPaymentConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pbrpRequestPaymentConfiguration :: Lens.Lens' PutBucketRequestPayment Types.RequestPaymentConfiguration
pbrpRequestPaymentConfiguration = Lens.field @"requestPaymentConfiguration"
{-# INLINEABLE pbrpRequestPaymentConfiguration #-}
{-# DEPRECATED requestPaymentConfiguration "Use generic-lens or generic-optics with 'requestPaymentConfiguration' instead"  #-}

-- | >The base64-encoded 128-bit MD5 digest of the data. You must use this header as a message integrity check to verify that the request body was not corrupted in transit. For more information, see <http://www.ietf.org/rfc/rfc1864.txt RFC 1864> .
--
-- For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.
--
-- /Note:/ Consider using 'contentMD5' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pbrpContentMD5 :: Lens.Lens' PutBucketRequestPayment (Core.Maybe Types.ContentMD5)
pbrpContentMD5 = Lens.field @"contentMD5"
{-# INLINEABLE pbrpContentMD5 #-}
{-# DEPRECATED contentMD5 "Use generic-lens or generic-optics with 'contentMD5' instead"  #-}

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- /Note:/ Consider using 'expectedBucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pbrpExpectedBucketOwner :: Lens.Lens' PutBucketRequestPayment (Core.Maybe Types.AccountId)
pbrpExpectedBucketOwner = Lens.field @"expectedBucketOwner"
{-# INLINEABLE pbrpExpectedBucketOwner #-}
{-# DEPRECATED expectedBucketOwner "Use generic-lens or generic-optics with 'expectedBucketOwner' instead"  #-}

instance Core.ToQuery PutBucketRequestPayment where
        toQuery PutBucketRequestPayment{..}
          = Core.toQueryPair "requestPayment" ("" :: Core.Text)

instance Core.ToHeaders PutBucketRequestPayment where
        toHeaders PutBucketRequestPayment{..}
          = Core.toHeaders "Content-MD5" contentMD5 Core.<>
              Core.toHeaders "x-amz-expected-bucket-owner" expectedBucketOwner

instance Core.AWSRequest PutBucketRequestPayment where
        type Rs PutBucketRequestPayment = PutBucketRequestPaymentResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath = "/" Core.<> Core.toText bucket,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toXMLBody (Core.toXMLDocument x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveNull PutBucketRequestPaymentResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutBucketRequestPaymentResponse' smart constructor.
data PutBucketRequestPaymentResponse = PutBucketRequestPaymentResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutBucketRequestPaymentResponse' value with any optional fields omitted.
mkPutBucketRequestPaymentResponse
    :: PutBucketRequestPaymentResponse
mkPutBucketRequestPaymentResponse
  = PutBucketRequestPaymentResponse'
