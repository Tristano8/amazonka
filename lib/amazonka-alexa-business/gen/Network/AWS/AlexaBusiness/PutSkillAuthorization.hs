{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.PutSkillAuthorization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.
module Network.AWS.AlexaBusiness.PutSkillAuthorization
    (
    -- * Creating a request
      PutSkillAuthorization (..)
    , mkPutSkillAuthorization
    -- ** Request lenses
    , psaAuthorizationResult
    , psaSkillId
    , psaRoomArn

    -- * Destructuring the response
    , PutSkillAuthorizationResponse (..)
    , mkPutSkillAuthorizationResponse
    -- ** Response lenses
    , psarrsResponseStatus
    ) where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutSkillAuthorization' smart constructor.
data PutSkillAuthorization = PutSkillAuthorization'
  { authorizationResult :: Core.HashMap Types.Key Types.Value
    -- ^ The authorization result specific to OAUTH code grant output. "Code” must be populated in the AuthorizationResult map to establish the authorization.
  , skillId :: Types.SkillId
    -- ^ The unique identifier of a skill.
  , roomArn :: Core.Maybe Types.Arn
    -- ^ The room that the skill is authorized for.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutSkillAuthorization' value with any optional fields omitted.
mkPutSkillAuthorization
    :: Types.SkillId -- ^ 'skillId'
    -> PutSkillAuthorization
mkPutSkillAuthorization skillId
  = PutSkillAuthorization'{authorizationResult = Core.mempty,
                           skillId, roomArn = Core.Nothing}

-- | The authorization result specific to OAUTH code grant output. "Code” must be populated in the AuthorizationResult map to establish the authorization.
--
-- /Note:/ Consider using 'authorizationResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psaAuthorizationResult :: Lens.Lens' PutSkillAuthorization (Core.HashMap Types.Key Types.Value)
psaAuthorizationResult = Lens.field @"authorizationResult"
{-# INLINEABLE psaAuthorizationResult #-}
{-# DEPRECATED authorizationResult "Use generic-lens or generic-optics with 'authorizationResult' instead"  #-}

-- | The unique identifier of a skill.
--
-- /Note:/ Consider using 'skillId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psaSkillId :: Lens.Lens' PutSkillAuthorization Types.SkillId
psaSkillId = Lens.field @"skillId"
{-# INLINEABLE psaSkillId #-}
{-# DEPRECATED skillId "Use generic-lens or generic-optics with 'skillId' instead"  #-}

-- | The room that the skill is authorized for.
--
-- /Note:/ Consider using 'roomArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psaRoomArn :: Lens.Lens' PutSkillAuthorization (Core.Maybe Types.Arn)
psaRoomArn = Lens.field @"roomArn"
{-# INLINEABLE psaRoomArn #-}
{-# DEPRECATED roomArn "Use generic-lens or generic-optics with 'roomArn' instead"  #-}

instance Core.ToQuery PutSkillAuthorization where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PutSkillAuthorization where
        toHeaders PutSkillAuthorization{..}
          = Core.pure
              ("X-Amz-Target", "AlexaForBusiness.PutSkillAuthorization")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PutSkillAuthorization where
        toJSON PutSkillAuthorization{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("AuthorizationResult" Core..= authorizationResult),
                  Core.Just ("SkillId" Core..= skillId),
                  ("RoomArn" Core..=) Core.<$> roomArn])

instance Core.AWSRequest PutSkillAuthorization where
        type Rs PutSkillAuthorization = PutSkillAuthorizationResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 PutSkillAuthorizationResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutSkillAuthorizationResponse' smart constructor.
newtype PutSkillAuthorizationResponse = PutSkillAuthorizationResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'PutSkillAuthorizationResponse' value with any optional fields omitted.
mkPutSkillAuthorizationResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PutSkillAuthorizationResponse
mkPutSkillAuthorizationResponse responseStatus
  = PutSkillAuthorizationResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psarrsResponseStatus :: Lens.Lens' PutSkillAuthorizationResponse Core.Int
psarrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE psarrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
