{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.GetPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the 'ListEntitiesForPolicy' API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use 'GetPolicyVersion' .
--
-- This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the 'GetUserPolicy' , 'GetGroupPolicy' , or 'GetRolePolicy' API.
-- For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed Policies and Inline Policies> in the /IAM User Guide/ .
module Network.AWS.IAM.GetPolicy
    (
    -- * Creating a request
      GetPolicy (..)
    , mkGetPolicy
    -- ** Request lenses
    , gpPolicyArn

    -- * Destructuring the response
    , GetPolicyResponse (..)
    , mkGetPolicyResponse
    -- ** Response lenses
    , gprrsPolicy
    , gprrsResponseStatus
    ) where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetPolicy' smart constructor.
newtype GetPolicy = GetPolicy'
  { policyArn :: Types.PolicyArn
    -- ^ The Amazon Resource Name (ARN) of the managed policy that you want information about.
--
-- For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetPolicy' value with any optional fields omitted.
mkGetPolicy
    :: Types.PolicyArn -- ^ 'policyArn'
    -> GetPolicy
mkGetPolicy policyArn = GetPolicy'{policyArn}

-- | The Amazon Resource Name (ARN) of the managed policy that you want information about.
--
-- For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
--
-- /Note:/ Consider using 'policyArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gpPolicyArn :: Lens.Lens' GetPolicy Types.PolicyArn
gpPolicyArn = Lens.field @"policyArn"
{-# INLINEABLE gpPolicyArn #-}
{-# DEPRECATED policyArn "Use generic-lens or generic-optics with 'policyArn' instead"  #-}

instance Core.ToQuery GetPolicy where
        toQuery GetPolicy{..}
          = Core.toQueryPair "Action" ("GetPolicy" :: Core.Text) Core.<>
              Core.toQueryPair "Version" ("2010-05-08" :: Core.Text)
              Core.<> Core.toQueryPair "PolicyArn" policyArn

instance Core.ToHeaders GetPolicy where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest GetPolicy where
        type Rs GetPolicy = GetPolicyResponse
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
          = Response.receiveXMLWrapper "GetPolicyResult"
              (\ s h x ->
                 GetPolicyResponse' Core.<$>
                   (x Core..@? "Policy") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Contains the response to a successful 'GetPolicy' request. 
--
-- /See:/ 'mkGetPolicyResponse' smart constructor.
data GetPolicyResponse = GetPolicyResponse'
  { policy :: Core.Maybe Types.Policy
    -- ^ A structure containing details about the policy.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetPolicyResponse' value with any optional fields omitted.
mkGetPolicyResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetPolicyResponse
mkGetPolicyResponse responseStatus
  = GetPolicyResponse'{policy = Core.Nothing, responseStatus}

-- | A structure containing details about the policy.
--
-- /Note:/ Consider using 'policy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprrsPolicy :: Lens.Lens' GetPolicyResponse (Core.Maybe Types.Policy)
gprrsPolicy = Lens.field @"policy"
{-# INLINEABLE gprrsPolicy #-}
{-# DEPRECATED policy "Use generic-lens or generic-optics with 'policy' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gprrsResponseStatus :: Lens.Lens' GetPolicyResponse Core.Int
gprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
