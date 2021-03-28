{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.PutRoomSkillParameter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
module Network.AWS.AlexaBusiness.PutRoomSkillParameter
    (
    -- * Creating a request
      PutRoomSkillParameter (..)
    , mkPutRoomSkillParameter
    -- ** Request lenses
    , prspSkillId
    , prspRoomSkillParameter
    , prspRoomArn

    -- * Destructuring the response
    , PutRoomSkillParameterResponse (..)
    , mkPutRoomSkillParameterResponse
    -- ** Response lenses
    , prsprrsResponseStatus
    ) where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutRoomSkillParameter' smart constructor.
data PutRoomSkillParameter = PutRoomSkillParameter'
  { skillId :: Types.SkillId
    -- ^ The ARN of the skill associated with the room skill parameter. Required.
  , roomSkillParameter :: Types.RoomSkillParameter
    -- ^ The updated room skill parameter. Required.
  , roomArn :: Core.Maybe Types.Arn
    -- ^ The ARN of the room associated with the room skill parameter. Required.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutRoomSkillParameter' value with any optional fields omitted.
mkPutRoomSkillParameter
    :: Types.SkillId -- ^ 'skillId'
    -> Types.RoomSkillParameter -- ^ 'roomSkillParameter'
    -> PutRoomSkillParameter
mkPutRoomSkillParameter skillId roomSkillParameter
  = PutRoomSkillParameter'{skillId, roomSkillParameter,
                           roomArn = Core.Nothing}

-- | The ARN of the skill associated with the room skill parameter. Required.
--
-- /Note:/ Consider using 'skillId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prspSkillId :: Lens.Lens' PutRoomSkillParameter Types.SkillId
prspSkillId = Lens.field @"skillId"
{-# INLINEABLE prspSkillId #-}
{-# DEPRECATED skillId "Use generic-lens or generic-optics with 'skillId' instead"  #-}

-- | The updated room skill parameter. Required.
--
-- /Note:/ Consider using 'roomSkillParameter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prspRoomSkillParameter :: Lens.Lens' PutRoomSkillParameter Types.RoomSkillParameter
prspRoomSkillParameter = Lens.field @"roomSkillParameter"
{-# INLINEABLE prspRoomSkillParameter #-}
{-# DEPRECATED roomSkillParameter "Use generic-lens or generic-optics with 'roomSkillParameter' instead"  #-}

-- | The ARN of the room associated with the room skill parameter. Required.
--
-- /Note:/ Consider using 'roomArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prspRoomArn :: Lens.Lens' PutRoomSkillParameter (Core.Maybe Types.Arn)
prspRoomArn = Lens.field @"roomArn"
{-# INLINEABLE prspRoomArn #-}
{-# DEPRECATED roomArn "Use generic-lens or generic-optics with 'roomArn' instead"  #-}

instance Core.ToQuery PutRoomSkillParameter where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PutRoomSkillParameter where
        toHeaders PutRoomSkillParameter{..}
          = Core.pure
              ("X-Amz-Target", "AlexaForBusiness.PutRoomSkillParameter")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PutRoomSkillParameter where
        toJSON PutRoomSkillParameter{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("SkillId" Core..= skillId),
                  Core.Just ("RoomSkillParameter" Core..= roomSkillParameter),
                  ("RoomArn" Core..=) Core.<$> roomArn])

instance Core.AWSRequest PutRoomSkillParameter where
        type Rs PutRoomSkillParameter = PutRoomSkillParameterResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 PutRoomSkillParameterResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutRoomSkillParameterResponse' smart constructor.
newtype PutRoomSkillParameterResponse = PutRoomSkillParameterResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'PutRoomSkillParameterResponse' value with any optional fields omitted.
mkPutRoomSkillParameterResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PutRoomSkillParameterResponse
mkPutRoomSkillParameterResponse responseStatus
  = PutRoomSkillParameterResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prsprrsResponseStatus :: Lens.Lens' PutRoomSkillParameterResponse Core.Int
prsprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE prsprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
