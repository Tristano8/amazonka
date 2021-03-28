{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.StreamingDistributionSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudFront.Types.StreamingDistributionSummary
  ( StreamingDistributionSummary (..)
  -- * Smart constructor
  , mkStreamingDistributionSummary
  -- * Lenses
  , sdsId
  , sdsARN
  , sdsStatus
  , sdsLastModifiedTime
  , sdsDomainName
  , sdsS3Origin
  , sdsAliases
  , sdsTrustedSigners
  , sdsComment
  , sdsPriceClass
  , sdsEnabled
  ) where

import qualified Network.AWS.CloudFront.Types.Aliases as Types
import qualified Network.AWS.CloudFront.Types.PriceClass as Types
import qualified Network.AWS.CloudFront.Types.S3Origin as Types
import qualified Network.AWS.CloudFront.Types.TrustedSigners as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A summary of the information for a CloudFront streaming distribution.
--
-- /See:/ 'mkStreamingDistributionSummary' smart constructor.
data StreamingDistributionSummary = StreamingDistributionSummary'
  { id :: Core.Text
    -- ^ The identifier for the distribution, for example, @EDFDVBD632BHDS5@ .
  , arn :: Core.Text
    -- ^ The ARN (Amazon Resource Name) for the streaming distribution. For example: @arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5@ , where @123456789012@ is your AWS account ID.
  , status :: Core.Text
    -- ^ Indicates the current status of the distribution. When the status is @Deployed@ , the distribution's information is fully propagated throughout the Amazon CloudFront system.
  , lastModifiedTime :: Core.UTCTime
    -- ^ The date and time the distribution was last modified.
  , domainName :: Core.Text
    -- ^ The domain name corresponding to the distribution, for example, @d111111abcdef8.cloudfront.net@ .
  , s3Origin :: Types.S3Origin
    -- ^ A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.
  , aliases :: Types.Aliases
    -- ^ A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.
  , trustedSigners :: Types.TrustedSigners
    -- ^ A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the @PathPattern@ for this cache behavior, specify @true@ for @Enabled@ , and specify the applicable values for @Quantity@ and @Items@ .If you don't want to require signed URLs in requests for objects that match @PathPattern@ , specify @false@ for @Enabled@ and @0@ for @Quantity@ . Omit @Items@ . To add, change, or remove one or more trusted signers, change @Enabled@ to @true@ (if it's currently @false@ ), change @Quantity@ as applicable, and specify all of the trusted signers that you want to include in the updated distribution.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving Private Content through CloudFront> in the /Amazon CloudFront Developer Guide/ . 
  , comment :: Core.Text
    -- ^ The comment originally specified when this distribution was created.
  , priceClass :: Types.PriceClass
    -- ^ A complex type that contains information about price class for this streaming distribution. 
  , enabled :: Core.Bool
    -- ^ Whether the distribution is enabled to accept end user requests for content.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'StreamingDistributionSummary' value with any optional fields omitted.
mkStreamingDistributionSummary
    :: Core.Text -- ^ 'id'
    -> Core.Text -- ^ 'arn'
    -> Core.Text -- ^ 'status'
    -> Core.UTCTime -- ^ 'lastModifiedTime'
    -> Core.Text -- ^ 'domainName'
    -> Types.S3Origin -- ^ 's3Origin'
    -> Types.Aliases -- ^ 'aliases'
    -> Types.TrustedSigners -- ^ 'trustedSigners'
    -> Core.Text -- ^ 'comment'
    -> Types.PriceClass -- ^ 'priceClass'
    -> Core.Bool -- ^ 'enabled'
    -> StreamingDistributionSummary
mkStreamingDistributionSummary id arn status lastModifiedTime
  domainName s3Origin aliases trustedSigners comment priceClass
  enabled
  = StreamingDistributionSummary'{id, arn, status, lastModifiedTime,
                                  domainName, s3Origin, aliases, trustedSigners, comment,
                                  priceClass, enabled}

