{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.DescribeLoadBalancerPolicyTypes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified load balancer policy types or all load balancer policy types.
--
-- The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances.
-- You can use 'CreateLoadBalancerPolicy' to create a policy configuration for any of these policy types. Then, depending on the policy type, use either 'SetLoadBalancerPoliciesOfListener' or 'SetLoadBalancerPoliciesForBackendServer' to set the policy.
module Network.AWS.ELB.DescribeLoadBalancerPolicyTypes
    (
    -- * Creating a request
      DescribeLoadBalancerPolicyTypes (..)
    , mkDescribeLoadBalancerPolicyTypes
    -- ** Request lenses
    , dlbptPolicyTypeNames

    -- * Destructuring the response
    , DescribeLoadBalancerPolicyTypesResponse (..)
    , mkDescribeLoadBalancerPolicyTypesResponse
    -- ** Response lenses
    , dlbptrrsPolicyTypeDescriptions
    , dlbptrrsResponseStatus
    ) where

import qualified Network.AWS.ELB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeLoadBalancerPolicyTypes.
--
-- /See:/ 'mkDescribeLoadBalancerPolicyTypes' smart constructor.
newtype DescribeLoadBalancerPolicyTypes = DescribeLoadBalancerPolicyTypes'
  { policyTypeNames :: Core.Maybe [Types.PolicyTypeName]
    -- ^ The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLoadBalancerPolicyTypes' value with any optional fields omitted.
mkDescribeLoadBalancerPolicyTypes
    :: DescribeLoadBalancerPolicyTypes
mkDescribeLoadBalancerPolicyTypes
  = DescribeLoadBalancerPolicyTypes'{policyTypeNames = Core.Nothing}

-- | The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.
--
-- /Note:/ Consider using 'policyTypeNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbptPolicyTypeNames :: Lens.Lens' DescribeLoadBalancerPolicyTypes (Core.Maybe [Types.PolicyTypeName])
dlbptPolicyTypeNames = Lens.field @"policyTypeNames"
{-# INLINEABLE dlbptPolicyTypeNames #-}
{-# DEPRECATED policyTypeNames "Use generic-lens or generic-optics with 'policyTypeNames' instead"  #-}

instance Core.ToQuery DescribeLoadBalancerPolicyTypes where
        toQuery DescribeLoadBalancerPolicyTypes{..}
          = Core.toQueryPair "Action"
              ("DescribeLoadBalancerPolicyTypes" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2012-06-01" :: Core.Text)
              Core.<>
              Core.toQueryPair "PolicyTypeNames"
                (Core.maybe Core.mempty (Core.toQueryList "member")
                   policyTypeNames)

instance Core.ToHeaders DescribeLoadBalancerPolicyTypes where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeLoadBalancerPolicyTypes where
        type Rs DescribeLoadBalancerPolicyTypes =
             DescribeLoadBalancerPolicyTypesResponse
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
          = Response.receiveXMLWrapper
              "DescribeLoadBalancerPolicyTypesResult"
              (\ s h x ->
                 DescribeLoadBalancerPolicyTypesResponse' Core.<$>
                   (x Core..@? "PolicyTypeDescriptions" Core..<@>
                      Core.parseXMLList "member")
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Contains the output of DescribeLoadBalancerPolicyTypes.
--
-- /See:/ 'mkDescribeLoadBalancerPolicyTypesResponse' smart constructor.
data DescribeLoadBalancerPolicyTypesResponse = DescribeLoadBalancerPolicyTypesResponse'
  { policyTypeDescriptions :: Core.Maybe [Types.PolicyTypeDescription]
    -- ^ Information about the policy types.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeLoadBalancerPolicyTypesResponse' value with any optional fields omitted.
mkDescribeLoadBalancerPolicyTypesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeLoadBalancerPolicyTypesResponse
mkDescribeLoadBalancerPolicyTypesResponse responseStatus
  = DescribeLoadBalancerPolicyTypesResponse'{policyTypeDescriptions =
                                               Core.Nothing,
                                             responseStatus}

-- | Information about the policy types.
--
-- /Note:/ Consider using 'policyTypeDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbptrrsPolicyTypeDescriptions :: Lens.Lens' DescribeLoadBalancerPolicyTypesResponse (Core.Maybe [Types.PolicyTypeDescription])
dlbptrrsPolicyTypeDescriptions = Lens.field @"policyTypeDescriptions"
{-# INLINEABLE dlbptrrsPolicyTypeDescriptions #-}
{-# DEPRECATED policyTypeDescriptions "Use generic-lens or generic-optics with 'policyTypeDescriptions' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dlbptrrsResponseStatus :: Lens.Lens' DescribeLoadBalancerPolicyTypesResponse Core.Int
dlbptrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dlbptrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
