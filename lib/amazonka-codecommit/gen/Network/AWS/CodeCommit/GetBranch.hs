{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.GetBranch
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a repository branch, including its name and the last commit ID.
module Network.AWS.CodeCommit.GetBranch
    (
    -- * Creating a request
      GetBranch (..)
    , mkGetBranch
    -- ** Request lenses
    , gbBranchName
    , gbRepositoryName

    -- * Destructuring the response
    , GetBranchResponse (..)
    , mkGetBranchResponse
    -- ** Response lenses
    , gbrrsBranch
    , gbrrsResponseStatus
    ) where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a get branch operation.
--
-- /See:/ 'mkGetBranch' smart constructor.
data GetBranch = GetBranch'
  { branchName :: Core.Maybe Types.BranchName
    -- ^ The name of the branch for which you want to retrieve information.
  , repositoryName :: Core.Maybe Types.RepositoryName
    -- ^ The name of the repository that contains the branch for which you want to retrieve information.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetBranch' value with any optional fields omitted.
mkGetBranch
    :: GetBranch
mkGetBranch
  = GetBranch'{branchName = Core.Nothing,
               repositoryName = Core.Nothing}

-- | The name of the branch for which you want to retrieve information.
--
-- /Note:/ Consider using 'branchName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbBranchName :: Lens.Lens' GetBranch (Core.Maybe Types.BranchName)
gbBranchName = Lens.field @"branchName"
{-# INLINEABLE gbBranchName #-}
{-# DEPRECATED branchName "Use generic-lens or generic-optics with 'branchName' instead"  #-}

-- | The name of the repository that contains the branch for which you want to retrieve information.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbRepositoryName :: Lens.Lens' GetBranch (Core.Maybe Types.RepositoryName)
gbRepositoryName = Lens.field @"repositoryName"
{-# INLINEABLE gbRepositoryName #-}
{-# DEPRECATED repositoryName "Use generic-lens or generic-optics with 'repositoryName' instead"  #-}

instance Core.ToQuery GetBranch where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetBranch where
        toHeaders GetBranch{..}
          = Core.pure ("X-Amz-Target", "CodeCommit_20150413.GetBranch")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetBranch where
        toJSON GetBranch{..}
          = Core.object
              (Core.catMaybes
                 [("branchName" Core..=) Core.<$> branchName,
                  ("repositoryName" Core..=) Core.<$> repositoryName])

instance Core.AWSRequest GetBranch where
        type Rs GetBranch = GetBranchResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetBranchResponse' Core.<$>
                   (x Core..:? "branch") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the output of a get branch operation.
--
-- /See:/ 'mkGetBranchResponse' smart constructor.
data GetBranchResponse = GetBranchResponse'
  { branch :: Core.Maybe Types.BranchInfo
    -- ^ The name of the branch.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetBranchResponse' value with any optional fields omitted.
mkGetBranchResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetBranchResponse
mkGetBranchResponse responseStatus
  = GetBranchResponse'{branch = Core.Nothing, responseStatus}

-- | The name of the branch.
--
-- /Note:/ Consider using 'branch' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbrrsBranch :: Lens.Lens' GetBranchResponse (Core.Maybe Types.BranchInfo)
gbrrsBranch = Lens.field @"branch"
{-# INLINEABLE gbrrsBranch #-}
{-# DEPRECATED branch "Use generic-lens or generic-optics with 'branch' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gbrrsResponseStatus :: Lens.Lens' GetBranchResponse Core.Int
gbrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gbrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
