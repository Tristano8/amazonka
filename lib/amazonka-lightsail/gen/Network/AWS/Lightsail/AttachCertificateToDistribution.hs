{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.AttachCertificateToDistribution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an SSL/TLS certificate to your Amazon Lightsail content delivery network (CDN) distribution.
--
-- After the certificate is attached, your distribution accepts HTTPS traffic for all of the domains that are associated with the certificate.
-- Use the @CreateCertificate@ action to create a certificate that you can attach to your distribution.
-- /Important:/ Only certificates created in the @us-east-1@ AWS Region can be attached to Lightsail distributions. Lightsail distributions are global resources that can reference an origin in any AWS Region, and distribute its content globally. However, all distributions are located in the @us-east-1@ Region.
module Network.AWS.Lightsail.AttachCertificateToDistribution
    (
    -- * Creating a request
      AttachCertificateToDistribution (..)
    , mkAttachCertificateToDistribution
    -- ** Request lenses
    , actdDistributionName
    , actdCertificateName

    -- * Destructuring the response
    , AttachCertificateToDistributionResponse (..)
    , mkAttachCertificateToDistributionResponse
    -- ** Response lenses
    , actdrrsOperation
    , actdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAttachCertificateToDistribution' smart constructor.
data AttachCertificateToDistribution = AttachCertificateToDistribution'
  { distributionName :: Types.ResourceName
    -- ^ The name of the distribution that the certificate will be attached to.
--
-- Use the @GetDistributions@ action to get a list of distribution names that you can specify.
  , certificateName :: Types.ResourceName
    -- ^ The name of the certificate to attach to a distribution.
--
-- Only certificates with a status of @ISSUED@ can be attached to a distribution.
-- Use the @GetCertificates@ action to get a list of certificate names that you can specify.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachCertificateToDistribution' value with any optional fields omitted.
mkAttachCertificateToDistribution
    :: Types.ResourceName -- ^ 'distributionName'
    -> Types.ResourceName -- ^ 'certificateName'
    -> AttachCertificateToDistribution
mkAttachCertificateToDistribution distributionName certificateName
  = AttachCertificateToDistribution'{distributionName,
                                     certificateName}

-- | The name of the distribution that the certificate will be attached to.
--
-- Use the @GetDistributions@ action to get a list of distribution names that you can specify.
--
-- /Note:/ Consider using 'distributionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
actdDistributionName :: Lens.Lens' AttachCertificateToDistribution Types.ResourceName
actdDistributionName = Lens.field @"distributionName"
{-# INLINEABLE actdDistributionName #-}
{-# DEPRECATED distributionName "Use generic-lens or generic-optics with 'distributionName' instead"  #-}

-- | The name of the certificate to attach to a distribution.
--
-- Only certificates with a status of @ISSUED@ can be attached to a distribution.
-- Use the @GetCertificates@ action to get a list of certificate names that you can specify.
--
-- /Note:/ Consider using 'certificateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
actdCertificateName :: Lens.Lens' AttachCertificateToDistribution Types.ResourceName
actdCertificateName = Lens.field @"certificateName"
{-# INLINEABLE actdCertificateName #-}
{-# DEPRECATED certificateName "Use generic-lens or generic-optics with 'certificateName' instead"  #-}

instance Core.ToQuery AttachCertificateToDistribution where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders AttachCertificateToDistribution where
        toHeaders AttachCertificateToDistribution{..}
          = Core.pure
              ("X-Amz-Target",
               "Lightsail_20161128.AttachCertificateToDistribution")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON AttachCertificateToDistribution where
        toJSON AttachCertificateToDistribution{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("distributionName" Core..= distributionName),
                  Core.Just ("certificateName" Core..= certificateName)])

instance Core.AWSRequest AttachCertificateToDistribution where
        type Rs AttachCertificateToDistribution =
             AttachCertificateToDistributionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 AttachCertificateToDistributionResponse' Core.<$>
                   (x Core..:? "operation") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkAttachCertificateToDistributionResponse' smart constructor.
data AttachCertificateToDistributionResponse = AttachCertificateToDistributionResponse'
  { operation :: Core.Maybe Types.Operation
    -- ^ An object that describes the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'AttachCertificateToDistributionResponse' value with any optional fields omitted.
mkAttachCertificateToDistributionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> AttachCertificateToDistributionResponse
mkAttachCertificateToDistributionResponse responseStatus
  = AttachCertificateToDistributionResponse'{operation =
                                               Core.Nothing,
                                             responseStatus}

-- | An object that describes the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
actdrrsOperation :: Lens.Lens' AttachCertificateToDistributionResponse (Core.Maybe Types.Operation)
actdrrsOperation = Lens.field @"operation"
{-# INLINEABLE actdrrsOperation #-}
{-# DEPRECATED operation "Use generic-lens or generic-optics with 'operation' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
actdrrsResponseStatus :: Lens.Lens' AttachCertificateToDistributionResponse Core.Int
actdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE actdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