-- | The identifier for the distribution, for example, @EDFDVBD632BHDS5@ .
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsId :: Lens.Lens' StreamingDistributionSummary Core.Text
sdsId = Lens.field @"id"
{-# INLINEABLE sdsId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

-- | The ARN (Amazon Resource Name) for the streaming distribution. For example: @arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5@ , where @123456789012@ is your AWS account ID.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsARN :: Lens.Lens' StreamingDistributionSummary Core.Text
sdsARN = Lens.field @"arn"
{-# INLINEABLE sdsARN #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | Indicates the current status of the distribution. When the status is @Deployed@ , the distribution's information is fully propagated throughout the Amazon CloudFront system.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsStatus :: Lens.Lens' StreamingDistributionSummary Core.Text
sdsStatus = Lens.field @"status"
{-# INLINEABLE sdsStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The date and time the distribution was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsLastModifiedTime :: Lens.Lens' StreamingDistributionSummary Core.UTCTime
sdsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE sdsLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | The domain name corresponding to the distribution, for example, @d111111abcdef8.cloudfront.net@ .
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsDomainName :: Lens.Lens' StreamingDistributionSummary Core.Text
sdsDomainName = Lens.field @"domainName"
{-# INLINEABLE sdsDomainName #-}
{-# DEPRECATED domainName "Use generic-lens or generic-optics with 'domainName' instead"  #-}

-- | A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.
--
-- /Note:/ Consider using 's3Origin' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsS3Origin :: Lens.Lens' StreamingDistributionSummary Types.S3Origin
sdsS3Origin = Lens.field @"s3Origin"
{-# INLINEABLE sdsS3Origin #-}
{-# DEPRECATED s3Origin "Use generic-lens or generic-optics with 's3Origin' instead"  #-}

-- | A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.
--
-- /Note:/ Consider using 'aliases' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsAliases :: Lens.Lens' StreamingDistributionSummary Types.Aliases
sdsAliases = Lens.field @"aliases"
{-# INLINEABLE sdsAliases #-}
{-# DEPRECATED aliases "Use generic-lens or generic-optics with 'aliases' instead"  #-}

-- | A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the @PathPattern@ for this cache behavior, specify @true@ for @Enabled@ , and specify the applicable values for @Quantity@ and @Items@ .If you don't want to require signed URLs in requests for objects that match @PathPattern@ , specify @false@ for @Enabled@ and @0@ for @Quantity@ . Omit @Items@ . To add, change, or remove one or more trusted signers, change @Enabled@ to @true@ (if it's currently @false@ ), change @Quantity@ as applicable, and specify all of the trusted signers that you want to include in the updated distribution.
--
-- For more information, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html Serving Private Content through CloudFront> in the /Amazon CloudFront Developer Guide/ . 
--
-- /Note:/ Consider using 'trustedSigners' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsTrustedSigners :: Lens.Lens' StreamingDistributionSummary Types.TrustedSigners
sdsTrustedSigners = Lens.field @"trustedSigners"
{-# INLINEABLE sdsTrustedSigners #-}
{-# DEPRECATED trustedSigners "Use generic-lens or generic-optics with 'trustedSigners' instead"  #-}

-- | The comment originally specified when this distribution was created.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsComment :: Lens.Lens' StreamingDistributionSummary Core.Text
sdsComment = Lens.field @"comment"
{-# INLINEABLE sdsComment #-}
{-# DEPRECATED comment "Use generic-lens or generic-optics with 'comment' instead"  #-}

-- | A complex type that contains information about price class for this streaming distribution. 
--
-- /Note:/ Consider using 'priceClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsPriceClass :: Lens.Lens' StreamingDistributionSummary Types.PriceClass
sdsPriceClass = Lens.field @"priceClass"
{-# INLINEABLE sdsPriceClass #-}
{-# DEPRECATED priceClass "Use generic-lens or generic-optics with 'priceClass' instead"  #-}

-- | Whether the distribution is enabled to accept end user requests for content.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdsEnabled :: Lens.Lens' StreamingDistributionSummary Core.Bool
sdsEnabled = Lens.field @"enabled"
{-# INLINEABLE sdsEnabled #-}
{-# DEPRECATED enabled "Use generic-lens or generic-optics with 'enabled' instead"  #-}

instance Core.FromXML StreamingDistributionSummary where
        parseXML x
          = StreamingDistributionSummary' Core.<$>
              (x Core..@ "Id") Core.<*> x Core..@ "ARN" Core.<*>
                x Core..@ "Status"
                Core.<*> x Core..@ "LastModifiedTime"
                Core.<*> x Core..@ "DomainName"
                Core.<*> x Core..@ "S3Origin"
                Core.<*> x Core..@ "Aliases"
                Core.<*> x Core..@ "TrustedSigners"
                Core.<*> x Core..@ "Comment"
                Core.<*> x Core..@ "PriceClass"
                Core.<*> x Core..@ "Enabled"
