{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.UpdateWebhook
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the webhook associated with an AWS CodeBuild build project. 
module Network.AWS.CodeBuild.UpdateWebhook
    (
    -- * Creating a request
      UpdateWebhook (..)
    , mkUpdateWebhook
    -- ** Request lenses
    , uwProjectName
    , uwBranchFilter
    , uwBuildType
    , uwFilterGroups
    , uwRotateSecret

    -- * Destructuring the response
    , UpdateWebhookResponse (..)
    , mkUpdateWebhookResponse
    -- ** Response lenses
    , uwrrsWebhook
    , uwrrsResponseStatus
    ) where

import qualified Network.AWS.CodeBuild.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateWebhook' smart constructor.
data UpdateWebhook = UpdateWebhook'
  { projectName :: Types.ProjectName
    -- ^ The name of the AWS CodeBuild project.
  , branchFilter :: Core.Maybe Core.Text
    -- ^ A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
  , buildType :: Core.Maybe Types.WebhookBuildType
    -- ^ Specifies the type of build this webhook will trigger.
  , filterGroups :: Core.Maybe [[Types.WebhookFilter]]
    -- ^ An array of arrays of @WebhookFilter@ objects used to determine if a webhook event can trigger a build. A filter group must contain at least one @EVENT@ @WebhookFilter@ . 
  , rotateSecret :: Core.Maybe Core.Bool
    -- ^ A boolean value that specifies whether the associated GitHub repository's secret token should be updated. If you use Bitbucket for your repository, @rotateSecret@ is ignored. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateWebhook' value with any optional fields omitted.
mkUpdateWebhook
    :: Types.ProjectName -- ^ 'projectName'
    -> UpdateWebhook
mkUpdateWebhook projectName
  = UpdateWebhook'{projectName, branchFilter = Core.Nothing,
                   buildType = Core.Nothing, filterGroups = Core.Nothing,
                   rotateSecret = Core.Nothing}

-- | The name of the AWS CodeBuild project.
--
-- /Note:/ Consider using 'projectName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwProjectName :: Lens.Lens' UpdateWebhook Types.ProjectName
uwProjectName = Lens.field @"projectName"
{-# INLINEABLE uwProjectName #-}
{-# DEPRECATED projectName "Use generic-lens or generic-optics with 'projectName' instead"  #-}

-- | A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If @branchFilter@ is empty, then all branches are built.
--
-- /Note:/ Consider using 'branchFilter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwBranchFilter :: Lens.Lens' UpdateWebhook (Core.Maybe Core.Text)
uwBranchFilter = Lens.field @"branchFilter"
{-# INLINEABLE uwBranchFilter #-}
{-# DEPRECATED branchFilter "Use generic-lens or generic-optics with 'branchFilter' instead"  #-}

-- | Specifies the type of build this webhook will trigger.
--
-- /Note:/ Consider using 'buildType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwBuildType :: Lens.Lens' UpdateWebhook (Core.Maybe Types.WebhookBuildType)
uwBuildType = Lens.field @"buildType"
{-# INLINEABLE uwBuildType #-}
{-# DEPRECATED buildType "Use generic-lens or generic-optics with 'buildType' instead"  #-}

-- | An array of arrays of @WebhookFilter@ objects used to determine if a webhook event can trigger a build. A filter group must contain at least one @EVENT@ @WebhookFilter@ . 
--
-- /Note:/ Consider using 'filterGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwFilterGroups :: Lens.Lens' UpdateWebhook (Core.Maybe [[Types.WebhookFilter]])
uwFilterGroups = Lens.field @"filterGroups"
{-# INLINEABLE uwFilterGroups #-}
{-# DEPRECATED filterGroups "Use generic-lens or generic-optics with 'filterGroups' instead"  #-}

-- | A boolean value that specifies whether the associated GitHub repository's secret token should be updated. If you use Bitbucket for your repository, @rotateSecret@ is ignored. 
--
-- /Note:/ Consider using 'rotateSecret' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwRotateSecret :: Lens.Lens' UpdateWebhook (Core.Maybe Core.Bool)
uwRotateSecret = Lens.field @"rotateSecret"
{-# INLINEABLE uwRotateSecret #-}
{-# DEPRECATED rotateSecret "Use generic-lens or generic-optics with 'rotateSecret' instead"  #-}

instance Core.ToQuery UpdateWebhook where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateWebhook where
        toHeaders UpdateWebhook{..}
          = Core.pure ("X-Amz-Target", "CodeBuild_20161006.UpdateWebhook")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateWebhook where
        toJSON UpdateWebhook{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("projectName" Core..= projectName),
                  ("branchFilter" Core..=) Core.<$> branchFilter,
                  ("buildType" Core..=) Core.<$> buildType,
                  ("filterGroups" Core..=) Core.<$> filterGroups,
                  ("rotateSecret" Core..=) Core.<$> rotateSecret])

instance Core.AWSRequest UpdateWebhook where
        type Rs UpdateWebhook = UpdateWebhookResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateWebhookResponse' Core.<$>
                   (x Core..:? "webhook") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateWebhookResponse' smart constructor.
data UpdateWebhookResponse = UpdateWebhookResponse'
  { webhook :: Core.Maybe Types.Webhook
    -- ^ Information about a repository's webhook that is associated with a project in AWS CodeBuild. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'UpdateWebhookResponse' value with any optional fields omitted.
mkUpdateWebhookResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateWebhookResponse
mkUpdateWebhookResponse responseStatus
  = UpdateWebhookResponse'{webhook = Core.Nothing, responseStatus}

-- | Information about a repository's webhook that is associated with a project in AWS CodeBuild. 
--
-- /Note:/ Consider using 'webhook' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwrrsWebhook :: Lens.Lens' UpdateWebhookResponse (Core.Maybe Types.Webhook)
uwrrsWebhook = Lens.field @"webhook"
{-# INLINEABLE uwrrsWebhook #-}
{-# DEPRECATED webhook "Use generic-lens or generic-optics with 'webhook' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uwrrsResponseStatus :: Lens.Lens' UpdateWebhookResponse Core.Int
uwrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uwrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
