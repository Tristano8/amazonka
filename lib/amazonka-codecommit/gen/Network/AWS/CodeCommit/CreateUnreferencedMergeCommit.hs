{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.CreateUnreferencedMergeCommit
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy. This can help you determine the outcome of a potential merge. This API cannot be used with the fast-forward merge strategy because that strategy does not create a merge commit.
module Network.AWS.CodeCommit.CreateUnreferencedMergeCommit
    (
    -- * Creating a request
      CreateUnreferencedMergeCommit (..)
    , mkCreateUnreferencedMergeCommit
    -- ** Request lenses
    , cumcRepositoryName
    , cumcSourceCommitSpecifier
    , cumcDestinationCommitSpecifier
    , cumcMergeOption
    , cumcAuthorName
    , cumcCommitMessage
    , cumcConflictDetailLevel
    , cumcConflictResolution
    , cumcConflictResolutionStrategy
    , cumcEmail
    , cumcKeepEmptyFolders

    -- * Destructuring the response
    , CreateUnreferencedMergeCommitResponse (..)
    , mkCreateUnreferencedMergeCommitResponse
    -- ** Response lenses
    , cumcrrsCommitId
    , cumcrrsTreeId
    , cumcrrsResponseStatus
    ) where

import qualified Network.AWS.CodeCommit.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateUnreferencedMergeCommit' smart constructor.
data CreateUnreferencedMergeCommit = CreateUnreferencedMergeCommit'
  { repositoryName :: Types.RepositoryName
    -- ^ The name of the repository where you want to create the unreferenced merge commit.
  , sourceCommitSpecifier :: Types.SourceCommitSpecifier
    -- ^ The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
  , destinationCommitSpecifier :: Types.DestinationCommitSpecifier
    -- ^ The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
  , mergeOption :: Types.MergeOptionTypeEnum
    -- ^ The merge option or strategy you want to use to merge the code.
  , authorName :: Core.Maybe Types.AuthorName
    -- ^ The name of the author who created the unreferenced commit. This information is used as both the author and committer for the commit.
  , commitMessage :: Core.Maybe Types.CommitMessage
    -- ^ The commit message for the unreferenced commit.
  , conflictDetailLevel :: Core.Maybe Types.ConflictDetailLevelTypeEnum
    -- ^ The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
  , conflictResolution :: Core.Maybe Types.ConflictResolution
    -- ^ If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
  , conflictResolutionStrategy :: Core.Maybe Types.ConflictResolutionStrategyTypeEnum
    -- ^ Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
  , email :: Core.Maybe Types.Email
    -- ^ The email address for the person who created the unreferenced commit.
  , keepEmptyFolders :: Core.Maybe Core.Bool
    -- ^ If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUnreferencedMergeCommit' value with any optional fields omitted.
mkCreateUnreferencedMergeCommit
    :: Types.RepositoryName -- ^ 'repositoryName'
    -> Types.SourceCommitSpecifier -- ^ 'sourceCommitSpecifier'
    -> Types.DestinationCommitSpecifier -- ^ 'destinationCommitSpecifier'
    -> Types.MergeOptionTypeEnum -- ^ 'mergeOption'
    -> CreateUnreferencedMergeCommit
mkCreateUnreferencedMergeCommit repositoryName
  sourceCommitSpecifier destinationCommitSpecifier mergeOption
  = CreateUnreferencedMergeCommit'{repositoryName,
                                   sourceCommitSpecifier, destinationCommitSpecifier, mergeOption,
                                   authorName = Core.Nothing, commitMessage = Core.Nothing,
                                   conflictDetailLevel = Core.Nothing,
                                   conflictResolution = Core.Nothing,
                                   conflictResolutionStrategy = Core.Nothing, email = Core.Nothing,
                                   keepEmptyFolders = Core.Nothing}

-- | The name of the repository where you want to create the unreferenced merge commit.
--
-- /Note:/ Consider using 'repositoryName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcRepositoryName :: Lens.Lens' CreateUnreferencedMergeCommit Types.RepositoryName
cumcRepositoryName = Lens.field @"repositoryName"
{-# INLINEABLE cumcRepositoryName #-}
{-# DEPRECATED repositoryName "Use generic-lens or generic-optics with 'repositoryName' instead"  #-}

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- /Note:/ Consider using 'sourceCommitSpecifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcSourceCommitSpecifier :: Lens.Lens' CreateUnreferencedMergeCommit Types.SourceCommitSpecifier
cumcSourceCommitSpecifier = Lens.field @"sourceCommitSpecifier"
{-# INLINEABLE cumcSourceCommitSpecifier #-}
{-# DEPRECATED sourceCommitSpecifier "Use generic-lens or generic-optics with 'sourceCommitSpecifier' instead"  #-}

-- | The branch, tag, HEAD, or other fully qualified reference used to identify a commit (for example, a branch name or a full commit ID).
--
-- /Note:/ Consider using 'destinationCommitSpecifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcDestinationCommitSpecifier :: Lens.Lens' CreateUnreferencedMergeCommit Types.DestinationCommitSpecifier
cumcDestinationCommitSpecifier = Lens.field @"destinationCommitSpecifier"
{-# INLINEABLE cumcDestinationCommitSpecifier #-}
{-# DEPRECATED destinationCommitSpecifier "Use generic-lens or generic-optics with 'destinationCommitSpecifier' instead"  #-}

-- | The merge option or strategy you want to use to merge the code.
--
-- /Note:/ Consider using 'mergeOption' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcMergeOption :: Lens.Lens' CreateUnreferencedMergeCommit Types.MergeOptionTypeEnum
cumcMergeOption = Lens.field @"mergeOption"
{-# INLINEABLE cumcMergeOption #-}
{-# DEPRECATED mergeOption "Use generic-lens or generic-optics with 'mergeOption' instead"  #-}

-- | The name of the author who created the unreferenced commit. This information is used as both the author and committer for the commit.
--
-- /Note:/ Consider using 'authorName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcAuthorName :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.AuthorName)
cumcAuthorName = Lens.field @"authorName"
{-# INLINEABLE cumcAuthorName #-}
{-# DEPRECATED authorName "Use generic-lens or generic-optics with 'authorName' instead"  #-}

-- | The commit message for the unreferenced commit.
--
-- /Note:/ Consider using 'commitMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcCommitMessage :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.CommitMessage)
cumcCommitMessage = Lens.field @"commitMessage"
{-# INLINEABLE cumcCommitMessage #-}
{-# DEPRECATED commitMessage "Use generic-lens or generic-optics with 'commitMessage' instead"  #-}

-- | The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used, which returns a not-mergeable result if the same file has differences in both branches. If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in both branches has differences on the same line.
--
-- /Note:/ Consider using 'conflictDetailLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcConflictDetailLevel :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.ConflictDetailLevelTypeEnum)
cumcConflictDetailLevel = Lens.field @"conflictDetailLevel"
{-# INLINEABLE cumcConflictDetailLevel #-}
{-# DEPRECATED conflictDetailLevel "Use generic-lens or generic-optics with 'conflictDetailLevel' instead"  #-}

-- | If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when resolving conflicts during a merge.
--
-- /Note:/ Consider using 'conflictResolution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcConflictResolution :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.ConflictResolution)
cumcConflictResolution = Lens.field @"conflictResolution"
{-# INLINEABLE cumcConflictResolution #-}
{-# DEPRECATED conflictResolution "Use generic-lens or generic-optics with 'conflictResolution' instead"  #-}

-- | Specifies which branch to use when resolving conflicts, or whether to attempt automatically merging two versions of a file. The default is NONE, which requires any conflicts to be resolved manually before the merge operation is successful.
--
-- /Note:/ Consider using 'conflictResolutionStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcConflictResolutionStrategy :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.ConflictResolutionStrategyTypeEnum)
cumcConflictResolutionStrategy = Lens.field @"conflictResolutionStrategy"
{-# INLINEABLE cumcConflictResolutionStrategy #-}
{-# DEPRECATED conflictResolutionStrategy "Use generic-lens or generic-optics with 'conflictResolutionStrategy' instead"  #-}

-- | The email address for the person who created the unreferenced commit.
--
-- /Note:/ Consider using 'email' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcEmail :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Types.Email)
cumcEmail = Lens.field @"email"
{-# INLINEABLE cumcEmail #-}
{-# DEPRECATED email "Use generic-lens or generic-optics with 'email' instead"  #-}

-- | If the commit contains deletions, whether to keep a folder or folder structure if the changes leave the folders empty. If this is specified as true, a .gitkeep file is created for empty folders. The default is false.
--
-- /Note:/ Consider using 'keepEmptyFolders' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcKeepEmptyFolders :: Lens.Lens' CreateUnreferencedMergeCommit (Core.Maybe Core.Bool)
cumcKeepEmptyFolders = Lens.field @"keepEmptyFolders"
{-# INLINEABLE cumcKeepEmptyFolders #-}
{-# DEPRECATED keepEmptyFolders "Use generic-lens or generic-optics with 'keepEmptyFolders' instead"  #-}

instance Core.ToQuery CreateUnreferencedMergeCommit where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateUnreferencedMergeCommit where
        toHeaders CreateUnreferencedMergeCommit{..}
          = Core.pure
              ("X-Amz-Target",
               "CodeCommit_20150413.CreateUnreferencedMergeCommit")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON CreateUnreferencedMergeCommit where
        toJSON CreateUnreferencedMergeCommit{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("repositoryName" Core..= repositoryName),
                  Core.Just ("sourceCommitSpecifier" Core..= sourceCommitSpecifier),
                  Core.Just
                    ("destinationCommitSpecifier" Core..= destinationCommitSpecifier),
                  Core.Just ("mergeOption" Core..= mergeOption),
                  ("authorName" Core..=) Core.<$> authorName,
                  ("commitMessage" Core..=) Core.<$> commitMessage,
                  ("conflictDetailLevel" Core..=) Core.<$> conflictDetailLevel,
                  ("conflictResolution" Core..=) Core.<$> conflictResolution,
                  ("conflictResolutionStrategy" Core..=) Core.<$>
                    conflictResolutionStrategy,
                  ("email" Core..=) Core.<$> email,
                  ("keepEmptyFolders" Core..=) Core.<$> keepEmptyFolders])

instance Core.AWSRequest CreateUnreferencedMergeCommit where
        type Rs CreateUnreferencedMergeCommit =
             CreateUnreferencedMergeCommitResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 CreateUnreferencedMergeCommitResponse' Core.<$>
                   (x Core..:? "commitId") Core.<*> x Core..:? "treeId" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateUnreferencedMergeCommitResponse' smart constructor.
data CreateUnreferencedMergeCommitResponse = CreateUnreferencedMergeCommitResponse'
  { commitId :: Core.Maybe Types.ObjectId
    -- ^ The full commit ID of the commit that contains your merge results.
  , treeId :: Core.Maybe Types.ObjectId
    -- ^ The full SHA-1 pointer of the tree information for the commit that contains the merge results.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateUnreferencedMergeCommitResponse' value with any optional fields omitted.
mkCreateUnreferencedMergeCommitResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateUnreferencedMergeCommitResponse
mkCreateUnreferencedMergeCommitResponse responseStatus
  = CreateUnreferencedMergeCommitResponse'{commitId = Core.Nothing,
                                           treeId = Core.Nothing, responseStatus}

-- | The full commit ID of the commit that contains your merge results.
--
-- /Note:/ Consider using 'commitId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcrrsCommitId :: Lens.Lens' CreateUnreferencedMergeCommitResponse (Core.Maybe Types.ObjectId)
cumcrrsCommitId = Lens.field @"commitId"
{-# INLINEABLE cumcrrsCommitId #-}
{-# DEPRECATED commitId "Use generic-lens or generic-optics with 'commitId' instead"  #-}

-- | The full SHA-1 pointer of the tree information for the commit that contains the merge results.
--
-- /Note:/ Consider using 'treeId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcrrsTreeId :: Lens.Lens' CreateUnreferencedMergeCommitResponse (Core.Maybe Types.ObjectId)
cumcrrsTreeId = Lens.field @"treeId"
{-# INLINEABLE cumcrrsTreeId #-}
{-# DEPRECATED treeId "Use generic-lens or generic-optics with 'treeId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cumcrrsResponseStatus :: Lens.Lens' CreateUnreferencedMergeCommitResponse Core.Int
cumcrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cumcrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
