{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.SampledHTTPRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.WAFRegional.Types.SampledHTTPRequest
  ( SampledHTTPRequest (..)
  -- * Smart constructor
  , mkSampledHTTPRequest
  -- * Lenses
  , shttprRequest
  , shttprWeight
  , shttprAction
  , shttprRuleWithinRuleGroup
  , shttprTimestamp
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.WAFRegional.Types.Action as Types
import qualified Network.AWS.WAFRegional.Types.HTTPRequest as Types
import qualified Network.AWS.WAFRegional.Types.ResourceId as Types

-- | The response from a 'GetSampledRequests' request includes a @SampledHTTPRequests@ complex type that appears as @SampledRequests@ in the response syntax. @SampledHTTPRequests@ contains one @SampledHTTPRequest@ object for each web request that is returned by @GetSampledRequests@ .
--
-- /See:/ 'mkSampledHTTPRequest' smart constructor.
data SampledHTTPRequest = SampledHTTPRequest'
  { request :: Types.HTTPRequest
    -- ^ A complex type that contains detailed information about the request.
  , weight :: Core.Natural
    -- ^ A value that indicates how one result in the response relates proportionally to other results in the response. A result that has a weight of @2@ represents roughly twice as many CloudFront web requests as a result that has a weight of @1@ .
  , action :: Core.Maybe Types.Action
    -- ^ The action for the @Rule@ that the request matched: @ALLOW@ , @BLOCK@ , or @COUNT@ .
  , ruleWithinRuleGroup :: Core.Maybe Types.ResourceId
    -- ^ This value is returned if the @GetSampledRequests@ request specifies the ID of a @RuleGroup@ rather than the ID of an individual rule. @RuleWithinRuleGroup@ is the rule within the specified @RuleGroup@ that matched the request listed in the response.
  , timestamp :: Core.Maybe Core.NominalDiffTime
    -- ^ The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'SampledHTTPRequest' value with any optional fields omitted.
mkSampledHTTPRequest
    :: Types.HTTPRequest -- ^ 'request'
    -> Core.Natural -- ^ 'weight'
    -> SampledHTTPRequest
mkSampledHTTPRequest request weight
  = SampledHTTPRequest'{request, weight, action = Core.Nothing,
                        ruleWithinRuleGroup = Core.Nothing, timestamp = Core.Nothing}

-- | A complex type that contains detailed information about the request.
--
-- /Note:/ Consider using 'request' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
shttprRequest :: Lens.Lens' SampledHTTPRequest Types.HTTPRequest
shttprRequest = Lens.field @"request"
{-# INLINEABLE shttprRequest #-}
{-# DEPRECATED request "Use generic-lens or generic-optics with 'request' instead"  #-}

-- | A value that indicates how one result in the response relates proportionally to other results in the response. A result that has a weight of @2@ represents roughly twice as many CloudFront web requests as a result that has a weight of @1@ .
--
-- /Note:/ Consider using 'weight' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
shttprWeight :: Lens.Lens' SampledHTTPRequest Core.Natural
shttprWeight = Lens.field @"weight"
{-# INLINEABLE shttprWeight #-}
{-# DEPRECATED weight "Use generic-lens or generic-optics with 'weight' instead"  #-}

-- | The action for the @Rule@ that the request matched: @ALLOW@ , @BLOCK@ , or @COUNT@ .
--
-- /Note:/ Consider using 'action' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
shttprAction :: Lens.Lens' SampledHTTPRequest (Core.Maybe Types.Action)
shttprAction = Lens.field @"action"
{-# INLINEABLE shttprAction #-}
{-# DEPRECATED action "Use generic-lens or generic-optics with 'action' instead"  #-}

-- | This value is returned if the @GetSampledRequests@ request specifies the ID of a @RuleGroup@ rather than the ID of an individual rule. @RuleWithinRuleGroup@ is the rule within the specified @RuleGroup@ that matched the request listed in the response.
--
-- /Note:/ Consider using 'ruleWithinRuleGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
shttprRuleWithinRuleGroup :: Lens.Lens' SampledHTTPRequest (Core.Maybe Types.ResourceId)
shttprRuleWithinRuleGroup = Lens.field @"ruleWithinRuleGroup"
{-# INLINEABLE shttprRuleWithinRuleGroup #-}
{-# DEPRECATED ruleWithinRuleGroup "Use generic-lens or generic-optics with 'ruleWithinRuleGroup' instead"  #-}

-- | The time at which AWS WAF received the request from your AWS resource, in Unix time format (in seconds).
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
shttprTimestamp :: Lens.Lens' SampledHTTPRequest (Core.Maybe Core.NominalDiffTime)
shttprTimestamp = Lens.field @"timestamp"
{-# INLINEABLE shttprTimestamp #-}
{-# DEPRECATED timestamp "Use generic-lens or generic-optics with 'timestamp' instead"  #-}

instance Core.FromJSON SampledHTTPRequest where
        parseJSON
          = Core.withObject "SampledHTTPRequest" Core.$
              \ x ->
                SampledHTTPRequest' Core.<$>
                  (x Core..: "Request") Core.<*> x Core..: "Weight" Core.<*>
                    x Core..:? "Action"
                    Core.<*> x Core..:? "RuleWithinRuleGroup"
                    Core.<*> x Core..:? "Timestamp"
