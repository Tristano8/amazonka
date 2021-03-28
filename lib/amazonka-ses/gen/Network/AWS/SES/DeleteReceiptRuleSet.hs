{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.DeleteReceiptRuleSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified receipt rule set and all of the receipt rules it contains.
--
-- For information about managing receipt rule sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html Amazon SES Developer Guide> .
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DeleteReceiptRuleSet
    (
    -- * Creating a request
      DeleteReceiptRuleSet (..)
    , mkDeleteReceiptRuleSet
    -- ** Request lenses
    , dRuleSetName

    -- * Destructuring the response
    , DeleteReceiptRuleSetResponse (..)
    , mkDeleteReceiptRuleSetResponse
    -- ** Response lenses
    , drrsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
-- /See:/ 'mkDeleteReceiptRuleSet' smart constructor.
newtype DeleteReceiptRuleSet = DeleteReceiptRuleSet'
  { ruleSetName :: Types.ReceiptRuleSetName
    -- ^ The name of the receipt rule set to delete.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteReceiptRuleSet' value with any optional fields omitted.
mkDeleteReceiptRuleSet
    :: Types.ReceiptRuleSetName -- ^ 'ruleSetName'
    -> DeleteReceiptRuleSet
mkDeleteReceiptRuleSet ruleSetName
  = DeleteReceiptRuleSet'{ruleSetName}

-- | The name of the receipt rule set to delete.
--
-- /Note:/ Consider using 'ruleSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dRuleSetName :: Lens.Lens' DeleteReceiptRuleSet Types.ReceiptRuleSetName
dRuleSetName = Lens.field @"ruleSetName"
{-# INLINEABLE dRuleSetName #-}
{-# DEPRECATED ruleSetName "Use generic-lens or generic-optics with 'ruleSetName' instead"  #-}

instance Core.ToQuery DeleteReceiptRuleSet where
        toQuery DeleteReceiptRuleSet{..}
          = Core.toQueryPair "Action" ("DeleteReceiptRuleSet" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<> Core.toQueryPair "RuleSetName" ruleSetName

instance Core.ToHeaders DeleteReceiptRuleSet where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DeleteReceiptRuleSet where
        type Rs DeleteReceiptRuleSet = DeleteReceiptRuleSetResponse
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
          = Response.receiveXMLWrapper "DeleteReceiptRuleSetResult"
              (\ s h x ->
                 DeleteReceiptRuleSetResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | An empty element returned on a successful request.
--
-- /See:/ 'mkDeleteReceiptRuleSetResponse' smart constructor.
newtype DeleteReceiptRuleSetResponse = DeleteReceiptRuleSetResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteReceiptRuleSetResponse' value with any optional fields omitted.
mkDeleteReceiptRuleSetResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteReceiptRuleSetResponse
mkDeleteReceiptRuleSetResponse responseStatus
  = DeleteReceiptRuleSetResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drrsrrsResponseStatus :: Lens.Lens' DeleteReceiptRuleSetResponse Core.Int
drrsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drrsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
