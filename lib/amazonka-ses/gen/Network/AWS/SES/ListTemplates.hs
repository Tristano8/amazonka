{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.ListTemplates
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the email templates present in your Amazon SES account in the current AWS Region.
--
-- You can execute this operation no more than once per second.
--
-- This operation returns paginated results.
module Network.AWS.SES.ListTemplates
    (
    -- * Creating a request
      ListTemplates (..)
    , mkListTemplates
    -- ** Request lenses
    , ltMaxItems
    , ltNextToken

    -- * Destructuring the response
    , ListTemplatesResponse (..)
    , mkListTemplatesResponse
    -- ** Response lenses
    , ltrrsNextToken
    , ltrrsTemplatesMetadata
    , ltrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | /See:/ 'mkListTemplates' smart constructor.
data ListTemplates = ListTemplates'
  { maxItems :: Core.Maybe Core.Int
    -- ^ The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ A token returned from a previous call to @ListTemplates@ to indicate the position in the list of email templates.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListTemplates' value with any optional fields omitted.
mkListTemplates
    :: ListTemplates
mkListTemplates
  = ListTemplates'{maxItems = Core.Nothing, nextToken = Core.Nothing}

-- | The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltMaxItems :: Lens.Lens' ListTemplates (Core.Maybe Core.Int)
ltMaxItems = Lens.field @"maxItems"
{-# INLINEABLE ltMaxItems #-}
{-# DEPRECATED maxItems "Use generic-lens or generic-optics with 'maxItems' instead"  #-}

-- | A token returned from a previous call to @ListTemplates@ to indicate the position in the list of email templates.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltNextToken :: Lens.Lens' ListTemplates (Core.Maybe Types.NextToken)
ltNextToken = Lens.field @"nextToken"
{-# INLINEABLE ltNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListTemplates where
        toQuery ListTemplates{..}
          = Core.toQueryPair "Action" ("ListTemplates" :: Core.Text) Core.<>
              Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxItems") maxItems
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders ListTemplates where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListTemplates where
        type Rs ListTemplates = ListTemplatesResponse
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
          = Response.receiveXMLWrapper "ListTemplatesResult"
              (\ s h x ->
                 ListTemplatesResponse' Core.<$>
                   (x Core..@? "NextToken") Core.<*>
                     x Core..@? "TemplatesMetadata" Core..<@> Core.parseXMLList "member"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListTemplates where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"templatesMetadata" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListTemplatesResponse' smart constructor.
data ListTemplatesResponse = ListTemplatesResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent call to @ListTemplates@ to retrieve the next 50 email templates.
  , templatesMetadata :: Core.Maybe [Types.TemplateMetadata]
    -- ^ An array the contains the name and creation time stamp for each template in your Amazon SES account.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListTemplatesResponse' value with any optional fields omitted.
mkListTemplatesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListTemplatesResponse
mkListTemplatesResponse responseStatus
  = ListTemplatesResponse'{nextToken = Core.Nothing,
                           templatesMetadata = Core.Nothing, responseStatus}

-- | A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent call to @ListTemplates@ to retrieve the next 50 email templates.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltrrsNextToken :: Lens.Lens' ListTemplatesResponse (Core.Maybe Types.NextToken)
ltrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE ltrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | An array the contains the name and creation time stamp for each template in your Amazon SES account.
--
-- /Note:/ Consider using 'templatesMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltrrsTemplatesMetadata :: Lens.Lens' ListTemplatesResponse (Core.Maybe [Types.TemplateMetadata])
ltrrsTemplatesMetadata = Lens.field @"templatesMetadata"
{-# INLINEABLE ltrrsTemplatesMetadata #-}
{-# DEPRECATED templatesMetadata "Use generic-lens or generic-optics with 'templatesMetadata' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ltrrsResponseStatus :: Lens.Lens' ListTemplatesResponse Core.Int
ltrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ltrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
