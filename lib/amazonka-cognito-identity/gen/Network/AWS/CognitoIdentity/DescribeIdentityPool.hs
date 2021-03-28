{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.DescribeIdentityPool
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.DescribeIdentityPool
    (
    -- * Creating a request
      DescribeIdentityPool (..)
    , mkDescribeIdentityPool
    -- ** Request lenses
    , dipIdentityPoolId

     -- * Destructuring the response
    , Types.IdentityPool (..)
    , Types.mkIdentityPool
    -- ** Response lenses
    , Types.ipIdentityPoolId
    , Types.ipIdentityPoolName
    , Types.ipAllowUnauthenticatedIdentities
    , Types.ipAllowClassicFlow
    , Types.ipCognitoIdentityProviders
    , Types.ipDeveloperProviderName
    , Types.ipIdentityPoolTags
    , Types.ipOpenIdConnectProviderARNs
    , Types.ipSamlProviderARNs
    , Types.ipSupportedLoginProviders
    ) where

import qualified Network.AWS.CognitoIdentity.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Input to the DescribeIdentityPool action.
--
-- /See:/ 'mkDescribeIdentityPool' smart constructor.
newtype DescribeIdentityPool = DescribeIdentityPool'
  { identityPoolId :: Types.IdentityPoolId
    -- ^ An identity pool ID in the format REGION:GUID.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeIdentityPool' value with any optional fields omitted.
mkDescribeIdentityPool
    :: Types.IdentityPoolId -- ^ 'identityPoolId'
    -> DescribeIdentityPool
mkDescribeIdentityPool identityPoolId
  = DescribeIdentityPool'{identityPoolId}

-- | An identity pool ID in the format REGION:GUID.
--
-- /Note:/ Consider using 'identityPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dipIdentityPoolId :: Lens.Lens' DescribeIdentityPool Types.IdentityPoolId
dipIdentityPoolId = Lens.field @"identityPoolId"
{-# INLINEABLE dipIdentityPoolId #-}
{-# DEPRECATED identityPoolId "Use generic-lens or generic-optics with 'identityPoolId' instead"  #-}

instance Core.ToQuery DescribeIdentityPool where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeIdentityPool where
        toHeaders DescribeIdentityPool{..}
          = Core.pure
              ("X-Amz-Target", "AWSCognitoIdentityService.DescribeIdentityPool")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeIdentityPool where
        toJSON DescribeIdentityPool{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("IdentityPoolId" Core..= identityPoolId)])

instance Core.AWSRequest DescribeIdentityPool where
        type Rs DescribeIdentityPool = Types.IdentityPool
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON (\ s h x -> Core.eitherParseJSON x)
        
        {-# INLINE parseResponse #-}
