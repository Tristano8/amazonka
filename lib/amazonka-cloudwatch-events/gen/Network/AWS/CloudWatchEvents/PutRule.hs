{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.PutRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using 'DisableRule' .
--
-- A single rule watches for events from a single event bus. Events generated by AWS services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see 'CreateEventBus' .
-- If you are updating an existing rule, the rule is replaced with what you specify in this @PutRule@ command. If you omit arguments in @PutRule@ , the old values for those arguments are not kept. Instead, they are replaced with null values.
-- When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect.
-- A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule.
-- When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the @PutRule@ operation and assign tags, you must have both the @events:PutRule@ and @events:TagResource@ permissions.
-- If you are updating an existing rule, any tags you specify in the @PutRule@ operation are ignored. To update the tags of an existing rule, use 'TagResource' and 'UntagResource' .
-- Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
-- In EventBridge, it is possible to create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If the rule is not written carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop.
-- To prevent this, write the rules so that the triggered actions do not re-fire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change. 
-- An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html Managing Your Costs with Budgets> .
module Network.AWS.CloudWatchEvents.PutRule
    (
    -- * Creating a request
      PutRule (..)
    , mkPutRule
    -- ** Request lenses
    , prName
    , prDescription
    , prEventBusName
    , prEventPattern
    , prRoleArn
    , prScheduleExpression
    , prState
    , prTags

    -- * Destructuring the response
    , PutRuleResponse (..)
    , mkPutRuleResponse
    -- ** Response lenses
    , prrrsRuleArn
    , prrrsResponseStatus
    ) where

import qualified Network.AWS.CloudWatchEvents.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkPutRule' smart constructor.
data PutRule = PutRule'
  { name :: Types.RuleName
    -- ^ The name of the rule that you are creating or updating.
  , description :: Core.Maybe Types.RuleDescription
    -- ^ A description of the rule.
  , eventBusName :: Core.Maybe Types.EventBusNameOrArn
    -- ^ The name or ARN of the event bus to associate with this rule. If you omit this, the default event bus is used.
  , eventPattern :: Core.Maybe Types.EventPattern
    -- ^ The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
  , roleArn :: Core.Maybe Types.RoleArn
    -- ^ The Amazon Resource Name (ARN) of the IAM role associated with the rule.
  , scheduleExpression :: Core.Maybe Types.ScheduleExpression
    -- ^ The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".
  , state :: Core.Maybe Types.RuleState
    -- ^ Indicates whether the rule is enabled or disabled.
  , tags :: Core.Maybe [Types.Tag]
    -- ^ The list of key-value pairs to associate with the rule.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutRule' value with any optional fields omitted.
mkPutRule
    :: Types.RuleName -- ^ 'name'
    -> PutRule
mkPutRule name
  = PutRule'{name, description = Core.Nothing,
             eventBusName = Core.Nothing, eventPattern = Core.Nothing,
             roleArn = Core.Nothing, scheduleExpression = Core.Nothing,
             state = Core.Nothing, tags = Core.Nothing}

-- | The name of the rule that you are creating or updating.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prName :: Lens.Lens' PutRule Types.RuleName
prName = Lens.field @"name"
{-# INLINEABLE prName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | A description of the rule.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prDescription :: Lens.Lens' PutRule (Core.Maybe Types.RuleDescription)
prDescription = Lens.field @"description"
{-# INLINEABLE prDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The name or ARN of the event bus to associate with this rule. If you omit this, the default event bus is used.
--
-- /Note:/ Consider using 'eventBusName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prEventBusName :: Lens.Lens' PutRule (Core.Maybe Types.EventBusNameOrArn)
prEventBusName = Lens.field @"eventBusName"
{-# INLINEABLE prEventBusName #-}
{-# DEPRECATED eventBusName "Use generic-lens or generic-optics with 'eventBusName' instead"  #-}

-- | The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- /Note:/ Consider using 'eventPattern' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prEventPattern :: Lens.Lens' PutRule (Core.Maybe Types.EventPattern)
prEventPattern = Lens.field @"eventPattern"
{-# INLINEABLE prEventPattern #-}
{-# DEPRECATED eventPattern "Use generic-lens or generic-optics with 'eventPattern' instead"  #-}

-- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prRoleArn :: Lens.Lens' PutRule (Core.Maybe Types.RoleArn)
prRoleArn = Lens.field @"roleArn"
{-# INLINEABLE prRoleArn #-}
{-# DEPRECATED roleArn "Use generic-lens or generic-optics with 'roleArn' instead"  #-}

-- | The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".
--
-- /Note:/ Consider using 'scheduleExpression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prScheduleExpression :: Lens.Lens' PutRule (Core.Maybe Types.ScheduleExpression)
prScheduleExpression = Lens.field @"scheduleExpression"
{-# INLINEABLE prScheduleExpression #-}
{-# DEPRECATED scheduleExpression "Use generic-lens or generic-optics with 'scheduleExpression' instead"  #-}

-- | Indicates whether the rule is enabled or disabled.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prState :: Lens.Lens' PutRule (Core.Maybe Types.RuleState)
prState = Lens.field @"state"
{-# INLINEABLE prState #-}
{-# DEPRECATED state "Use generic-lens or generic-optics with 'state' instead"  #-}

-- | The list of key-value pairs to associate with the rule.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prTags :: Lens.Lens' PutRule (Core.Maybe [Types.Tag])
prTags = Lens.field @"tags"
{-# INLINEABLE prTags #-}
{-# DEPRECATED tags "Use generic-lens or generic-optics with 'tags' instead"  #-}

instance Core.ToQuery PutRule where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders PutRule where
        toHeaders PutRule{..}
          = Core.pure ("X-Amz-Target", "AWSEvents.PutRule") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON PutRule where
        toJSON PutRule{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Name" Core..= name),
                  ("Description" Core..=) Core.<$> description,
                  ("EventBusName" Core..=) Core.<$> eventBusName,
                  ("EventPattern" Core..=) Core.<$> eventPattern,
                  ("RoleArn" Core..=) Core.<$> roleArn,
                  ("ScheduleExpression" Core..=) Core.<$> scheduleExpression,
                  ("State" Core..=) Core.<$> state, ("Tags" Core..=) Core.<$> tags])

instance Core.AWSRequest PutRule where
        type Rs PutRule = PutRuleResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 PutRuleResponse' Core.<$>
                   (x Core..:? "RuleArn") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkPutRuleResponse' smart constructor.
data PutRuleResponse = PutRuleResponse'
  { ruleArn :: Core.Maybe Types.RuleArn
    -- ^ The Amazon Resource Name (ARN) of the rule.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'PutRuleResponse' value with any optional fields omitted.
mkPutRuleResponse
    :: Core.Int -- ^ 'responseStatus'
    -> PutRuleResponse
mkPutRuleResponse responseStatus
  = PutRuleResponse'{ruleArn = Core.Nothing, responseStatus}

-- | The Amazon Resource Name (ARN) of the rule.
--
-- /Note:/ Consider using 'ruleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrrsRuleArn :: Lens.Lens' PutRuleResponse (Core.Maybe Types.RuleArn)
prrrsRuleArn = Lens.field @"ruleArn"
{-# INLINEABLE prrrsRuleArn #-}
{-# DEPRECATED ruleArn "Use generic-lens or generic-optics with 'ruleArn' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrrsResponseStatus :: Lens.Lens' PutRuleResponse Core.Int
prrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE prrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
